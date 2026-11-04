# JSP & Servlet Form Processing Project

A complete, ready-to-run Java JSP and Servlet environment where users enter data into an interactive form and the servlet processes and prints the data directly to the server console.

---

## 📁 Project Structure

```
jsp&servlet/
├── pom.xml                                # Maven build & dependency configuration
├── README.md                              # Setup and run instructions
└── src/
    └── main/
        ├── java/
        │   └── com/
        │       └── example/
        │           ├── FormServlet.java   # Servlet handling form POST & logging to console
        │           └── Main.java          # Embedded Tomcat runner (no server install required)
        └── webapp/
            ├── WEB-INF/
            │   └── web.xml                # Web application deployment descriptor
            ├── index.jsp                  # Form page for user data input
            └── success.jsp                # Confirmation page showing received attributes
```

---

## 🚀 How to Run the Project

You can run this project in any of the following ways:

### Option 1: Using Maven Command Line (Recommended & Fastest)

1. Open your terminal / PowerShell in this directory (`f:\Antigravity folder\jsp&servlet`).
2. Run the following command:
   ```bash
   mvn compile exec:java
   ```
3. Once the server starts, open your browser and navigate to:
   ```
   http://localhost:8080/
   ```

---

### Option 2: Running directly in VS Code / IntelliJ / Eclipse

1. Open this project folder in your IDE.
2. Locate [`src/main/java/com/example/Main.java`](src/main/java/com/example/Main.java).
3. Right-click and choose **Run Java** (or click the **Play / Run** button).
4. The embedded Tomcat server starts automatically on port `8080`.
5. Open `http://localhost:8080/` in your browser.

---

### Option 3: Deploying WAR to an External Apache Tomcat Server

1. Build the WAR package:
   ```bash
   mvn clean package
   ```
2. Locate the generated `.war` file in `target/jsp-servlet-demo.war`.
3. Copy it into your Tomcat `webapps/` directory.
4. Start Tomcat and visit:
   ```
   http://localhost:8080/jsp-servlet-demo/
   ```

---

## 🧪 Testing the Form & Checking the Console Output

1. Open [http://localhost:8080/](http://localhost:8080/) in your web browser.
2. Fill out the fields:
   - **Full Name**: e.g., `Jane Doe`
   - **Email**: e.g., `jane@example.com`
   - **Phone**: e.g., `+1 555 123 4567`
   - **Gender**: Select Male, Female, or Other
   - **Interested Course**: Select from dropdown
   - **Message**: Any note or message
3. Click **Submit to Servlet**.
4. Check your terminal / IDE console window. You will see formatted output like this:

```text
==================================================
>>> [SERVLET CONSOLE] Form Submission Received <<<
Timestamp : 2026-10-29 13:57:00
Full Name : Jane Doe
Email     : jane@example.com
Phone     : +1 555 123 4567
Gender    : Female
Course    : JSP & Servlet Deep Dive
Message   : Excited to learn servlets!
Client IP : 127.0.0.1
==================================================
```

---

## 🛠️ Components Explained

- **`index.jsp`**: Provides a clean UI with CSS styling, sending an HTTP `POST` request to `/submitForm`.
- **`FormServlet.java`**: 
  - Annotated with `@WebServlet("/submitForm")`.
  - Reads parameters with `request.getParameter(...)`.
  - Outputs data cleanly to the server console via `System.out.println(...)`.
  - Sets request attributes and forwards to `success.jsp`.
- **`success.jsp`**: Renders confirmation and confirms that data was logged to the console.
- **`Main.java`**: Embedded Apache Tomcat runner configured with Jasper JSP support.
