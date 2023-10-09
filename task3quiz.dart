import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => HomePage(),
        '/Que1': (context) => First(),
        '/Que2': (context) => Second(),
        '/Que3': (context) => Third(),
        '/Que4': (context) => Fourth(),
        '/Que5': (context) => Fifth(),
        '/Result': (context) => Result(),
        '/Final': (context) => Final(),
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class First extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Second extends StatefulWidget {
  @override
  SecondQueState createState() => SecondQueState();
}

class Third extends StatefulWidget {
  @override
  ThirdQue createState() => ThirdQue();
}

class Fourth extends StatefulWidget {
  @override
  FourthQue createState() => FourthQue();
}

class Fifth extends StatefulWidget {
  @override
  FifthQue createState() => FifthQue();
}

class Result extends StatefulWidget {
  @override
  ResultScreen createState() => ResultScreen();
}

int score = 0;
String? ans1;
String? ans2;
String? ans3;
String? ans4;
String? ans5;
bool buttonClicked1 = false;
bool buttonClicked2 = false;
bool buttonClicked3 = false;
bool buttonClicked4 = false;

class _MyHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/003/206/208/non_2x/quiz-time-neon-signs-style-text-free-vector.jpg',
            ),
            Text(
              'Ready for quiz?',
              style: const TextStyle(fontSize: 30),
            ),
            SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Que1');
                },
                child: Text('START'))
          ]),
        ));
  }
}

class _MyHomePageState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Q1) What is the chemical formula of Sulfuric acid?',
                style: const TextStyle(fontSize: 25)),

            Divider(),

            RadioListTile(
                title: Text(
                  "HCl",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'HCl',
                groupValue: ans1,
                onChanged: (value) {
                  setState(() {
                    ans1 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  "H2SO4",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'H2SO4',
                groupValue: ans1,
                onChanged: (value) {
                  setState(() {
                    ans1 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  'Na2SO4',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Na2SO4',
                groupValue: ans1,
                onChanged: (value) {
                  setState(() {
                    ans1 = value.toString();
                  });
                }),

            SizedBox(height: 25),

            // Initialize a flag to track whether the button has been clicked.

            ElevatedButton(
              onPressed: () {
                if (!buttonClicked1 && ans1 == "H2SO4") {
                  setState(() {
                    score = score + 1;
                    buttonClicked1 =
                        true; // Set the flag to true when the button is clicked.
                  });
                }
                Navigator.pushNamed(context, '/Que2');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonClicked1
                    ? Colors.lightBlue
                    : Colors.purple, // Change color based on the flag.
              ),
              child: Text("Submit", style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ans1 = '';
          Navigator.pushNamed(context, '/Que2');
        },
        child: Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}

class SecondQueState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        //child: _widgetOptions.elementAt(myindex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Q2) Which one of the following is not an element of Noble gases?',
                style: const TextStyle(fontSize: 25)),
            Divider(),
            RadioListTile(
                title: Text(
                  "Hydrogen",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Hydrogen',
                groupValue: ans2,
                onChanged: (value) {
                  setState(() {
                    ans2 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  "Helium",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Helium',
                groupValue: ans2,
                onChanged: (value) {
                  setState(() {
                    ans2 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  'Xenon',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Xenon',
                groupValue: ans2,
                onChanged: (value) {
                  setState(() {
                    ans2 = value.toString();
                  });
                }),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (!buttonClicked2 && ans2 == "Hydrogen") {
                  setState(() {
                    score = score + 1;
                    buttonClicked2 =
                        true; // Set the flag to true when the button is clicked.
                  });
                }
                Navigator.pushNamed(context, '/Que3');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonClicked2
                    ? Colors.lightBlue
                    : Colors.purple, // Change color based on the flag.
              ),
              child: Text("Submit", style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 8.0,
            child: FloatingActionButton(
              onPressed: () {
                ans3 = '';
                Navigator.pushNamed(context, '/Que3');
              },
              child: Icon(Icons.arrow_forward_outlined),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 35.0,
            child: FloatingActionButton(
              onPressed: () {
                ans1 = '';
                Navigator.pushNamed(context, '/Que1');
              },
              child: Icon(Icons.arrow_back_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdQue extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        //child: _widgetOptions.elementAt(myindex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'Q3) In Periodic table elements are arranged according to their ______?',
                style: const TextStyle(fontSize: 25)),
            Divider(),
            RadioListTile(
                title: Text(
                  "Mass number",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Mass number',
                groupValue: ans3,
                onChanged: (value) {
                  setState(() {
                    ans3 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  "Atomic number",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Atomic number',
                groupValue: ans3,
                onChanged: (value) {
                  setState(() {
                    ans3 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  'Atomic and Mass number',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Atomic and Mass number',
                groupValue: ans3,
                onChanged: (value) {
                  setState(() {
                    ans3 = value.toString();
                  });
                }),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (!buttonClicked3 && ans3 == "Atomic number") {
                  setState(() {
                    score = score + 1;
                    buttonClicked3 =
                        true; // Set the flag to true when the button is clicked.
                  });
                }
                Navigator.pushNamed(context, '/Que4');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonClicked3
                    ? Colors.lightBlue
                    : Colors.purple, // Change color based on the flag.
              ),
              child: Text("Submit", style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 8.0,
            child: FloatingActionButton(
              onPressed: () {
                ans4 = '';
                Navigator.pushNamed(context, '/Que4');
              },
              child: Icon(Icons.arrow_forward_outlined),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 35.0,
            child: FloatingActionButton(
              onPressed: () {
                ans2 = '';
                Navigator.pushNamed(context, '/Que2');
              },
              child: Icon(Icons.arrow_back_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class FourthQue extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        //child: _widgetOptions.elementAt(myindex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Q4) There are ___ Groups in the Periodic table.',
                style: const TextStyle(fontSize: 25)),
            Divider(),
            RadioListTile(
                title: Text(
                  "18",
                  style: const TextStyle(fontSize: 20),
                ),
                value: '18',
                groupValue: ans4,
                onChanged: (value) {
                  setState(() {
                    ans4 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  "17",
                  style: const TextStyle(fontSize: 20),
                ),
                value: '17',
                groupValue: ans4,
                onChanged: (value) {
                  setState(() {
                    ans4 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  '16',
                  style: const TextStyle(fontSize: 20),
                ),
                value: '16',
                groupValue: ans4,
                onChanged: (value) {
                  setState(() {
                    ans4 = value.toString();
                  });
                }),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (!buttonClicked4 && ans4 == "18") {
                  setState(() {
                    score = score + 1;
                    buttonClicked4 = true;
                  });
                }
                Navigator.pushNamed(context, '/Que5');
              },
              style: ElevatedButton.styleFrom(
                primary: buttonClicked4 ? Colors.lightBlue : Colors.purple,
              ),
              child: Text("Submit", style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16.0,
            right: 8.0,
            child: FloatingActionButton(
              onPressed: () {
                ans5 = '';
                Navigator.pushNamed(context, '/Que5');
              },
              child: Icon(Icons.arrow_forward_outlined),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 35.0,
            child: FloatingActionButton(
              onPressed: () {
                ans3 = '';
                Navigator.pushNamed(context, '/Que3');
              },
              child: Icon(Icons.arrow_back_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

String? result;

class FifthQue extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        //child: _widgetOptions.elementAt(myindex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Q5) What is the core element of this stone ?',
                style: const TextStyle(fontSize: 25)),
            Image.network(
              'https://physics.aps.org/assets/963313f1-2d86-4887-91fe-c6150ad59b12/e40_1_thumb.png',
            ),
            Divider(),
            RadioListTile(
                title: Text(
                  "H",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'H',
                groupValue: ans5,
                onChanged: (value) {
                  setState(() {
                    ans5 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  "Na",
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'Na',
                groupValue: ans5,
                onChanged: (value) {
                  setState(() {
                    ans5 = value.toString();
                  });
                }),
            RadioListTile(
                title: Text(
                  'C',
                  style: const TextStyle(fontSize: 20),
                ),
                value: 'C',
                groupValue: ans5,
                onChanged: (value) {
                  setState(() {
                    ans5 = value.toString();
                  });
                }),
            SizedBox(height: 35),
            ElevatedButton(
                onPressed: () {
                  print("ans1: $ans1");
                  print("ans2: $ans2");
                  print("ans3: $ans3");
                  print("ans4: $ans4");
                  print("ans5: $ans5");

                  if (ans5 == "C") {
                    setState(() {
                      score = score + 1;
                    });
                  }
                  switch (score) {
                    case 1:
                      result = 'Low';
                      break;
                    case 2:
                      result = 'Practice more';
                      break;
                    case 3:
                      result = 'Okay can improve';
                      break;
                    case 4:
                      result = 'Good score';
                      break;
                    case 5:
                      result = 'Perfect';
                      break;
                  }
                  if (score == 2) {
                    result = '';
                  }
                  ans1 = '';
                  ans2 = '';
                  ans3 = '';
                  ans4 = '';
                  ans5 = '';
                  Navigator.pushNamed(context, '/Result');
                },
                child: Text(
                  'RESULT',
                  style: const TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}

class ResultScreen extends State<Result> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Score is $score out of 5",
                  style: const TextStyle(fontSize: 30)),
              SizedBox(height: 10),
              Text('$result', style: const TextStyle(fontSize: 30)),
              SizedBox(
                height: 50,
              ),
              Text('Want to retake the quiz?',
                  style: const TextStyle(fontSize: 30)),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text('YES'),
              ),
              SizedBox(
                height: 15,
                width: 6,
              ),
              ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {
                    Navigator.pushNamed(context, '/Final');
                  },
                  child: Text('NO'))
            ],
          )),
        ));
  }
}

class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Final page'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Text('YOU HAVE COME TO THE END OF QUIZ!!!',
                style: const TextStyle(fontSize: 25))));
  }
}
