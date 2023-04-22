import 'package:flutter/material.dart';
class Info extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return  InfoState ();

  }
}

class   InfoState extends State< Info> {
  var level =80.0 ;
  var selectedgender ;
  var active;
  var smoke;
  var chro_disease;
  var short_dis;
  var daily ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd3d3d3),
      appBar: AppBar(
        title: Center(child: Text("Your Information", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text('Save',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
          ),
        ],),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff666666),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home),),
          BottomNavigationBarItem(label: "Dashboard", icon: Icon(Icons.dashboard),),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search),),
          BottomNavigationBarItem(label: "Person",
            icon: Icon(Icons.person),)
        ],),

      body: ListView(children: [
        SizedBox(height: 20,),
        Text("    Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
                trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
                title: Center(child: Text("37 Years",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)


            ),)),
        Text("    Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
          height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
          items: ["male","female"].map((e) => DropdownMenuItem(child: Text("$e"),
          value: e,))
              .toList(),
          onChanged: (val){
            setState(() {
              selectedgender=val;
            });
          },
          value: selectedgender,
        )),
        Text("    Height",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("175 CM",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)


              ),)),
        Text("    Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("80 KG",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)


              ),)),
        Text("    Working Hours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("10 Hours",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)


              ),)),
        Text("    Sleeping Hours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("6 Hours",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)


              ),)),
        Text("    Heart Rate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("142 BPM",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)
              ),)),
      Text("   Glucose Level",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
      Container(margin: EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
        child: Slider(
            inactiveColor: Colors.black12,
            min: 0.0, max: 300.0,
            value: level, onChanged:(val){
          setState(() {
            level=val;

          });}),),
        Text("    Blood pressure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("142 BPM",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)
              ),)),
        Text("    Sleeping Hours",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("142 BPM",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)
              ),)),

        Text("    Walking",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child:ListTile(
              trailing:(Icon(Icons.add,size: 30,color: Colors.blue,)),
              title: Center(child: Text("142 BPM",style: TextStyle(fontWeight: FontWeight.bold),),),
              leading:(Icon(Icons.minimize,size: 30,color: Colors.blue,)
              ),)),
        Text("    Activity Level",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  Light Exercise 1-3 days Per Week","  strong Exercise 1-2 days Per Week"].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  active=val;
                });
              },
              value: active,
            )),
        Text("    Smoking",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  Non- Smoker","  Smoker"].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  smoke=val;
                });
              },
              value: smoke,
            )),
        Text("    Chronic Diseases",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  High Cholestrol"," Arthritis "].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  chro_disease=val;
                });
              },
              value: chro_disease,
            )),
        Text("    Short Disease",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  Influenza","  Cough"].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  short_dis=val;
                });
              },
              value: short_dis,
            )),
        Text("    Daily Food Item",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  Fish","  Eggs","Oats,Rice ","Potatoes"].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  daily=val;
                });
              },
              value: daily,
            )),
        Text("    Activity Level",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
            child: DropdownButton(
              iconEnabledColor: Colors.blue,

              alignment:Alignment.topLeft,
              items: ["  Light Exercise 1-3 days Per Week","  strong Exercise 1-2 days Per Week"].map((e) => DropdownMenuItem(child: Text("$e"),
                value: e,))
                  .toList(),
              onChanged: (val){
                setState(() {
                  active=val;
                });
              },
              value: active,
            )),






    ]));
  }
}
