# Time Zone App

## Overview

The Time Zone App is a Flutter application designed to display the current system time of the user and provide the ability to view and compare the current time in different time zones. Users can also switch between light and dark themes and choose between 24-hour and 12-hour (AM/PM) time formats.

## Features

⸱ Display the current system time in real-time.
⸱ Load and display a list of time zones from a provided JSON file.
⸱ Show the current time in any selected time zone.
⸱ Switch between light and dark themes.
⸱ Toggle between 24-hour and 12-hour (AM/PM) time formats.

## Installation

Clone the repository:

git clone [https://github.com/yourusername/time_zone_app.git](https://github.com/Nastiakor/time_zone_test)

cd time_zone_app

Install dependencies:
flutter pub get

Run the application:
flutter run

## Usage
Splash Screen

<p float="left"> 
<img src="https://github.com/user-attachments/assets/1be802ef-ee23-4ada-8266-ec7e68770fd6" width="100" /> 
<img src="https://github.com/user-attachments/assets/0b4991a3-496c-4bd2-ad56-68b82dfe86ef" width="100" /> 
</p>

Upon launching the app, users are greeted with a splash screen where they can choose their preferred display mode (light or dark).

## Navigation

The app uses a BottomNavigationBar with three tabs:
<p float="left"> 
<img src="https://github.com/user-attachments/assets/cabded70-d8d2-445d-a386-9d550859b249" width="100" /> 
<img src="https://github.com/user-attachments/assets/908d913c-c1f4-4ce8-ba8f-af91671c792a" width="100" /> 
<img src="https://github.com/user-attachments/assets/1e09a977-71f0-462a-9410-5138dccee7b1" width="100" /> 
<img src="https://github.com/user-attachments/assets/0330fe7f-22da-45e9-8ff3-698f9cb05ce1" width="100" /> 
<img src="https://github.com/user-attachments/assets/4defb0ad-1622-4d7b-99c2-ea5018a8f00d" width="100" /> 

</p>

Your Clock: Displays the current system time.
World Clock: Displays a list of different time zones. Users can select a time zone to view the current time in that zone.
Settings: Allows users to change the theme (light/dark) and switch between 24-hour and 12-hour (AM/PM) formats.

<p float="left"> 
<img src="https://github.com/user-attachments/assets/76705e8c-bebf-4c92-a02e-8d3d48bb8f76" width="100" /> 
<img src="https://github.com/user-attachments/assets/e31bccc9-2ea2-4a2b-afd2-91bdf13b456f" width="100" /> 
</p>

## Folder Structure

The project follows a clean architecture pattern, ensuring a clear separation of concerns and promoting maintainability and scalability. 
This architecture helps in organizing the code in a systematic way, making it easier to manage and extend the application.

## Further Enhancements

In the future, the following enhancements are planned:

⸱ Geolocation Integration: Initially intended to use geolocation to determine the user's current location and display the corresponding time zone automatically. This feature will be added in future updates.
⸱ Date Display in Selected Time Zone: Displaying the current date in the selected time zone alongside the time.
⸱ Interactive SVG Map: Implement an interactive SVG map that allows users to select their time zone by clicking on the map.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Contact

If you have any questions or feedback, please reach out to me at krt.anastasia@gmail.com
