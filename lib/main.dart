import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            'HNG Task 2',
            textDirection: TextDirection.ltr,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child:Container(
              height: 600,
              width: 2000,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: const Text(
                          'Interns are the future',
                          style: TextStyle(
                            fontSize: 35,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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

                           const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap:()=>_launchURL('https://internship.zuri.team/'),
                                  child: Container(
                                    child: Text('HNG INTERNSHIP',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.lightGreen,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ),
                                const SizedBox(width: 40,),
                                InkWell(
                                  onTap: ()=>_launchURL('https://zuri.team/'),
                                  child: Container(
                                    child: Text('ZURI TEAM',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.lightGreen,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text('Ilo Chidiebere Annabel',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),

                            ),
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


                            const SizedBox(
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
                            const SizedBox(
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
                            const SizedBox(
                              height: 10,
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
                            Text(_name !=null ? 'Name:  $_name' : 'No Name'),
                            Text(_email !=null ?'Email:  $_email' : 'No Email'),
                            Text(_phone != null ? 'Phone:  $_phone' : 'No Phone Number'),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _launchURL(url) async {
    await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';
  }
}

