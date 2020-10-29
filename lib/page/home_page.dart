import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout demo'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 260,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/lake.jpg'
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        height: 8,
                      ),
                      Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey[500]))
                    ],
                  ),flex: 5),
                  Expanded(child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Text('41')
                    ],
                  ), flex: 1,)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              _buildCustomButton(Icon(Icons.call, color: Colors.blue), "CALL"),
              _buildCustomButton(Transform(
                                  alignment: FractionalOffset.center,
                                  transform: Matrix4.rotationZ(0.70),
                                  child: Icon(Icons.navigation, color: Colors.blue)), "ROUTE"),
              _buildCustomButton(Icon(Icons.share, color: Colors.blue), "SHARE")
            ]),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: ListView(
                  children: [Text(
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.'
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                    textAlign: TextAlign.justify,
                  ),
                ]),
              ),
            )
          ],
        ),
      )
    );
  }

  Widget _buildCustomButton(Widget icon, String label) {
    return Column(
      children: [
        icon,
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
