import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XAM First Route'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Open route'),
              onPressed: () {
                // Navigate to second route when tapped.
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),*/
                Get.to(SecondRoute());
              },
            ),
            RaisedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                Get.snackbar("Hello", "I'm Nag from XAM",
                    snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.black,
                colorText: Colors.white,);
              },
            ),
            RaisedButton(
              child: Text('Show DialogBox'),
              onPressed: () {
                Get.defaultDialog(
                  title: "XAM",
                content: Text("One of the best places to work"),);
              },
            ),
            RaisedButton(
              child: Text('Show BottomSheet'),
              onPressed: () {
                Get.bottomSheet(Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("I'm Nagaraj Alagusundaram and you can call me Nag",style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Working at XAM, Sydney",style: TextStyle(fontSize: 30),),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XAM Second Route"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Get.to(ThirdRoute());
              },
              child: Text('Go to Third!'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("XAM Third Route"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Get.off(FirstRoute());
              },
              child: Text('Go to First!'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Go to Second!'),
            ),
          ],
        ),
      ),
    );
  }
}
