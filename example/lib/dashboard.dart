import 'package:flutter/material.dart';
import 'package:polygon_chart/polygon_chart.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //set bool value for dark & light mode
  bool darkMode = false;
  // set number of features
  double numberOfFeatures = 5;

  @override
  Widget build(BuildContext context) {
    // create number of polygons
    List<double> ticks = [3, 21, 25, 71, 75, 100];
    var features = [
      'Lable 1',
      'Lable 2',
      'Lable 3',
      'Lable 4',
      'Lable 5',
    ];
    // create data for showing in the polygon
    var data = [
      [50, 100, 100, 100, 100],
      [50, 50, 100, 100, 100],
      [100, 10, 100, 100, 50],
    ];

    // map the data and number of features
    features = features.sublist(0, numberOfFeatures.floor());
    data = data
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: darkMode ? Colors.black : Colors.white,
          elevation: 0,
          title: Text(
            'Polygon Chart',
            style: TextStyle(color: darkMode ? Colors.white : Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      color: darkMode ? Colors.white : Colors.black,
                      onPressed: () {
                        setState(() {
                          darkMode = !darkMode;
                        });
                      },
                      icon:
                          Icon(darkMode ? Icons.dark_mode : Icons.light_mode)),
                ],
              ),
            ),
          ],
        ),
        body: Container(
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
        ));
  }
}
