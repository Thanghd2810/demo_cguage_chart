import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  return runApp(GaugeApp());
}

/// Represents the GaugeApp class
class GaugeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radial Gauge Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

/// Represents MyHomePage class
class MyHomePage extends StatefulWidget {
  /// Creates the instance of MyHomePage
  // ignore: prefer_const_constructors_in_immutables
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Flutter Radial Gauge')),
      body: SfRadialGauge(
        title: GaugeTitle(
            text: 'Speedometer',
            textStyle:
                const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        axes: <RadialAxis>[
          RadialAxis(
              // showLastLabel: true,
              // labelOffset: 60,

              /// gia tri cua kim dong ho
              showLabels: false,
              // maximumLabels: 100,

              ///so do cua kim
              showTicks: false,
              // ddieerm bat dau vong
              startAngle: 180,
              // diem ket thuc vong
              endAngle: 360,
              //kich thuoc cua vong tron voi man hinh
              radiusFactor: 0.75,
              // centerX: 1,
              minimum: 0,
              maximum: 90,
              // style cho vạch kim
              /// cai vach kim
              // showAxisLine: true,
              // axisLineStyle: AxisLineStyle(
              //   thickness: 60,
              //   color: Colors.red,
              // ),
              // style cho label
              // axisLabelStyle: GaugeTextStyle(
              //   fontSize: 20,
              //   color:Colors.red
              // ),
              // majorTickStyle: MajorTickStyle(thickness: 100, length: 10),
              // interval: 100,
              ranges: <GaugeRange>[
                GaugeRange(
                    startValue: 0,
                    sizeUnit: GaugeSizeUnit.logicalPixel,
                    endValue: 25,
                    color: Colors.green,
                    // cách gốc bao nhiều
                    rangeOffset: 0,
                    gradient: SweepGradient(
                      colors: const <Color>[
                        Colors.red,
                        Color(0xFFFFDD00),
                        Color(0xFFFFDD00),
                        Color(0xFF30B32D),
                      ],
                      stops: const <double>[
                        0,
                        0.3,
                        0.5833333,
                        0.777777,
                      ],
                    ),
                    startWidth: 30,
                    endWidth: 30,
                    label: "Hoàng Thắng"),
                GaugeRange(
                    startValue: 25,
                    endValue: 50,
                    color: Colors.orange,
                    startWidth: 30,
                    endWidth: 30,
                    label: "Hoàng Anh"),
                GaugeRange(
                    startValue: 50,
                    endValue: 90,
                    color: Colors.red,
                    startWidth: 30,
                    endWidth: 30,
                    label: "Chị Thương")
              ],
              // kim đồng hồ
              pointers: <GaugePointer>[
                NeedlePointer(
                  value: 60,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Container(
                        child: const Text('90.0',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    // vị trí theo góc
                    angle: 90,

                    /// số nằm ở vị trí nào
                    positionFactor: 0.5)
              ]),
        ],
      ),
    );
  }
}
