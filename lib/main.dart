import 'package:flutter/material.dart';

void main() => runApp(Weather());

class Weather extends StatelessWidget {
  //const Weather({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.settings),
              color: Colors.black87,
            )
          ],
          leading: IconButton(
            color: Colors.black87,
            icon: Icon(Icons.menu),
            onPressed: () => {},
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Weather App',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _footerRatings(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://play-lh.googleusercontent.com/Qsw8qYd9JZ35G2Al5CfJdt2jrsG0ahESldEArcXn3XoXGFUpls8paeVmiWL_0GGCFYk'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const <Widget>[
      Text(
        "Tuesday - May 22",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 17, 75, 122),
        ),
      ),
      //---------------------------------
      Divider(),
      //---------------------------------
      Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
        style: TextStyle(fontSize: 15, color: Colors.black38),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.orangeAccent,
          ),
        ],
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "18° clear",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              )
            ],
          ),
          //---------------------------------------
          Row(
            children: <Widget>[
              Text(
                "RSO-Alania, Vladikavkaz",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(
      6,
      (index) => Chip(
        backgroundColor: Colors.blue[100],
        label: Text(
          "${index + 20}°C",
          style: TextStyle(fontSize: 18, color: Colors.black45),
        ),
        avatar: Icon(
          Icons.wb_sunny,
          color: Colors.orangeAccent,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.blueGrey),
        ),
      ),
    ),
  );
}

Row _footerRatings() {
  var stars = Row(
    children: <Widget>[
      Icon(Icons.star, size: 16, color: Colors.orangeAccent),
      Icon(Icons.star, size: 16, color: Colors.orangeAccent),
      Icon(Icons.star, size: 16, color: Colors.orangeAccent),
      Icon(Icons.star, size: 16, color: Colors.orangeAccent),
      Icon(Icons.star, size: 16, color: Colors.grey),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text("Информация c сайтa: \ngismetio.com"),
      stars,
    ],
  );
}
