<h1 align="center">
  Little Steps
</h1>

<div align="center">
  <img src="https://raw.githubusercontent.com/Learnathon-By-Geeky-Solutions/triangle/feature/auth/assets/images/app_logo.png" alt="Little Steps Logo" width="100"/>
  <h2>Supporting Parents in Tracking and Nurturing Baby's Growth</h2>
</div>

---

## 📑 Table of Contents
- [🧩 Overview](#overview)
- [✨ Key Features](#key-features)
- [🛠️ Problems We Solved](#problems-we-solved)
- [🔍 Challenges with Code Quality Analysis (SonarCloud)](#-challenges-with-code-quality-analysis-sonarcloud)
- [🛠️ Solutions Implemented for SonarCloud Integration](#-solutions-implemented-for-sonarcloud-integration)
- [🎯 Target Users](#target-users)
- [🖼️ UI/UX Showcase](#uiux-showcase)
- [👥 Team Members](#team-members)
- [🧰 Tech Stack](#tech-stack)
- [🏗️ Development Practices](#development-practices)
- [💼 Engineering Highlights](#engineering-highlights)
- [📁 Project Structure](#project-structure)
- [📘 What We Learned](#what-we-learned)
- [⚙️ Getting Started](#getting-started)
- [📚 Resources](#resources)

---

## 🧩 Overview

Little Steps is a mobile app designed to help parents track and support their baby's growth. It offers tools to monitor vaccines, sleep, feeding, and milestones, all in one place. With timely reminders, expert parenting advice, and a supportive community, Little Steps simplifies parenting and ensures babies get the care they need.

---

## ✨ Key Features
- Easy sign-up and setup with user authentication.
- Create profiles for parents and babies for personalized insights.
- Track vaccines, sleep, feeding, and growth milestones in one place.
- Get timely reminders with push notifications.

---

## 🛠️ Problems We Solved
- Unified multiple tracking tools into one parent-friendly app.
- Replaced manual vaccine tracking with automated reminders.
- Delivered expert parenting advice and milestone guidelines.
- Encouraged a connected, digital parenting experience.

---

## 🔍 Challenges with Code Quality Analysis (SonarCloud)

While integrating SonarCloud for static code analysis and test coverage, we encountered a few technical issues that initially hindered proper feedback from our codebase:

1. **Folder Exclusion Issue:**  
   The `lib/` and `test/` directories were being automatically excluded by default during SonarCloud analysis, which meant no meaningful code metrics were being generated.

2. **Test Coverage Detection Issue:**  
   Despite having a working test suite, SonarCloud was not detecting coverage data, preventing visibility into our test effectiveness and untested code areas.

---

## 🛠️ Solutions Implemented for SonarCloud Integration

To ensure a complete and professional CI workflow with SonarCloud, we applied the following resolutions:

1. **Custom GitHub Actions Workflow for CI:**  
   We created a tailored GitHub Actions CI workflow to explicitly include the `lib/` and `test/` directories in the SonarCloud scan. This resolved the exclusion issue and enabled proper code analysis across the entire project.

2. **Test Coverage Configuration with Documentation Support:**  
   The test coverage detection was resolved by carefully reviewing [SonarCloud’s official documentation](https://docs.sonarsource.com/sonarqube-cloud/enriching/test-coverage/dart-test-coverage/).  
   With support from our mentor, we corrected the coverage reporting configuration to align with SonarCloud expectations, ensuring full test visibility.

---


## 🎯 Target Users
- Parents and guardians of babies and children aged **0 months to 10 years**.
- Caregivers who want a centralized baby care tracking solution.

---

## 🖼️ UI/UX Showcase

Here's a glimpse of our user-friendly interface that supports parents with clarity, warmth, and ease of use:

<img src="https://raw.githubusercontent.com/Learnathon-By-Geeky-Solutions/triangle/refs/heads/feature/vaccination/assets/images/LittleSteps%20Scratch.png" alt="UI/UX Design Preview" width="400"/>

---

## 👥 Team Members

| Name               | Role           | GitHub Profile                                |
|--------------------|----------------|-----------------------------------------------|
| minhazul73         | Team Leader    | [@minhazul73](https://github.com/minhazul73) |
| jannatulferdous2730| Member         | [@jannatulferdous2730](https://github.com/jannatulferdous2730) |
| rowshannahar3      | Member         | [@rowshannahar3](https://github.com/rowshannahar3) |
| ihjohny            | Project Mentor | [@ihjohny](https://github.com/ihjohny)        |

---

## 🧰 Tech Stack

![Flutter](https://img.shields.io/badge/Flutter-3.10-blue?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.0-blue?logo=dart&logoColor=white)
![GetX](https://img.shields.io/badge/GetX-State_Management-purple?logo=getx&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-PostgreSQL-brightgreen?logo=firebase)
![Android Studio](https://img.shields.io/badge/Android_Studio-Giraffe-green?logo=androidstudio&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-Editor-blue?logo=visualstudiocode&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)
---

## 🏗️ Development Practices

| 📌 Topic             | ✅ Best Practices                                                                 |
|----------------------|----------------------------------------------------------------------------------|
| **Architecture**     | MVVM: Separated `/model`, `/view`, `/viewmodel`, and `/core` logic              |
| **State Management** | GetX – Lightweight, fast reactive bindings                                       |
| **Version Control**  | GitHub Projects used for issue tracking and task planning                       |
| **Code Quality**     | SonarCloud analysis to improve maintainability, detect duplicates, and refactor |
| **Testing**          | Firebase Test Lab for widget/unit testing across devices                        |
| **Reusability**      | Custom reusable widgets for forms, buttons, and notifications                   |

---

## 💼 Engineering Highlights

- Implemented **clean MVVM architecture** for scalable development.
- Integrated **SonarCloud** to measure maintainability and code duplication.
- Built reusable UI components to follow the **DRY principle**.
- Used **GetX** for smooth reactive state control and routing.
- Employed **Firebase** for secure, real-time data handling and push notifications.

---
## 📁 Project Structure

<pre>
Directory structure:
└── lib/
    ├── app.dart
    ├── firebase_options.dart
    ├── main.dart
    ├── bindings/
    │   └── general_bindings.dart
    ├── data/
    │   ├── models/
    │   │   ├── child/
    │   │   │   └── child_model.dart
    │   │   └── user/
    │   │       └── user_model.dart
    │   └── repositories/
    │       ├── auth/
    │       │   ├── authentication_repository.dart
    │       │   └── authentication_repository_impl.dart
    │       ├── child/
    │       │   ├── child_repository.dart
    │       │   └── child_repository_impl.dart
    │       └── user/
    │           ├── mock_user_repository_impl.dart
    │           ├── user_repository.dart
    │           └── user_repository_impl.dart
    ├── utils/
    │   ├── constants/
    │   │   ├── app_colors.dart
    │   │   └── sizes.dart
    │   ├── environment/
    │   │   └── env.dart
    │   ├── exceptions/
    │   │   ├── app_exceptions.dart
    │   │   └── format_exceptions.dart
    │   ├── formatters/
    │   │   └── formatter.dart
    │   ├── helpers/
    │   │   ├── age_calculator.dart
    │   │   ├── helper_functions.dart
    │   │   └── network_manager.dart
    │   ├── loaders/
    │   │   ├── animation_loader.dart
    │   │   └── circular_loader.dart
    │   ├── popups/
    │   │   ├── full_screen_loader.dart
    │   │   └── loaders.dart
    │   ├── theme/
    │   │   ├── theme.dart
    │   │   ├── extensions/
    │   │   │   └── custom_color_extension.dart
    │   │   └── widget_themes/
    │   │       ├── app_bar_theme.dart
    │   │       ├── bottom_navigation_bar_theme.dart
    │   │       ├── checkbox_theme.dart
    │   │       ├── filled_button_theme.dart
    │   │       ├── outlined_button_theme.dart
    │   │       ├── text_field_theme.dart
    │   │       └── text_theme.dart
    │   ├── translations/
    │   │   └── localization_service.dart
    │   └── validators/
    │       └── app_validator.dart
    ├── view/
    │   ├── auth/
    │   │   ├── email_verification_view.dart
    │   │   ├── login_view.dart
    │   │   └── register_view.dart
    │   ├── child_onboarding/
    │   │   ├── child_dob_input_view.dart
    │   │   ├── child_name_input_view.dart
    │   │   └── child_stats_input_view.dart
    │   └── home/
    │       ├── home_view.dart
    │       └── widgets/
    │           ├── activity_grid_layout.dart
    │           ├── age_grid_layout.dart
    │           └── vaccine_stack_layout.dart
    └── view_model/
        ├── auth/
        │   ├── initial_screen_redirect.dart
        │   ├── login_controller.dart
        │   └── register_controller.dart
        ├── child/
        │   └── child_controller.dart
        ├── child_onboarding/
        │   └── child_onboarding_controller.dart
        └── home/
            └── home_controller.dart
</pre>

---

## 📘 What We Learned

| 💡 Topic                        | 💬 Insight                                                                 |
|--------------------------------|----------------------------------------------------------------------------|
| Software Engineering           | Applied structured team workflow using real-world tools like GitHub Boards |
| Clean Architecture             | Learned how to break app into scalable and testable modules                |
| Code Quality                   | SonarCloud taught us how to improve reliability and maintainability        |
| Reusability & DRY Principle    | Mastered reuse of widgets for faster and cleaner development               |
| Testing & Debugging            | Used Firebase and test-driven logic to simulate real user cases            |

---
## ⚙️ Getting Started

### Project Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/Learnathon-By-Geeky-Solutions/triangle.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
3. Run the application:
   ```bash
   flutter run
   ```

---
<div align="center">
  <img src="https://raw.githubusercontent.com/minhazul73/LittleSteps/refs/heads/main/assets/images/banner.jpg" alt="Little Steps Banner"/>
</div>