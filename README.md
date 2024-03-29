# dotted_line_array

This Flutter Canvas library allows you to draw dotted straight line and arc with the array syntax of html5 canvas.

## Features

Similar to <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/setLineDash">this</a>, this library lets you draw dotted line and arc with varying gaps and lengths using the HTML5 canvas's setLineDash() array syntax.

## Getting started

Import this package and follow the syntax provided below.

## Usage

_setLineDash()_

| Parameter | Class//type  | Description                                                                                             |
|-----------|--------------|---------------------------------------------------------------------------------------------------------|
| canvas    | Canvas       | Canvas object                                                                                           |
| point1    | Offset       | Beginning point                                                                                         |
| point2    | Offset       | End point                                                                                               |
| paint     | Paint        | Paint object                                                                                            |
| lineDash  | List<double> | Array of numbers as specified by the HTML5 Canvas API's docs. Each number describes a length in pixels. |

_setArcDash()_

| Parameter  | Class//type  | Description                                                                                              |
|------------|--------------|----------------------------------------------------------------------------------------------------------|
| canvas     | Canvas       | Canvas object                                                                                            |
| x          | double       | Center of the arc X                                                                                      |
| y          | double       | Center of the arc Y                                                                                      |
| radiusX    | double       | Arc horizontal radius                                                                                    |
| radiusY    | double       | Arc vertical radius                                                                                      |
| paint      | Paint        | Paint object                                                                                             |
| startAngle | double       | Starting angle in degrees                                                                                |
| sweepAngle | double       | Clockwise sweep amount starting from startAngle, also in degrees                                         |
| lineDash   | List<double> | Array of numbers as specified by the HTML5 Canvas API's docs. Each number describes a length in degrees. |

**Note: For the `setArcDash`, I find thinking about each of the dashes' length in degrees, rather than in pixels, more intuitive.**

**Instead of _"this arc dash, when straightened, is 5 pixels long"_, we can say: _"this arc dash, for a circle of radius `x`, is `30` degrees in length"_**

### Syntax Comparisons

Dart

```dart
const lineDash = [2, 20];

//straight line
setLineDash(canvas, point1, point2, paint, lineDash);

//Circle or ellipse
setArcDash(canvas, x, y, radiusX, radiusY, paint, startAngle, sweepAngle, lineDash);
```

JavaScript

```js
ctx.setLineDash([2, 20]);

//Straight Line
ctx.lineTo(x1, y1, x2, y2);

//Circle
ctx.arc(x, y, radius, startAngle, endAngle, [, counterclockwise]);

//Circle or Ellipse
ctx.ellipse(x, y, radiusX, radiusY, rotation, startAngle, endAngle [, counterclockwise]);

ctx.stroke();
```

### Result comparisons (Flutter: purple background, HTML5: white)

**Note: The Flutter examples were captured on a smaller device.**

#### [2, 20]

![2,20 dart example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/2%2C20/dart.png)

![2,20 javascript example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/2%2C20/javascript.png)

#### [5, 10, 12]

![5,10,12 dart example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/5%2C10%2C12/dart.png)

![5,10,12 javascript example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/5%2C10%2C12/javascript.png)

#### [1, 20, 0, 5, 2]

![1,20,0,5,2 dart example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/1%2C20%2C0%2C5%2C2/dart.png)

![1,20,0,5,2 javascript example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/1%2C20%2C0%2C5%2C2/javascript.png)

#### [20, 3, 3, 3, 3, 3, 3, 3]

![20,3,3,3,3,3,3,3 dart example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/20%2C3%2C3%2C3%2C3%2C3%2C3%2C3/dart.png)

![20,3,3,3,3,3,3,3 javascript example](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/20%2C3%2C3%2C3%2C3%2C3%2C3%2C3/javascript.png)

## Example Combining Straight Lines with Arcs

### With [5, 5] for lines and [7.8, 7.8] for arcs

![ui-example-with-equal-arrays-of-same-number](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/ui-examples/ui-example-1.png)

### With [1.0, 2.0, 3.0, 4.0] for lines and [2.0, 4.0, 6.0, 8.0] for arcs

![ui-example-with-arrays-of-different-numbers](https://raw.githubusercontent.com/Khongchai/flutter_dotted_line_array/main/images/ui-examples/ui-example-2.png)

_UI design by Natawan Meechai_

UI src: https://github.com/Khongchai/yawwn/blob/main/lib/widgets/progress/dotted_line_path_points.dart
