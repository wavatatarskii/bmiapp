import 'package:bmiapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(

      ),
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});



  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: kBack,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("BODYMASS-INDEX-CALCULATOR",style: kBodyTextStyle,),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child:
            Row(children: <Widget>[
              Expanded
                (child:
              ReusableCard(
                color: kInactiveCardColour,
                onTap: ,
                child: Column(children: const <Widget>[
                  Icon(FontAwesomeIcons.mars, size: 60,),
                  Text(
                      "MALE",
                      style:kBodyTextStyle,
                  ),
                ],

                ),
              )
              ),
              Expanded(child: ReusableCard(color: kInactiveCardColour,

              )),
            ],
            ),
          ),
          Expanded(
            child:
            Row(children: <Widget>[
              Expanded(child: ReusableCard()),
            ],
            ),
          ),
          Expanded(
            child:
            Row(children: <Widget>[
              Expanded(child: ReusableCard()),
              Expanded(child: ReusableCard())
            ],
            ),
          ),

        ],
      )
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function(Object?) onTap;
  ReusableCard({
     super.key,   this.color,    this.child,  this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          
        ),
        child:child,
      ),
    );
  }
}
