import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vcmapp/screens/signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.blue])),
        // padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            pageSnapping: true,
            children: <Widget>[
              PayWithCard(),
              GrowYourFunds(),
              PayAnywhereAnytime(),
            ],
          ),
        ),
      ),
    );
  }
}

class PayWithCard extends StatelessWidget {
  PayWithCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 240.0, bottom: 50.0),
            child: Column(
              children: [
                Container(
                    child: Image(
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/surface.png',
                  ),
                )),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Text(
                        'Pay with card',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 30, right: 30),
                      child: Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
                Container(
                  width: 50.0,
                  padding: EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("onTap");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PayWithCard()),
                          );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GrowYourFunds()),
                            );
                          },
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GrowYourFunds()),
                          );
                        },
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GrowYourFunds extends StatelessWidget {
  const GrowYourFunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 240.0, bottom: 50.0),
            child: Column(
              children: [
                Container(
                    child: Image(
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/bank.png',
                  ),
                )),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Text(
                        'Grow your funds',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 30, right: 30),
                      child: Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo',
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )),
                Container(
                  width: 50.0,
                  padding: EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("onTap");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PayWithCard()),
                          );
                        },
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GrowYourFunds()),
                          );
                        },
                        child: Container(
                          width: 15.0,
                          height: 15.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PayAnywhereAnytime extends StatelessWidget {
  const PayAnywhereAnytime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 240.0, bottom: 50.0),
            child: Column(
              children: [
                Container(
                    child: Image(
                  width: 250,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/atm.png',
                  ),
                )),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: Text(
                          'Pay anywhere, anytime',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 30, right: 30),
                        child: Text(
                          'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo',
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 20.0, right: 22.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Get Started");
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
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.normal,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF2994FF),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
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
          )
        ],
      ),
    );
  }
}
