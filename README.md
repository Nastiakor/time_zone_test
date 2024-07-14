Time Zone App

Overview

The Time Zone App is a Flutter application designed to display the current system time of the user and provide the ability to view and compare the current time in different time zones. Users can also switch between light and dark themes and choose between 24-hour and 12-hour (AM/PM) time formats.

Features

⸱ Display the current system time in real-time.
⸱ Load and display a list of time zones from a provided JSON file.
⸱ Show the current time in any selected time zone.
⸱ Switch between light and dark themes.
⸱ Toggle between 24-hour and 12-hour (AM/PM) time formats.

Installation

Clone the repository:

git clone https://github.com/yourusername/time-zone-app.git
cd time-zone-app

Install dependencies:
flutter pub get

Run the application:
flutter run

Usage
Splash Screen

Upon launching the app, users are greeted with a splash screen where they can choose their preferred display mode (light or dark).
Navigation

The app uses a BottomNavigationBar with three tabs:

Your Clock: Displays the current system time.
World Clock: Displays a list of different time zones. Users can select a time zone to view the current time in that zone.
Settings: Allows users to change the theme (light/dark) and switch between 24-hour and 12-hour (AM/PM) formats.

Folder Structure

The project follows a clean architecture pattern, ensuring a clear separation of concerns and promoting maintainability and scalability. 
This architecture helps in organizing the code in a systematic way, making it easier to manage and extend the application.

Further Enhancements

In the future, the following enhancements are planned:

⸱ Geolocation Integration: Initially intended to use geolocation to determine the user's current location and display the corresponding time zone automatically. This feature will be added in future updates.
⸱ Date Display in Selected Time Zone: Displaying the current date in the selected time zone alongside the time.
⸱ Interactive SVG Map: Implement an interactive SVG map that allows users to select their time zone by clicking on the map.

Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

Contact

If you have any questions or feedback, please reach out to me at krt.anastasia@gmail.com
