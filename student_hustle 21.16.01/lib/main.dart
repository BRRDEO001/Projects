import 'dart:core';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The Student Hustle',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Report An Issue
class Report extends StatelessWidget {
  const Report ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Report An Issue',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer: _buildDrawer(context),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 30),
            child: Text(
              'Complete this form to report an issue, or contact us via studentthehustle@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          /* Form Labels */
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Your full name'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Email address'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Contact number'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Details'),
                      ),

                    ],
                  ),
                ),

                /* TextFields for form*/
                Container(
                  padding: const EdgeInsets.only(left:30),
                  width: 250,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children:  [
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'John Snow',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'johnsnow@funny.com',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '0211234567',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7, bottom: 7),
                        child:  TextFormField(
                          minLines: 1,
                          maxLines: 30,
                          keyboardType: TextInputType.multiline,
                          decoration: const InputDecoration(
                            hintText: 'description',
                            hintStyle: TextStyle(
                                color: Colors.grey
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.zero),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 7,left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

//Privacy Policy - TBC
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }
}

//ToU - TBC
class Terms extends StatelessWidget {
  const Terms ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Terms of Use',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }
}

//Settings - TBC
class Settings extends StatelessWidget {
  const Settings ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }
}

//Opportunities/In Demand
class Opportunities extends StatelessWidget {
  const Opportunities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'In Demand',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer:_buildDrawer(context),
      body: ListView(
        children:  [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                'This is a list of searches that returned no results, but a demand exists. See below what you can turn into your new business today!'),
          ),
          const SizedBox(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Search for a specific product or service',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Website',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '56 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Laptop Repair',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '34 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Graduation Gown',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '23 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Barber',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '12 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Brownies',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '9 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'iPhones',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '7 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Surfing',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '5 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Tekkie Cleaner',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '3 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Paint Lessons',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '2 Searches',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Register Service/Pro.duct
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Registration',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer:_buildDrawer(context),
      body: Center (
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 30, top: 30),
            child: Text(
              'Register a service or product with TSH',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 18),
            child: Text('See at the bottom of the page the layout.',
                textAlign: TextAlign.center),
          ),
          /* Form Labels */
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Product or Service?'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Name'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Description'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Cost'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Contact Details'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Availability'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text('Poster'),
                      ),
                    ],
                  ),
                ),

                /* TextFields for form*/
                Container(
                  width: 250,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      /* Product/Service Selection */
                      Row(
                        children: [
                          Radio(
                            value: 'Product',
                            groupValue: 'Product',
                            onChanged: (String? value) {
                              value = value;
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text('Product'),
                          ),
                          Radio(
                            toggleable: true,
                            value: 'Service',
                            groupValue: 'Service',
                            onChanged: (String? value) {},
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 18),
                            child: Text('Service'),
                          ),
                        ],
                      ),

                      /*
                      Container(
                        width: 250,
                        child: DropdownButton<String>(
                          items:
                              <String>['Product', 'Service'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: 'Select Business Type',
                              child: Text(value),

                            );
                          }).toList(),
                          onChanged: (_) {

                          },
                        ),
                      ),*/

                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ' Stats & Com Sci Tutor',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'STA1000S, STA2007F, CSC1015F',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'R100/hour',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'studentthehustle@gmail.com',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Monday - Friday',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 7),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Upload Image'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Please select all categories under which your product or service falls',
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Health'),
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Wellness'),
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Beauty'),
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Tech'),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Education'),
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Fitness'),
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Creative'),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 20),
                child: FlatButton(
                  onPressed: () {},
                  child: const Text('Education'),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Example of information display:',
              textAlign: TextAlign.center,
            ),
          ),
          Card(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.asset(
                      'assets/images/tutor1.png',
                      fit: BoxFit.fill,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Stats & Com Sci Tutor',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      ' STA1000S, STA2007F, CSC1O15F \n Rate: R100/hour \n studentthehustle@gmail.com \n Monday - Friday',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            elevation: 5,
          ),
        ],
      ),
      ),
    );
  }
}

//Favourites Page
class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Favourites',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
              child: Text(
                'Your Favourite Products and Services',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ), // Title
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/tutor1.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Stats & Com Sci Tutor',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' STA1000S, STA2007F, CSC1O15F \n Rate: R100/hour \n Monday - Friday',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/poster1.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Learn To Swim',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' Swimming Lessons For Students\n Rate: R120/hour \n Monday - Friday',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/poster2.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Liceria Jewlery',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Liceria Bracelets For Sale \n Cost: R100 - R400',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/poster3.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Fitness Bootcamp',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' Physical Health = Mental Health,\n join NOW!\n Rate: R200/day \n Monday - Sunday',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/poster4.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Dance Lessons',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Let\'s get groovy!! \n Rate: R200/day \n Monday - Thursday',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
            Card(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/poster5.png',
                        fit: BoxFit.fill,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        'Conti\'s Car Wash',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Studies leaving you no time \n to clean your car? \n Don\'t stress! I will do it for you, \n at your home! \n Cost: R75 \n Open Monday - Sunday',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              elevation: 5,
            ),
          ],
        ),
      ),
    );
  }
}

// Events Page
class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Events',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      /* posters */
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
            child: DropdownButton(
              hint: const Text('Sort by'),
              items: <String>['Default', 'Entry Fee', 'Date Posted']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event2.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event3.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event5.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Card(
            elevation: 7,
            child: SizedBox(
              height: 500,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  'assets/images/event6.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: _buildDrawer(context),
    );
  }
}

//Home Page
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'The Student Hustle',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[900],
        actions: <Widget>[
          // home button
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          _buildPopUpMenu(context),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          /* Search Bar */
          const SizedBox(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                  ),
                  hintText: 'Search for something',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          DefaultTabController(
            length: 7,
            /* Categories tab bar */
            child: Container(
              height: 35,
              color: Colors.blueAccent[100],
              child: const TabBar(
                isScrollable: true,
                tabs: [
                  /** Make these categories */
                  Tab(
                      child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  Tab(
                      child: Text(
                    "Education",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  Tab(
                      child: Text(
                    "Fitness & Health",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  Tab(
                      child: Text(
                    "Beauty",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                  Tab(
                    child: Text(
                      "Creative",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Entertainment",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Tech",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* Popular Services & Products */
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
            child: Text(
              'Popular Services and Products',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Text(
              'Click to view offers',
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/tutoring.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Tutoring',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/braids.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Braids',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/nails.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Nails',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/photography.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Photography',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/cake.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Cakes',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/dj.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'DJ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
              ],
            ),
          ),

          /* Advertised Events*/
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
            child: Text(
              'Events (Ad)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'La Musique Festivale',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Winter Market',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event2.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'All You Can Pizza',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event3.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Jazz All Night',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event5.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Music Festival',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, right: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/event6.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Thanks Giving Soup Kitchen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
              ],
            ),
          ),

          /* Top Picks */
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Row(
              children: <Widget>[
                Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 2, bottom: 20),
                          child: Image.asset(
                            'assets/images/tutor1.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Text(
                            'Stats & Com Sci Tutor',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'STA1000S, STA2007F, CSC1O15F \n  Rate: R100/hour \n Monday - Friday',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 5,
                ),
              ],
            ),
          ),
        ],
      ),
      /* Drawer */
      drawer: _buildDrawer(context),
    );
  }
}

//create drawer
Widget _buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue[900],
          ),
          child: Stack(
            children: const <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tsh.png'),
                  radius: 50,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(1),
                  child: Text(
                    'Deony Barrington',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('X',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ),
        /* Define drawer items */
        ListTile(title: const Text('Home'), onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }),
        ListTile(title: const Text('Events'), onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Events()),
          );
        }),
        ListTile(title: const Text('Favourites'), onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Favourites()),
          );
        }),
        ListTile(
            title: const Text('Register Service/Product'), onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Register()),
          );
        }),

        ListTile(title: const Text('In Demand'), onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Opportunities()),
          );
        }),
      ],
    ),
  );
}

Widget _buildPopUpMenu(BuildContext context){
  return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
          child: Text(
            "Settings",
            style: TextStyle(color: Colors.black),
          ),
        ),
        const PopupMenuItem<int>(
          child: Text(
            "Terms of use",
            style: TextStyle(color: Colors.black),
          ),
        ),
        const PopupMenuItem<int>(
          child: Text(
            "Privacy Policy",
            style: TextStyle(color: Colors.black),
          ),
        ),
        const PopupMenuItem<int>(
          child: Text(
            'TSH Website',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const PopupMenuItem<int>(
          child: Text(
            'Report An Issue',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ] //item builder
  );
}

