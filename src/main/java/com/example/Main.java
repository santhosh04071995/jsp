package com.example;

import java.io.File;
import org.apache.catalina.WebResourceRoot;
import org.apache.catalina.core.StandardContext;
import org.apache.catalina.startup.Tomcat;
import org.apache.catalina.webresources.DirResourceSet;
import org.apache.catalina.webresources.StandardRoot;

public class Main {
    public static void main(String[] args) throws Exception {
        int port = 8081;
        String portParam = System.getenv("PORT");
        if (portParam != null && !portParam.trim().isEmpty()) {
            try {
                port = Integer.parseInt(portParam.trim());
            } catch (NumberFormatException ignored) {}
        }

        Tomcat tomcat = new Tomcat();
        tomcat.setPort(port);
        tomcat.getConnector(); // Initialize connector

        // Base directory for Tomcat temporary files
        File baseDir = new File("target/tomcat-embed");
        if (!baseDir.exists()) {
            baseDir.mkdirs();
        }
        tomcat.setBaseDir(baseDir.getAbsolutePath());

        // Path to webapp folder containing index.jsp and WEB-INF
        String webappDirLocation = "src/main/webapp";
        File webappDir = new File(webappDirLocation);

        StandardContext ctx = (StandardContext) tomcat.addWebapp("", webappDir.getAbsolutePath());
        ctx.setParentClassLoader(Main.class.getClassLoader());

        // Ensure compiled classes are accessible inside WEB-INF/classes
        File additionWebInfClasses = new File("target/classes");
        if (additionWebInfClasses.exists()) {
            WebResourceRoot resources = new StandardRoot(ctx);
            resources.addPreResources(new DirResourceSet(resources, "/WEB-INF/classes",
                    additionWebInfClasses.getAbsolutePath(), "/"));
            ctx.setResources(resources);
        }

        System.out.println("==================================================================");
        System.out.println("🚀 Tomcat server starting at: http://localhost:" + port + "/");
        System.out.println("Open the URL above in your browser to test your form & servlet!");
        System.out.println("Form submissions will be printed to this console in real time.");
        System.out.println("Press Ctrl+C to stop the server.");
        System.out.println("==================================================================");

        tomcat.start();
        tomcat.getServer().await();
    }
}
