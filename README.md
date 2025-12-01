# How to compile & run the Java example

This repo contains a small example in `impl/` — `User.java` and `Main.java`. To compile and run locally you need a JDK (javac).

Quick checklist

- Confirm a JDK is installed (not just the JRE):
  - In PowerShell:
    ```powershell
    java -version
    javac -version
    ```
  - If `javac` is missing you must install a JDK (e.g., Eclipse Temurin / Adoptium, OpenJDK, or Oracle JDK) and add its `bin` folder to your PATH.

Install JDK (summary for Windows)

- Download a JDK (Eclipse Temurin is a good choice): https://adoptium.net
- Install, then add the `bin` folder (e.g. `C:\Program Files\Eclipse Adoptium\jdk-xx\bin`) to your PATH, or set JAVA_HOME and update PATH.

Commands to compile and run (PowerShell / Windows)

- From repository root (compiles all Java files inside `impl/`):

  ```powershell
  javac impl\*.java
  ```

Easier single-command options

- Use the included scripts (Windows PowerShell / CMD):
  - PowerShell: `.\build.ps1` then `.\run.ps1` (or run the helper `compile_and_run.ps1`)
  - CMD: `build.bat` then `run.bat`

If you'd like to type `build` and `run` directly without the `./` or file extension in PowerShell, add aliases to your PowerShell profile (one-time):

```powershell
# Edit your profile file (create if missing):
notepad $PROFILE
# Then add these two lines (adjust path if you move the repo):
function build { & "$PWD\build.ps1" $args }
function run { & "$PWD\run.ps1" $args }
# Save the profile, then open a new PowerShell window. You can now type:
# build
# run
```

- Run the example (two equivalent ways):
  1. Change directory into `impl` and run the default-package Main:
     ```powershell
     cd impl
     java Main
     ```
  2. From repo root, run with classpath pointing to `impl`:
     ```powershell
     java -cp impl Main
     ```

Notes

- If you use `package` declarations, the compilation and run commands differ: the folder structure must match packages. The above example uses the default package for simplicity.

# Mini LMS – Implementation Task (Language of Your Choice)

## 1. Goal

Implement a **Mini Learning Management System (LMS)** using **any object-oriented language** you like (C++, Java, Python, C#, etc.).

You'll:

- Write a set of related classes and interfaces.
- Wire them together in a small **demo / `main`** program and run it.

Here is the UML Diagram:

![UML Design](UML_Design.png)

## 3. What to Run (Demo / Main Program)

Write a **demo program** (`main`, `App`, script, etc.) that does at least this:

1.**Create data**

- An `Instructor`
- A `Course` with:
- At least **1 `Module`**
- Each module with at least **2 `Lesson`s**

  2.**Save data**

- Store the course using your `InMemoryCourseRepository`.

  3.**Create a student**

- Make a `Student` object.

  4.**Wire the service**

- Instantiate:

-`InMemoryCourseRepository`

-`InMemoryEnrollmentRepository`

-`EmailNotificationChannel` (and/or `SmsNotificationChannel`)

-`EnrollmentService` using the above.

5.**Enroll and complete lessons**

- Call `EnrollmentService.enroll(student, course)`.
- Call a method (e.g. `completeLesson`) multiple times to simulate the student finishing lessons.

  6.**Print final state**

- Print enrollment status (e.g. `ACTIVE` → `COMPLETED`).
- Print final progress (e.g. `100%`).
- Ensure your notification classes print messages like:

-`Email to <student>: You have been enrolled in <course>`

-`Email to <student>: You have completed the course <course>`

---

## 4. Summary Checklist

You’re done when you have:

- [ ] All classes / interfaces listed above implemented.
- [ ] In-memory repository classes that store and retrieve objects.
- [ ] `EnrollmentService` that:
- [ ] Enrolls students.
- [ ] Updates progress when lessons are completed.
- [ ] Uses notification channels.
- [ ] A `main` / demo that:
- [ ] Creates instructor, student, course, module(s), lesson(s).
- [ ] Enrolls a student.
- [ ] Simulates completing lessons.
- [ ] Prints final status and progress.
- [ ] Shows notifications in console/log.

That’s it—**design in code, then run your demo** 🚀
