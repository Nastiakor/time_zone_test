Time Zone App
Overview

The Time Zone App is a Flutter application designed to display the current system time of the user and provide the ability to view and compare the current time in different time zones. Users can also switch between light and dark themes and choose between 24-hour and 12-hour (AM/PM) time formats.
Features

    Display the current system time in real-time.
    Load and display a list of time zones from a provided JSON file.
    Show the current time in any selected time zone.
    Switch between light and dark themes.
    Toggle between 24-hour and 12-hour (AM/PM) time formats.

Installation

Clone the repository:

sh

git clone https://github.com/yourusername/time-zone-app.git
cd time-zone-app

Install dependencies:

sh

flutter pub get

Run the application:

sh

    flutter run

Usage
Splash Screen

Upon launching the app, users are greeted with a splash screen where they can choose their preferred display mode (light or dark).
Navigation

The app uses a BottomNavigationBar with three tabs:

    Your Hour: Displays the current system time.
    Time Zones: Displays a list of different time zones. Users can select a time zone to view the current time in that zone.
    Preferences: Allows users to change the theme (light/dark) and switch between 24-hour and 12-hour (AM/PM) formats.

Folder Structure

plaintext

lib/
├── blocs/                     # Business logic components (Cubits)
│   ├── selected_time_zone/    # Selected time zone cubit
│   └── theme/                 # Theme cubit
├── core/                      # Core utilities and constants
│   └── constants.dart         # Constant values
├── data/                      # Data sources
│   └── data_sources/
│       ├── location_service.dart   # Location service for geolocation
│       └── time_zone_data_source_impl.dart  # Time zone data source implementation
├── domain/                    # Domain layer (entities and repositories)
│   ├── entities/              # Domain entities
│   └── repositories/          # Repository interfaces
├── presentation/              # Presentation layer (UI)
│   ├── routes/                # App routes
│   ├── theme/                 # Theme data
│   ├── views/                 # UI screens
│   │   ├── screens/
│   │   └── widgets/           # Reusable widgets
│   └── main.dart              # App entry point
├── main.dart                  # Main entry point

Further Enhancements

In the future, the following enhancements are planned:

    Geolocation Integration: Initially intended to use geolocation to determine the user's current location and display the corresponding time zone automatically. This feature will be added in future updates.
    Date Display in Selected Time Zone: Displaying the current date in the selected time zone alongside the time.
    Interactive SVG Map: Implement an interactive SVG map that allows users to select their time zone by clicking on the map.

Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
License

This project is licensed under the MIT License.
Acknowledgements

    The Flutter team for their amazing framework.
    All the open-source libraries and tools that made this project possible.

Contact

If you have any questions or feedback, please reach out to me at krt.anastasia@gmail.com