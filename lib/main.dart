import 'package:flutter/material.dart';


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      body: ListView(

        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Positioned(
                      bottom: -20,
                        child: CircleAvatar(radius: 25,backgroundColor: Colors.blueAccent,))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("Chat")),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("Profile")),

        ],



      ),
    );
  }
}



