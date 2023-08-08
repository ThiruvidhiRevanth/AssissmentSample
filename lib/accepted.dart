import 'package:flutter/material.dart';

void main() {
  runApp(Accept());
}

class Accept extends StatefulWidget {
  const Accept({super.key});

  @override
  State<Accept> createState() => _AcceptState();
}

class _AcceptState extends State<Accept> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 100, 30, 0),
              child: Text(
                "It a date!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(00, 20, 20, 0),
                height: 140,
                width: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.asset("assest/image/profile.jpg"),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "This meeting is Accepted by",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "Robaert Fox",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text("in 1 week 2 days",
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Text("Meet Details",
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
              child: Row(children: [
                Text(
                  "Friday ",
                ),
                SizedBox(width: 50),
                Text("28/07/23"),
                SizedBox(width: 50),
                Text("12:00Pm(L)")
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
              child: Row(children: [
                Text(
                  "Location :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Aaha Foot Court"),
              ]),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(31, 15, 29, 5),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  child: Text(
                    "Cancel Meet",
                    style: TextStyle(
                      color: Color.fromARGB(195, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(31, 15, 29, 5),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(189, 176, 29, 29),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: Text(
                      'Close',
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {}),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
