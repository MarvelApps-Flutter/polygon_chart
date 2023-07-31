## Description
Polygon charts are a visual representation used to showcase app features and data in a colorful chart form. Each feature or data point corresponds to a vertex on the polygon, and the distance from the center indicates its value. This dynamic chart provides a clear and engaging overview of app characteristics and statistics.

You can easily achieve creating beautiful polygon charts using polygon_chart flutter package without the hassel of creating custom widgets for every data.

- polygon_chart: [polygon_chart](https://pub.dev/packages/polygon_chart)

  [![Pub](https://img.shields.io/pub/v/polygon_chart.svg?label=dev&include_prereleases)](https://pub.dev/packages/polygon_chart)


## Get started
Add dependency 
You can use the command to add polygon_chart as a dependency with the latest stable version:

``` 
   $ dart pub add polygon_chart

```

Or you can manually add polygon_chart into the dependencies section in your pubspec.yaml:


```
  dependencies:
      polygon_chart: ^0.0.1

```

## Example

### Fetching details using document file

```
 import 'package:polygon_chart/polygon_chart.dart';
  
 Container(
          color: darkMode ? Colors.black : Colors.white,
          child: Center(
            child: SizedBox(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: darkMode
                  ? ChartPage.dark(
                      ticks: ticks,
                      features: features,
                      data: data,
                      reverseAxis: true,
                      useSides: true,
                    )
                  : ChartPage.light(
                      ticks: ticks,
                      features: features,
                      data: data,
                      reverseAxis: true,
                      useSides: true,
                    ),
            ),
          ),
        )

```

