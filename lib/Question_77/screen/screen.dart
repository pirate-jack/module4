import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Question77(),
    );
  }
}

class Question77 extends StatefulWidget {
  const Question77({Key? key});

  @override
  State<Question77> createState() => _Question77State();
}

class _Question77State extends State<Question77> {
  TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Call Or Message'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  TextField(
                    controller: _number,
                    decoration: InputDecoration(
                      hintText: 'Enter your Contact',
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          String num = _number.text.trim();
                          SendSms(num);
                        },
                        child: Text('Send Message'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          String num = _number.text.trim();
                          SendCall(num);
                        },
                        child: Text('Send Calls'),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> SendCall(String num) async {
    String url = 'tel:$num';
    try {
      if (await canLaunch(url)) {
        print('true');
        await launch(url);
      } else {
        throw Exception('Could not launch');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> SendSms(String num) async {
    String message = 'hii';
    String url = 'sms:$num?body=$message';
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw Exception('Could not launch');
      }
    } catch (e) {
      print(e);
    }
  }
}
