Project Name: CS492 Weather App
Refactor Date: 2/20/2025
Refactorers: [Shane Ludwig], [Tyler Parr]
Document Writer: [Shane Ludwig]
Code Refactorer: [Tyler Parr]

Template:
Purpose of the Refactor: [Explain why the refactoring was necessary. Example: "The purpose of this refactor was to simplify the authentication logic and improve readability."]
Scope: [Define which parts of the project were refactored. Example: "Refactored the user authentication module and the database query handling."]

## Main.dart

- ##

# Scripts folder

- ## Purpose of Refactor: Organize the file structure to simplify readability and location
- ## Scope: Created a locations subfolder in scripts

# Widgets folder

- ## Purpose of Refactor: Organize file structure to simplify readability and location
- ## Scope: Created Forecast and Location subfolder in widgets

# Forecast_tab_widget.dart

- ## Nothing to refactor, only one class

# Location.dart

- ## Nothing to refactor in Location.dart

# Location_widget.dart

- ## Seems clean

# Location_tab_widget.dart

- ## Purpose of Refactor: Organize file structure
- ## Scope: Deleted previous JSON implementation

# Detailed_forecast_widget.dart

- ## Purpose: Re-organize the file structure
- ## Scope: Move the DetailedForecast function its to own widget file.

# Forecast_name_widget.dart

- ## Purpose: Re-organize the file structure
- ## Scope: Move the ForecastName function its to own widget file.

# forecast_widget.dart

- ## Purpose: Import was unused
- ## Scope: Removed time import that was unused

- ## Scope: Extracted all of the text widgets into a widget
- ## Scope: Removed another import
- ## Fixed a warning

# forecast_summaries_widget.dart

- ## Purpose:
- ## Scope: extracted on tap summary widget and deleted forecast summary widget import

# forecast_summary_widget.dart

- ## Purpose: Remove duplicate code
- ## Scope: Renamed duplicate ForecastNameWidget to ForecastSummaryNameWidget and extracted to its own file
- ## Removed time import and deleted ShortForecastWidget as it was unused

### Made a Summaries subfolder within the Forecasts subfolder

# location_tab_widget.dart

- ## Purpose: Bunch of unnecessary functions that can be separated
- ## Scope: Extract savedLocationsWidget from the location_tab_widget.dart
- ## Scope: Extract savedLocationWidget from the location_tab_widget.dart
- ## Scope: Extract savedLocationEditWidget from the location_tab_widget.dart
- ## Scope: Extract savedLocationDisplayWidget from the location_tab_widget.dart
- ## Scope: Extract loctionInputWidget from the location_tab_widget.dart
- ## Scope: Extract locationTextWidget from the location_tab_widget.dart
  ### LocationTextWidget import removed
  ### Changed Location storage to be Camel Case

# Tests.dart

- ## Purpose: Repetitive and useless, deprecated
- ## Scope: Removed tests.dart

# Main.dart

- ## Purpose: Renamed and moved MyHome to its own file
- ## Scope: Made Myname its own file and make Main.tsx be extremely small and concise.
