import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double speedingAmount;
  final double speedingPcOfTotal;

  ChartBar(this.label, this.speedingAmount, this.speedingPcOfTotal);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.1,
              child: FittedBox(
                child: Text('${(speedingAmount / 1000).toStringAsFixed(0)}k'),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(
              height: constraints.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amberAccent, width: 1),
                      color: Color.fromRGBO(220, 220, 220, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: speedingPcOfTotal,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05,
            ),
            Container(height: constraints.maxHeight* 0.15 ,child: Text(label)),
          ],
        );
      },
    );
  }
}
