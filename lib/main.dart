import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatefulWidget {

  @override
  _ContactAppState createState() => _ContactAppState();
}

class _ContactAppState extends State<ContactApp> {
  var _name;

  var _email;

  var _phone;

  final nameCon = new TextEditingController();

  final emailCon = new TextEditingController();

  final phoneCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            'HNG Task 2',
            textDirection: TextDirection.ltr,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Text(
                      'Interns are the future',
                      style: TextStyle(
                        fontSize: 35,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Image.asset(
                        'assets/HNG Logo.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/I4G Logo.png',
                        width: 100,
                        height: 100,
                      ),
                      Image.asset(
                        'assets/Zuri Logo.png',
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: Container(
                  child: Text('https://internship.zuri.team/',
                    style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.bold,
                    ),),
                )),
                Expanded(
                    child: Container(
                      child: Text('Ilo Chidiebere Annabel',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),

                    )),
                TextField(
                  controller: nameCon,
                  decoration: InputDecoration(
                    hintText: 'Your name',
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.lightGreen,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: emailCon,
                  decoration: InputDecoration(
                    hintText: 'Your email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.lightGreen,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: phoneCon,
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    labelText: 'Phone',
                    labelStyle: TextStyle(
                      color: Colors.lightGreen,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _name = nameCon.text;
                      _email = emailCon.text;
                      _phone = phoneCon.text;
                    });
                  },
                  child: Text('Submit'),
                ),
                Text('Name:  $_name'),
                Text('Email:  $_email'),
                Text('Phone:  $_phone'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

