# Java Maven CI/CD with Azure Pipelines

This repository demonstrates a **simple Java Maven project** integrated with **Azure DevOps Pipelines**.

---

##  Project Structure
```
java-maven-pipeline/
 ├── src/
 │   ├── main/java/com/example/App.java   # Main application file
 │   └── test/java/com/example/AppTest.java  # Unit test file
 ├── pom.xml                # Maven project configuration
 ├── azure-pipelines.yml     # CI/CD pipeline definition
 └── README.md               # Project documentation
```

---

## CI/CD Pipelines Implemented
This project demonstrates **three types of pipelines**:

1. **CI Pipeline (Continuous Integration)**
   - Triggered on `master` branch commits.
   - Compiles Java code and builds `.jar` file using Maven.

2. **PR Pipeline (Pull Request Validation)**
   - Runs automatically on **pull requests** to `master`.
   - Ensures that code changes build successfully before merging.

3. **Branch Pipeline**
   - Runs on `feature/*` branches.
   - Validates feature branch builds and runs tests.

---

##  Build Process
- Uses **Maven** to build and package Java application.
- Generates `.jar` file:  
  ```
  target/hello-app-1.0.0-SNAPSHOT.jar
  ```

---

##  Pipeline Artifacts
- The generated `.jar` file is published as an **artifact**.
- Can be used in release pipelines for deployment.

---

##  Running the App Locally
Compile and run:
```bash
mvn clean package
java -cp target/hello-app-1.0.0-SNAPSHOT.jar com.example.App
```

Expected output:
```
Hello, World!
```

---

##  Running Tests
```bash
mvn test
```

---

##  Key Learnings
- How to integrate **Java Maven** projects with **Azure DevOps Pipelines**.
- Setting up **CI**, **PR validation**, and **Branch-specific** pipelines.
- Publishing build artifacts for deployment.
