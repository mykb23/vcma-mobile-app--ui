import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to my cards'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0.0, left: 34.0, right: 32.0),
                child: Stack(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "My Cards",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50.0,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100)),
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.trash),
                                iconSize: 15.0,
                                color: Colors.white,
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
                      margin: EdgeInsets.only(top: 55.0),
                      child: Text(
                        "Sed ut perspiciatis unde omnis iste natus error sit",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontStyle: FontStyle.normal,
                            color: Color(0XFF525252)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin:
                      EdgeInsets.only(left: 34.0, right: 32.0, bottom: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print("object");
                        },
                        child: Stack(children: <Widget>[
                          Container(
                            width: 340.0,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 32.0,
                                    top: 10.0,
                                    right: 30.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '150 000 ',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: ' UAH',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.white))
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: FaIcon(
                                                FontAwesomeIcons.pencilAlt),
                                            iconSize: 15.0,
                                            color: Color(0XFF979797)
                                                .withOpacity(0.4),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25.0),
                                      Text(
                                        "2132 8732 2347 3478",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            letterSpacing: 5,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 20.0),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '07/20',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color(0XFF919191),
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(FontAwesomeIcons
                                                  .ccMastercard),
                                              iconSize: 25.0,
                                              color: Color(0XFF979797)
                                                  .withOpacity(0.4),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("object");
                        },
                        child: Stack(children: <Widget>[
                          Container(
                            width: 340.0,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 32.0,
                                    top: 10.0,
                                    right: 30.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '12 180 ',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: ' USD',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.white))
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: FaIcon(
                                                FontAwesomeIcons.pencilAlt),
                                            iconSize: 15.0,
                                            color: Color(0XFF979797)
                                                .withOpacity(0.4),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25.0),
                                      Text(
                                        "8346 5248 6232 7813",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            letterSpacing: 5,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 20.0),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '10/24',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color(0XFF919191),
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                  FontAwesomeIcons.ccVisa),
                                              iconSize: 25.0,
                                              color: Color(0XFF979797)
                                                  .withOpacity(0.4),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("object");
                        },
                        child: Stack(children: <Widget>[
                          Container(
                            width: 340.0,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 32.0,
                                    top: 10.0,
                                    right: 30.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '8 305 ',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: ' EUR',
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.white))
                                              ],
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: FaIcon(
                                                FontAwesomeIcons.pencilAlt),
                                            iconSize: 15.0,
                                            color: Color(0XFF979797)
                                                .withOpacity(0.4),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 25.0),
                                      Text(
                                        "5438 2343 0474 7324",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            letterSpacing: 5,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white),
                                      ),
                                      SizedBox(height: 20.0),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '14/28',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Color(0XFF919191),
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                  FontAwesomeIcons.ccAmazonPay),
                                              iconSize: 25.0,
                                              color: Color(0XFF979797)
                                                  .withOpacity(0.4),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 41.0,
                                    bottom: 24,
                                    left: 270.0,
                                  ),
                                  // child:
                                  //     CircularPercentIndicator(
                                  //   radius: 64.0,
                                  //   percent: .45,
                                  //   progressColor:
                                  //       Color.fromRGBO(
                                  //           0, 116, 229, 1),
                                  //   center: Text(
                                  //     "45%",
                                  //     style: TextStyle(
                                  //       fontFamily: "Manrope",
                                  //       fontWeight:
                                  //           FontWeight.w800,
                                  //       fontSize: 16.0,
                                  //       fontStyle:
                                  //           FontStyle.normal,
                                  //       color: Colors.white,
                                  //     ),
                                  //   ),
                                  // ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 34.0,
                        right: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Transaction history',
                                style: TextStyle(fontSize: 14.0),
                              ),
                              DropdownButton(
                                isDense: true,
                                isExpanded: false,
                                underline: Container(),
                                items: ['All categories', 'Transcation']
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e.toString()),
                                          value: e,
                                        ))
                                    .toList(),
                                hint: Text('All categories'),
                                onChanged: (String? value) {
                                  // setState(() => _dropdownValue = value.toString());
                                  print(value.toString());
                                },
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Divider(),
                          ),
                          Text(
                            'December 31',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFCCCCCC),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/food.png'),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              // Text('data'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('”Food & Drinks” restaurant',
                                      style: TextStyle(fontSize: 12.0)),
                                  Text(
                                    'Cafe and restaurants',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0XFF999999)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '- ',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '480 ',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: 'UAH',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/walmart.png'),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              // Text('data'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('”Walmart” store (Main Str. 13)',
                                      style: TextStyle(fontSize: 12.0)),
                                  Text(
                                    'Groceries & food',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0XFF999999)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '- ',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '80 ',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                    TextSpan(
                                      text: 'USD',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: 30.0,
                                height: 30.0,
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/useravatar.png'),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              // Text('data'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Transfer from ',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' Alexey',
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Color(0Xff39B54A),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Transactions',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color(0XFF999999)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 90.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '6000',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0Xff39B54A),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' USD',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 34.0,
                        right: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Info',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Divider(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'CARD NAME:',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                'Chris Jombo',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'CARD NO:',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                '4685885266465242',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'CVV:',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                '133',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'ZIPCODE:',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                '23401',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'ADDRESS:',
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                              Text(
                                '19, Olubunmi Rotimi, Lekki, Lagos',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(0, 116, 229, 1),
        unselectedItemColor: Color.fromRGBO(8, 26, 43, 1),
        selectedLabelStyle: TextStyle(fontSize: 10.0),
        unselectedLabelStyle: TextStyle(fontSize: 10.0),
        // currentIndex: _selectedIndex,
        // onTap: _onTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.creditCard),
            label: "My Cards",
          ),
        ],
      ),
    );
  }
}
