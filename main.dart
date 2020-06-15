import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Calenderpage(),
      ),
    );

class Calenderpage extends StatefulWidget {
  @override
  _CalenderpageState createState() => _CalenderpageState();
}

class _CalenderpageState extends State<Calenderpage> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
        elevation: 15,
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Material(
              elevation: 10,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(10),
              child: TableCalendar(
                calendarController: _controller,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Today',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: ' 15th june 2020',
                      style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
            color: Colors.green,
            height: 3,
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(5,0,5,0),
            child: Material(
              elevation: 10,
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Tablcol1(),
                      Tablcol2(),
                      Tablcol3(),
                    ],
                  ),
                  TableRow(children: [
                    Tabl11(),
                    Tabl12(),
                    Tabl13(),
                  ]),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(5,0,5,0),
            child: Material(
              elevation: 10,
              child: Table(
                children: [
                  TableRow(
                    children: [
                      Tablcol1(),
                      Tablcol2(),
                      Tablcol3(),
                    ],
                  ),
                  TableRow(children: [
                    Tabl21(),
                    Tabl22(),
                    Tabl23(),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tablcol1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Customer details',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      color: Colors.black87,
    );
  }
}

class Tablcol2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Item Details',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      color: Colors.black87,
    );
  }
}

class Tablcol3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Package',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      color: Colors.black87,
    );
  }
}

class Tabl11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text(
            'Saravanan vasanth',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Text(
              'Lorem ipsum dotor sit amet, consectator adipiscing eli',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class Tabl12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset('name'),
          Column(
            children: <Widget>[
              Text(
                'Pesarathu Dosa',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '1/2 kg',
                style: TextStyle(fontSize: 10,),
              ),
              SizedBox(height:10),
              Text(
                'Sambar',
                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),
              ),
              Text(
                '1/2 Litre',
                style: TextStyle(fontSize: 10,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tabl13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Center(
        child: Text(
          '1 Day',
          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Tabl21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Text(
            'Arjun Prashanth',
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Text(
              'Lorem ipsum dotor sit amet, consectator adipiscing eli',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class Tabl22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset('name'),
          Column(
            children: <Widget>[
              Text(
                'Idiyappam',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '1/2 kg',
                style: TextStyle(fontSize: 10,),
              ),
              SizedBox(height:10),
              Text(
                'Subji',
                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),
              ),
              Text(
                '1/2 Litre',
                style: TextStyle(fontSize: 10,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tabl23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Center(
        child: Text(
          '7 Day',
          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
