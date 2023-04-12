import 'package:flutter/material.dart';
import 'package:grad/doctors.dart';
class Sea extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return SeaState ();

  }
}

class  SeaState extends State<Sea> {
  var selectedindex =2;
  int favorite=0;
  List data =[
    {
  "name": "Dr. Shamse Ali",
 "reviews":"reviews",
  "star": 0,
  "sub":"Inner specialty  -  fifth settlement hospital",
  "favorite":0,
  "image": "images/1.jpg",
    },
    {
      "name": "Dr. Abdelrahman Mahmoude ",
      "reviews":"reviews",
      "star": 0,
      "sub": "Ear ans nose specialty - Minia hospital",
      "favorite":0,
      "image": "images/2.jpg",
    },
    {
    "name": "Dr. Nage Abdelsatar ",
    "reviews":"reviews",
    "star": 0,
    "sub": "Orthopedic specialty      -  Alex hospital",
    "favorite":0,
    "image": "images/3.jpg"
    },
    {
    "name": "Dr. Khadiga Shaban ",
    "reviews":"reviews",
    "star": 0,
    "sub": " Specializing in Obstetrics and Gynecology -  Minia hospital",
    "favorite":0,
    "image": "images/4.jpg"
    },
    {
    "name": "Dr. Mostafa Talat ",
    "reviews":"reviews",
    "star": 0,
    "sub": "Eye specialty  - Fayum hospital",
    "favorite":0,
      "image": "images/5.jpg"

    },
    {
    "name": "Dr. Radwa Sihab ",
    "reviews":"reviews",
    "star": 0,
    "sub": "Urology specialty  - Zagazig hospital",
    "favorite":0,
      "image": "images/6.jpg"

    },
    {
    "name": "Dr. Rofida mohamed ",
    "reviews":"reviews",
    "star": 0,
    "sub": " Specializing in general and Plastic Surgery   - Minia hospital",
    "favorite":0,
      "image": "images/7.jpg"

    },
   {
   "name": "Dr. Ahlam Eid ",
   "reviews":"reviews",
   "star": 0,
   "sub": "Dental specialty  - New Cairo hospital",
   "favorite":0,
     "image": "images/8.jpg"

   }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(" Search         ", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),

        bottom: PreferredSize(
          preferredSize:Size(4,60),
          child:  Column(
              children: [Container(
                height: 50,
                width: 375,
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  onFieldSubmitted: (covariant){
                    setState(() {
                    });
                    
                  },
                  cursorColor: Colors.cyan,
                  decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      prefixText: "Dr.",
                      focusColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),borderSide: BorderSide(width: 20,color: Colors.black),gapPadding: BorderSide.strokeAlignCenter.ceilToDouble(),),
                      prefixIcon:  Icon(Icons.search),
                      suffixIcon: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
                        children: [Icon(Icons.tune),Text("   ") ,Icon(Icons.keyboard_voice),Text("  ")],),)
                  ),
                ),),



              ] )
          ,),

        ),
      body:  Container(color:Colors.indigo[50],
        child: ListView.builder(
           itemCount:data.length ,
          itemBuilder: (context,i){
             return ListData(data: data[i],);

          }),
      ),

      
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        currentIndex: selectedindex,
        selectedIconTheme: IconThemeData(color: Colors.blue),

        backgroundColor: Colors.white,
        onTap: (index){
          setState(() {
            selectedindex=index;
          });

        },

        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home),),
          BottomNavigationBarItem(label: "Dashboard", icon: Icon(Icons.dashboard),),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search),),
          BottomNavigationBarItem(label: "Person",
            icon: Icon(Icons.person),)
        ],),



    );

  }}
class ListData extends StatelessWidget{
  final data ;
  ListData({this.data});
  @override
  Widget build(BuildContext context){
    return Card(
        child: Row(children: [

          ColoredBox(color:Colors.white),
      Expanded(
        child: Image.asset("${data['image']}",width: 500,height:100),
        flex: 1,
      ),
      Expanded( flex: 3,
        child: Column(
            children: [ListTile(title: Text("${data['name']}"),
              trailing:Icon(Icons.favorite_border,color: Colors.blue,) ,
              subtitle:Row(children: [Icon(Icons.star_half_outlined,color: Colors.blue,), Text("${data['reviews']}"),],)
        ),
            Text("${data['sub']}",)],
        
        ),

      )])

    );
  }

}
