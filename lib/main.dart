import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  //Tushar here you add the code for what you want to be dislayed when these are clicked
  final tabs = [
    Center(child: Text('home'),),
    Center(child: Text('home2'),),
    Center(child: Text('home3'),),
    Center(child: Text('home4'),),
    Center(child: Text('home5'),),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBAr'),
      ),
      body:  tabs[_currentIndex],


     bottomNavigationBar: BottomNavigationBar(

       currentIndex: _currentIndex,
       items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("home"),
          backgroundColor: Colors.blue

        ),
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("home2"),
             backgroundColor: Colors.blue

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("home"),
             backgroundColor: Colors.blue

         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.home),



             title: Text("home"),
             backgroundColor: Colors.green

         ),


         BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("home"),
             backgroundColor: Colors.green

         )
       ],

       onTap: (index){
         setState(() {
           _currentIndex = index;

           if(index == 1) {
    } else if( index ==2){

    } else if(index ==3) {

    } else if(index == 4) {

    }
         });
       },



     ),




     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
