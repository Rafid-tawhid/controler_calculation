import 'package:food_delivery_app/constants/app_constants.dart';
import 'left_bar.dart';
import 'right_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightControler=TextEditingController();
  TextEditingController _weightControler=TextEditingController();
  double _bmi=0;
  String _res="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

          "BMI Calculator",
          style: TextStyle(color: acchex, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainhex,
      body: Column(

        children: [
          SizedBox(
            height: 20,

          ),
         Column(
           children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _heightControler,
                  decoration: InputDecoration(
                    hintText: 'Height',
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 24,color: Colors.white),

                  ),

                  keyboardType: TextInputType.number,
                ),
              ),
            ),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                   controller: _weightControler,
                   decoration: InputDecoration(
                     hintText: 'Width',
                     border: InputBorder.none,
                     hintStyle: TextStyle(fontSize: 24,color: Colors.white),

                   ),

                   keyboardType: TextInputType.number,
                 ),
               ),
             ),
             SizedBox(height: 30,),
             GestureDetector(
               onTap: (){
                 double h=double.parse(_heightControler.text);
                 double w=double.parse(_weightControler.text);

                 setState(() {
                   _bmi=w/(h*h);
                   if(_bmi>25)
                   {
                     _res="Over Weight";
                   }
                   if(_bmi<25 && _bmi>18)
                   {
                     _res="Normal Weight";
                   }
                   if(_bmi<18)
                   {_res="Under Weight";}
                 });

               },
               child: Container(

                 child: Text("Calculate",style: TextStyle(fontSize: 22,color: acchex,fontWeight: FontWeight.w300),),
               ),
             ),
             SizedBox(height: 20,),
             Container(

               child: Text("80",style: TextStyle(fontSize: 62,color: acchex,fontWeight: FontWeight.w700),),
             ),
             SizedBox(height: 25,),
             Container(

               child: Text(_res,style: TextStyle(fontSize: 22,color: acchex,fontWeight: FontWeight.w300),),
             ),
             RightBar(30),
             SizedBox(height: 8,),
             RightBar(45),
             SizedBox(height: 8,),
             RightBar(60),

           ],
         )

        ],
      ),
    );
  }
}
