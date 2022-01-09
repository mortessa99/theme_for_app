import 'package:flutter/material.dart';
import 'package:day_night_switcher/day_night_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkModeEnabled = false ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Color(0xff253341)),
          scaffoldBackgroundColor: Color(0xff25202b)
      ),
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,


      home: Scaffold(
        appBar: AppBar(title: Text('Day Night Theme'),),
        body: DayNightSwitcher(isDarkModeEnabled: isDarkModeEnabled, onStateChanged:(bool isDarkModeEnabled){
          setState(() {
            this.isDarkModeEnabled=isDarkModeEnabled;
          });
        })
      ),
    );
  }
}
