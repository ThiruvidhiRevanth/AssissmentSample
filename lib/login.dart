import 'package:flutter/material.dart';
import 'package:sample_poc/accepted.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('assest/image/login.jpg'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 200, 10),
            child: Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 200, 0),
            child: Text(
              "Mobile Number",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: TextField(
              style: TextStyle(
                height: 0.5,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                hintText: "Enter here",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 0, 5, 0),
            child: Row(children: <Widget>[
              SizedBox(
                width: 0.8,
              ),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Color.fromARGB(176, 163, 27, 27),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuefirst = value!;
                  });
                },
              ),
              Text(
                'I agree to the Terms & Conditions and Privacy Statement.',
                style: TextStyle(
                    fontSize: 11.0, color: Color.fromARGB(255, 118, 114, 114)),
              ),
            ]),
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
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Accept()),
                    );
                  }),
            ),
          ),
        ]),
      ),
    ));
  }
}
