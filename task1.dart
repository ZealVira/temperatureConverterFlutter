import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temperature',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

String ans = '';
String textValue = '';
double result = 0;
double degree = 0;
String valueIn = 'Celcius';
String convertTo = 'Fahrenheit';
String? res;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Temperature Converter')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Expanded(
                  child: Text('Temperature: ',
                      style: const TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child:
                        //width:15,
                        SizedBox(
                            width: 100,
                            child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1))),
                                enabled: true,
                                onChanged: (text) {
                                  setState(() {
                                    textValue = text;
                                  });
                                }))),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: DropdownButton(
                      value: valueIn,
                      items: <String>['Celcius', 'Fahrenheit']
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: const TextStyle(fontSize: 19)),
                          );
                        },
                      ).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          valueIn = newValue!;
                        });
                      }),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child:
                      Text('Covert To: ', style: const TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 45),
                Expanded(
                  child: DropdownButton(
                      value: convertTo,
                      items: <String>['Fahrenheit', 'Celcius']
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,
                                style: const TextStyle(fontSize: 19)),
                          );
                        },
                      ).toList(),
                      onChanged: (String? newValue2) {
                        setState(() {
                          convertTo = newValue2!;
                        });
                      }),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 0, 42, 0),
              child: ElevatedButton(
                child: Text('Convert'),
                onPressed: calculate,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('$ans'),
            Text('$textValue'),
          ]),
        ));
  }
}

void calculate() {
  //setState() {
  //print('2');
  degree = double.tryParse(textValue) ?? 0;
  if (valueIn == 'Celcius' && convertTo == 'Fahrenheit') {
    setState() {}
    result = (degree * (9 / 5)) + 32;
    ans = '$result  °F';
    print('$ans');

    //Text('$ans');
  } else if (valueIn == 'Fahrenheit' && convertTo == 'Celcius') {
    setState() {}
    result = (degree - 32) * (5 / 9);
    ans = '$result  °C';
    print('$ans');
    // Text('$ans');
  } else if (valueIn == 'Fahrenheit' && convertTo == 'Fahrenheit') {
    setState() {}
    ans = '$textValue';
    print('$ans');
  } else {
    setState() {}
    res = '123';
    //print('123456');
  }
  //}
}
