# Color Widget Navigation

Color Widget Navigation is a Flutter package that provides a navigation component with customizable colors and icons. It allows you to easily create a navigation bar with animated transitions between different pages.

## Installation

To use the Color Widget Navigation package, add the following dependency to your `pubspec.yaml` file:

yaml
dependencies:
color_widget_navigation: ^1.0.0

Then, run `flutter pub get` to fetch the package.

## Usage

Import the package in your Dart file:

dart
import 'package:color_widget_navigation/color_widget_navigation.dart';

Create a `NavigationView` widget and provide the necessary parameters:

dart
NavigationView(
onChangePage: (c) {
// Handle page change here
},
curve: Curves.easeInBack,
durationAnimation: const Duration(milliseconds: 400),
items: [
ItemNavigationView(
childAfter: const Icon(Icons.home_rounded, color: Colors.blue, size: 30),
childBefore: Icon(Icons.home_outlined, color: Colors.grey.withAlpha(60), size: 30),
),
ItemNavigationView(
childAfter: const Icon(Icons.widgets_rounded, color: Colors.blue, size: 30),
childBefore: Icon(Icons.now_widgets_outlined, color: Colors.grey.withAlpha(60), size: 30),
),
ItemNavigationView(
childAfter: const Icon(Icons.wifi, color: Colors.blue, size: 30),
childBefore: Icon(Icons.wifi_lock, color: Colors.grey.withAlpha(60), size: 30),
),
ItemNavigationView(
childAfter: const Icon(Icons.accessible, color: Colors.blue, size: 30),
childBefore: Icon(Icons.not_accessible, color: Colors.grey.withAlpha(60), size: 30),
),
],
)

In the above code, `onChangePage` is a callback function that is triggered when the user changes the page. You can handle the page change logic inside this function.

The `curve` parameter allows you to specify the animation curve for the transitions between pages. The `durationAnimation` parameter sets the duration of the animation.

The `items` parameter is a list of `ItemNavigationView` widgets. Each `ItemNavigationView` represents a navigation item and consists of two child widgets: `childAfter` and `childBefore`. These child widgets can be any widget, but in this example, we use `Icon` widgets from the `Icons` class.

Feel free to customize the icons, colors, and other properties as per your needs.

## Example

For a complete example of using the Color Widget Navigation package, refer to the [example](https://github.com/example-link) provided.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please create a new issue or submit a pull request on the [GitHub repository](https://github.com/repository-link).

## License

This package is released under the MIT License. See the [LICENSE](https://github.com/license-link) file for more details.

## Credits

Color Widget Navigation is developed and maintained by [Your Name](https://your-website-link).