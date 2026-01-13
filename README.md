# Jiji - Your AI Friend

## About The Screen

This project features a modern, clean, and interactive Flutter UI designed for an AI Assistant application named "Jiji". The screen focuses on displaying AI-generated explanations in a user-friendly format.

### Key Features:
*   **Header Section**: Displays the AI persona "Jiji" with a welcoming title and avatar image (`assets/image.png`).
*   **Interactive Input Field**: A neumorphic-style search bar prepopulated with a query ("Explain RAG") to simulate user interaction.
*   **Response Display (Jiji Says)**: A rich-text card that breaks down complex topics (like RAG - Retrieval-Augmented Generation) into:
    *   **Definition**: Highlights key terms using different font weights and colors.
    *   **Key Points**: Bulleted list for easy scanning of information.
    *   **Actionable Content**: Links to external resources like Presentations (PPT) and Videos (YouTube), implemented with custom icons and call-to-action buttons.

## Screen Code Structure

The codebase follows a modular and clean architecture for maintainability and readability:

*   **`lib/main.dart`**: Entry point of the application.
*   **`lib/views/home_view.dart`**: The main screen layout, orchestrating the header, search bar, and content widgets.
*   **`lib/widgets/`**: Reusable UI components:
    *   `jiji_speech.dart`: Encapsulates the logic and styling for the AI's response bubble.
    *   `action_button.dart`: A reusable widget for the resource links (Video/PPT) within the response.
*   **`lib/constant/app_colors.dart`**: Centralized color definitions to ensure design consistency across the app.

## Running the App

1.  Clone the repository.
2.  Run `flutter pub get` to install dependencies.
3.  Run `flutter run` to launch the application on your preferred emulator or device.
