import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather",
              style: TextStyle(
                color: Colors.black87,
              )),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
        body: _bodyWeatherWidget(),
      ),
    );
  }
}

Widget _bodyWeatherWidget() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImageWidget(),
        Divider(color: Colors.transparent),
        SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _weatherDesctiptionWidget(),
                  Divider(color: Colors.transparent),
                  _temperatureWidget(),
                  Divider(color: Colors.transparent),
                  _temperatureForeacstWidget(),
                  Divider(color: Colors.transparent),
                  _ratingWidget(),
                ],
              )),
        ),
      ],
    ),
  );
}

Image _headerImageWidget() {
  return Image(
    image: NetworkImage(
        "https://sa1s3optim.patientpop.com/assets/images/provider/photos/2138869.jpg"),
    fit: BoxFit.cover,
  );
}

Column _weatherDesctiptionWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text("Tuesday - May 22",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          )),
      Text(
        "Lorem Ipsum",
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    ],
  );
}

Row _temperatureWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      SizedBox(
        width: 16,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("15 градусов", style: TextStyle(color: Colors.deepPurple))
            ],
          ),
          Row(
            children: <Widget>[
              Text("Житомирская область"),
            ],
          )
        ],
      )
    ],
  );
}

Wrap _temperatureForeacstWidget() {
  return Wrap(
      spacing: 10,
      children: List.generate(8, (index) {
        return Chip(
          backgroundColor: Colors.grey.shade100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                color: Colors.grey,
              )),
          avatar: Icon(
            Icons.wb_cloudy,
            color: Colors.blue,
          ),
          label: Text("№ ${20 + index}",
              style: TextStyle(
                fontSize: 16,
              )),
        );
      }));
}

Column _ratingWidget() {
  var stars = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Icon(Icons.star, color: Colors.yellow,),
    Icon(Icons.star, color: Colors.yellow,),
    Icon(Icons.star, color: Colors.yellow,),
    Icon(Icons.star, color: Colors.yellow,),
    Icon(Icons.star, color: Colors.grey,),
  ],);
  
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        "Info with weatherMap.org",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      stars,
    ],
  );
}
