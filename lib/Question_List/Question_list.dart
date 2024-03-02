import 'package:flutter/material.dart';
import 'package:module4/Question_61/screen/screen1.dart';
import 'package:module4/Question_62/question_62.dart';
import 'package:module4/Question_63/question_63.dart';
import 'package:module4/Question_64/Question_64.dart';
import 'package:module4/Question_65/question_65.dart';
import 'package:module4/Question_66/Question_66.dart';
import 'package:module4/Question_67/Question_67.dart';
import 'package:module4/Question_68/screen/Question_68.dart';
import 'package:module4/Question_69/Question_69.dart';
import 'package:module4/Question_70_71/question_70.dart';
import 'package:module4/Question_73/question_73.dart';
import 'package:module4/Question_74/screen/screen1.dart';
import 'package:module4/Question_76/screen.dart';
import 'package:module4/Question_77/screen/screen.dart';
import 'package:module4/Question_78/screen/homeScreen.dart';
import 'package:module4/Question_List/question_List_Model.dart';



@override
class Module4 extends StatefulWidget {
  @override
  State<Module4> createState() => _Module4State();
}

class _Module4State extends State<Module4> {
  List<Question> quetionlist = [
    Question(
        questionNo: 61,
        question:
        'Create custom toolbar as per given below design Create toolbar with spinner and search functionality'),
    Question(
        questionNo: 62,
        question:
        ' Write a code to display simple alert dialog with title, description and icon when button is clicked'),
    Question(
        questionNo: 63,
        question:
        'Write a code to display alert dialog with positive, negative and neutral button and display toast respectively users choice'),
    Question(
        questionNo: 64,
        question:
        'Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView'),
    Question(
        questionNo: 65,
        question:
        'open alert dialog when user want to exit from the application'),
    Question(
        questionNo: 66,
        question: 'Write a code to select Date on buttons click event'),
    Question(
        questionNo: 67,
        question:
        'create an application to display Textview when checkbox is checked and hide otherwise'),
    Question(
        questionNo: 68,
        question:
        ' Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on users choice'),
    Question(
        questionNo: 69,
        question:
        'Create an application like gmail and display Screens according to user selection and design each page with dummy data'),
    Question(
        questionNo: 70,
        question:
        'Create an application with bottom navigation with 3 tabs Gallery,audio and video and design each page with dummy data'),

    Question(
        questionNo: 73,
        question: ' Write a code to display Splash Screen using Activity'),
    Question(
        questionNo: 74,
        question:
        'Write a code to redirect user from one activity to another when button click.'),
    Question(
        questionNo: 76,
        question:
        ' Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.'),
    Question(
        questionNo: 77,
        question: ' Call via urllauncher, Send Sms via urllauncher'),
    Question(
        questionNo: 78,
        question:
        ' Write a program to add name from the text view and insert into thelistview. If you click on the listview then name should be show in the dialog box. When user press for 2 seconds on particular List item thenopen Context Menu (Delete Item, Edit Item, Exit). If user click on Delete Item then Open one Alert Dialog with message (“Are you sure want to delete Item?”) and yes, no button if user press yes button then remove item from list. (Click a DELETE button, it gives a confirm box) If user click on Edit item then selected item display on EditText and again user click on button then this (updated item) should be replace with old item'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Module 4',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: ListView.builder(
          itemCount: quetionlist.length,
          itemBuilder: (context, index) {
            Question question = quetionlist[index];
            return Card(
              elevation: 5,
              color: Colors.lightBlue.shade50,
              child: ListTile(
                onTap: () => _onClick(question, context),
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue.shade300,
                  radius: 25,
                  child: Text(
                    '${question.questionNo}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                title: Text(
                  '${question.question}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _onClick(Question question, BuildContext context) {
    switch (question.questionNo) {
      case 61:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question61(),
          ),
        );
        break;
      case 62:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question62(),
            ));
        break;
      case 63:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question63(),
            ));
        break;
      case 64:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question64(),
            ));
        break;
      case 65:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question65(),
            ));
        break;
      case 66:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question66(),
            ));
        break;
      case 67:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question67(),
            ));
        break;
      case 68:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question68(),
            ));
        break;
      case 69:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question69(),
            ));
        break;
      case 70:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question70(),
            ));
        break;
      case 73:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question73(),
            ));
        break;
      case 74:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question74(),
            ));
        break;
      case 76:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question76(),
            ));
        break;
      case 77:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question77(),
            ));
        break;
      case 78:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Question78(),
            ));
        break;
    }
  }
}
