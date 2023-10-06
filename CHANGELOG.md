# NavigationView (1.0.1)

[![pub package](https://img.shields.io/pub/v/navigation_view.svg)](https://pub.dev/packages/navigation_view)
[![pub points](https://img.shields.io/pub/points/navigation_view?color=2E8B57&label=pub%20points)](https://pub.dev/packages/navigation_view/score)



NavigationView is a Flutter package that provides a navigation component with customizable
colors and icons. It allows you to easily create a navigation bar with animated transitions between
different pages.
by most animation flutter

## Demo new

<img src="https://github.com/PuzzleTakX/navigation_view/blob/master/demo/3.gif?raw=true" alt="image_demo" width="300" height="700">

## Installation ☺

To use the NavigationView package, add the following dependency to your `pubspec.yaml`
file:

[![pub package](https://img.shields.io/pub/v/navigation_view.svg)](https://pub.dev/packages/navigation_view)
```yaml
dependencies:
navigation_view: ^1.0.5
```
Then, run `flutter pub get` to fetch the package.

## Usage

Import the package in your Dart file:

```dart
import 'package:navigation_view/navigation_view.dart';
```

Create a `NavigationView` widget and provide the necessary parameters:

```dart
 NavigationView(
onChangePage: (c) {},
curve: Curves.easeInBack,
durationAnimation: const Duration(milliseconds: 400),
items: [
ItemNavigationView(childAfter: const Icon(Icons.home_rounded,color: Colors.blue,size: 30,),
childBefore: Icon(Icons.home_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
ItemNavigationView(childAfter: const Icon(Icons.widgets_rounded,color: Colors.blue,size: 30,),
childBefore: Icon(Icons.now_widgets_outlined,color: Colors.grey.withAlpha(60),size: 30,)),
ItemNavigationView(childAfter: const Icon(Icons.wifi,color: Colors.blue,size: 30,),childBefore: Icon(Icons.wifi_lock,color: Colors.grey.withAlpha(60),size: 30,)),
ItemNavigationView(childAfter: const Icon(Icons.accessible,color: Colors.blue,size: 30,),
childBefore: Icon(Icons.not_accessible,color: Colors.grey.withAlpha(60),size: 30,)),
],
),
```

In the above code, `onChangePage` is a callback function that is triggered when the user changes the
page. You can handle the page change logic inside this function.

The `curve` parameter allows you to specify the animation curve for the transitions between pages.
The `durationAnimation` parameter sets the duration of the animation.

The `items` parameter is a list of `ItemNavigationView` widgets. Each `ItemNavigationView`
represents a navigation item and consists of two child widgets: `childAfter` and `childBefore`.
These child widgets can be any widget, but in this example, we use `Icon` widgets from the `Icons`
class.

Feel free to customize the icons, colors, and other properties as per your needs.

## Example

For a complete example of using the NavigationView package, refer to
the [example](https://github.com/PuzzleTakX/navigation_view/tree/master/example) provided.

## License

This package is released under the MIT License. See the [LICENSE](https://github.com/PuzzleTakX/navigation_view/blob/master/LICENSE)
file for more details.

## Credits

NavigationView is developed and maintained by [puzzleTak](https://github.com/PuzzleTakX).