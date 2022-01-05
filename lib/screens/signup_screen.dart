import 'package:flutter/material.dart';
import 'package:vcmapp/screens/main_home_creen.dart';
import 'package:vcmapp/utils/validate.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passVisiblitiy = true;
  bool passVisiblitiy2 = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _currency = TextEditingController();
  String _dropdownValue = '';
  bool checkValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text('Create an account',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 10.0),
                      child: Text('Create an account to continue',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14.0)),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(31.0, 28.0, 33.0, 0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 15),
                                child: Text(
                                  "Email",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextFormField(
                                autocorrect: true,
                                controller: _email,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  hintText: "Topebanlosin@gmail.com",
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 16.0, right: 16.0),
                                ),
                                validator: (value) => validateEmailField(value),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 15.0),
                                child: Text(
                                  "Password",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextFormField(
                                controller: _password,
                                obscureText: passVisiblitiy,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  hintText: "Password",
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        passVisiblitiy = !passVisiblitiy;
                                      });
                                    },
                                    child: passVisiblitiy
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 16.0, right: 16.0),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                validator: (value) =>
                                    validatePasswordField(value),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 15.0),
                                child: Text(
                                  "Confirm Password",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              TextFormField(
                                controller: _confirmPassword,
                                obscureText: passVisiblitiy2,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  hintText: "Enter Password",
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        passVisiblitiy2 = !passVisiblitiy2;
                                      });
                                    },
                                    child: passVisiblitiy2
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  contentPadding:
                                      EdgeInsets.only(left: 16.0, right: 16.0),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                validator: (value) =>
                                    validateConfirmPasswordField(value),
                              )
                            ],
                          ),
                        ),
                        Container(
                            child: Column(
                          children: [],
                        )),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 15.0),
                                child: Text(
                                  "Select currency",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                height: 57.0,
                                child: DropdownButtonFormField<String>(
                                  alignment: AlignmentDirectional.topCenter,
                                  isDense: true,
                                  isExpanded: false,
                                  itemHeight: 50.0,
                                  iconSize: 20.0,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  items: [
                                    'United States Dollar (USD)',
                                    'United Kingdom (GBP)'
                                  ]
                                      .map((e) => DropdownMenuItem(
                                            child: Text(e.toString()),
                                            value: e,
                                          ))
                                      .toList(),
                                  hint: Text('United States Dollar (USD)'),
                                  onChanged: (String? value) {
                                    setState(() =>
                                        _dropdownValue = value.toString());
                                    print(value.toString());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                value: checkValue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (checkValue == true) {
                                      checkValue = false;
                                    } else {
                                      checkValue = true;
                                    }
                                  });
                                  print(value.toString());
                                },
                              ), //C
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 15.0),
                                child: Text(
                                  "I accept these terms and conditions",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 22.0),
                          child: ElevatedButton(
                            onPressed: () {
                              print("Create Account");
                              // if (_formKey.currentState!.validate()) {
                              //   Auth().attemptSignUp(
                              //     _email.text,
                              //     _password.text,
                              //     _fullName.text,
                              //     _confirmPassword.text,
                              //   );

                              //   print(_email.text);
                              //   print(_fullName.text);
                              //   print(_password.text);
                              //   print(_confirmPassword.text);
                              // }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainHomeScreen()),
                              );
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontStyle: FontStyle.normal,
                                fontFamily: "Manrope",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0XFF2994FF),

                                // primary: Color.fromRGBO(60, 112, 228, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0)),
                                padding: EdgeInsets.symmetric(
                                  vertical: 14.5,
                                ),
                                elevation: 0.0),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
