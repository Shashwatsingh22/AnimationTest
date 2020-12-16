# AnimationTest
We’re going to introduce you to animations in Flutter, and show you how to build both simple and complex animations for your Flutter app.\n
# Implicitly animated widgets
Flutter includes a series of widgets that are animated versions of existing widgets that you probably already used in your app, such as the AnimatedContainer version of the Container widget and the AnimatedPositioned version of the Positioned widget.
These widgets automatically animate changes to their properties. When you rebuild the widget with new property values, such as with a StatefulWidget’s setState, the widget handles driving the animation from the previous value to the new value.
