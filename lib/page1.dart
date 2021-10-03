import 'package:flutter/material.dart';
import 'package:food_delivery_app/page2.dart';
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Card(
          elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            child: GestureDetector(
              child: Hero(
                tag: "tag",
                child: Icon(Icons.camera,size: 60,color: Colors.red,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
              },
            ),

        )
        ,
      ),
    );
  }
}
