<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This Flutter library allows you to draw dotted straight line and arc with the array syntax of html5 canvas.

## Features

Similar to <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/setLineDash">this</a>, this library lets you draw dotted line and arc with varying gaps and lengths using the HTML5 canvas's setLineDash() array syntax.

## Getting started

Import this package and follow the syntax provided below.

## Usage

_setLineDash_

| Parameter | Class        | Description                                                       |
| --------- | ------------ | ----------------------------------------------------------------- |
| canvas    | Canvas       | Canvas object                                                     |
| point1    | Offset       | Beginning point                                                   |
| point2    | Offset       | End point                                                         |
| paint     | Paint        | Paint object                                                      |
| lineDash  | List<double> | Array of numbers as specified by the JavaScript Canvas API's docs |

_setArcDash_

| Parameter  | Class  | Description                                                      |
| ---------- | ------ | ---------------------------------------------------------------- |
| canvas     | Canvas | Canvas object                                                    |
| x          | double | Center of the arc X                                              |
| y          | double | Center of the arc Y                                              |
| radiusX    | double | Arc horizontal radius                                            |
| radiusY    | double | Arc vertical radius                                              |
| paint      | Paint  | Paint object                                                     |
| startAngle | double | Starting angle in degrees                                        |
| sweepAngle | double | Clockwise sweep amount starting from startAngle, also in degrees |

### Syntax Comparisons

Dart

```dart
//Negative signs are ignored; [2, -2] is the same as [2, 2].
const lineDash = [2, 20];

//straight line
setLineDash(canvas, point1, point2, paint, lineDash);
//Arcs: circle & ellipse (can be used to draw curves from quadratic bezier)
setArcDash(canvas, x, y, radiusX, radiusY, paint, startAngle, sweepAngle, lineDash);
```

JavaScript

```js
ctx.setLineDash([2, 20]);

//straight line
ctx.lineTo(x1, y1, x2, y2);
//Arc: circle
ctx.arc(x, y, radius, startAngle, endAngle, [, counterclockwise]);
//Arc: quadratic bezier (can be used to draw ellipses)
ctx.arcTo(x1, y1, x2, y2, radius);

ctx.stroke();
```

### Result comparisons (Flutter: purple background, HTML5: white)

Please excuse the size differences. The flutter examples were captured on a smaller device.

#### [2, 20]

<img src="images/2, 20/dart.png"/>

<img src="images/2, 20/javascript.png"/>

<br/>

#### [5, 10, 12]

<img src="images/5, 10, 12/dart.png"/>

<img src="images/5, 10, 12/javascript.png"/>

<br/>

#### [1, 20, 0, 5, 2]

<img src="images/1, 20, 0, 5, 2/dart.png"/>

<img src="images/1, 20, 0, 5, 2/javascript.png"/>

<br/>

#### [20, 3, 3, 3, 3, 3, 3, 3]

<img src="images/20, 3, 3, 3, 3, 3, 3, 3/dart.png"/>

<img src="images/20, 3, 3, 3, 3, 3, 3, 3/javascript.png"/>

<br/>

## Example Combining Straight Lines with Arcs

### With [5, 5] for lines and [7.8, 7.8] for arcs

<img src="images/ui-examples/ui-example-i.png"/>

<br/>

### With [1.0, 2.0, 3.0, 4.0] for lines and [2.0, 4.0, 6.0, 8.0] for arcs

<img src="images/ui-examples/ui-example-ii.png"/>

_UI design by Natawan Meechai_

UI src: https://github.com/Khongchai/yawwn/blob/main/lib/widgets/progress/dotted_line_path_points.dart
