import 'package:flutter/material.dart';
import 'package:loginui/customwidget/customtextfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Colors.blue[600], Colors.indigo[900]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 180,),
               Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Create Account',
                  style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
              CustomTextField(
                hint: '    Full name',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Email',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Phone',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: '    Password',
                issecured: true,
              ),
              // new Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     new Radio(
              //       value: 0,
              //       //groupValue: _userType, (entrepreneur or investor)
              //       //onChanged: handle event here
              //     ),
              //     new Text('Entrepreneur',
              //     style: GoogleFonts.poppins(
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 35),
              //     ),
              //     new Radio(
              //       value: 0,
              //       //groupValue: _userType, (entrepreneur or investor)
              //       //onChanged: handle event here
              //     ),
              //     new Text('Entrepreneur',
              //     style: GoogleFonts.poppins(
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 35),
              //     ),
              //   ]
              // ),
              SizedBox(
                height: 25,
              ),  Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Create',
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
