import 'package:flutter/material.dart';
import 'package:food_delivery_app/page1.dart';
import 'package:food_delivery_app/page2.dart';

import 'page3.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Apps",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,

        ),
      home: HomePage(),


    );
  }
}
class HomePage extends StatefulWidget {





  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var _current=0;
  final pages=[Page1(),Page2(),Page3()];
  PageController _pageController=PageController(
    initialPage: 0,


  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_current],

      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.red,
        elevation: 1,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),

        ],

      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Heading"),decoration: BoxDecoration(color: Colors.red),),
            ListTile(title: Text("Rafid"),onTap: (){},),
            ListTile(title: Text("Tawhid"),onTap: (){},),

          ],

        ),

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),backgroundColor: Colors.red,),



      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _current,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("Chat")),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Profile")),

        ],
        onTap: (index){
          setState(() {

            _current=index;
          });
        },



      ),

    );
  }
}



