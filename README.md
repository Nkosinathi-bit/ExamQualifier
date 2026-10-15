# Student Exam Qualification Calculator

[![Checks](https://github.com/Nkosinathi-bit/ExamQualifier/actions/workflows/ci.yml/badge.svg)](https://github.com/Nkosinathi-bit/ExamQualifier/actions/workflows/ci.yml)

**Coursework · Cloud Native Programming · C# / .NET 10**

A C# console application that calculates a student's weighted assessment average and determines whether they qualify to write an examination.

Built for Cloud Native Programming coursework at Belgium Campus.

## Features

- Capture a student's name and four assessment marks.
- Reject empty or numeric-only names, non-numeric marks and marks outside 0–100.
- Calculate a weighted average and display the qualification result.
- Capture several students and view their results during the current session.
- Run locally with .NET 10 or build a Docker container.

## Assessment rules

| Assessment | Weight |
| --- | --- |
| Test 1 | 30% |
| Test 2 | 50% |
| Assignment 1 | 10% |
| Project | 10% |

An average of **50% or higher** qualifies. These are the rules implemented for this coursework scenario.

Marks of 60, 70, 80 and 90 produce a weighted average of **70%**.

## Run with .NET

Install the .NET 10 SDK, then run from the repository root:

```bash
dotnet run --project ExamQualifier.csproj
```

Choose **1** to enter a student, **2** to view captured results or **3** to exit.

## Run with Docker

Install Docker, then run:

```bash
docker build -t exam-qualifier .
docker run --rm -it exam-qualifier
```

The interactive flags allow the application to read keyboard input.

## Files

| File | Purpose |
| --- | --- |
| `Program.cs` | Menu, input validation, calculations and in-memory results |
| `ExamQualifier.csproj` | .NET 10 project configuration |
| `Dockerfile` | Multi-stage build and runtime image |
| `.dockerignore` | Excludes generated and unrelated files from the build |
| `.github/workflows/ci.yml` | Container build and console smoke checks |

## Scope

This is a console coursework project. Results are stored in memory for the current session; there is no database or file persistence.

**Author:** Nkosinathi Mathenjwa
