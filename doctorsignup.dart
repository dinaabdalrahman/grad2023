import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
class Profile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ProfileState ();

  }
}

class  ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [

        Row( children: [
          Container(
            child: Image.asset("images/.jpg",width:55,),
          margin: EdgeInsets.only(left: 20,top: 45,right: 10),),
          Container(
            child: Text("profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          margin: EdgeInsets.only(top: 40),)

        ],),
        SizedBox(height: 10,),
          CircleAvatar(
          backgroundImage: AssetImage("images/1.jpg"),
          radius: 60,),
     /* Container(child: Icon(Icons.edit,color: Colors.white,size:20 ),
                 margin: EdgeInsets.only(left: 100,),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.indigo,
        ),
                  ),*/
        SizedBox(height: 20,),
          Form(

              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("     Full Name",style: TextStyle(color:Colors.grey,),),
                    SizedBox(height: 10,),

                    TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    borderSide: BorderSide(width: 20),
                  )),),])),


          Form(
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),

                Text("     Email",style: TextStyle(color: Colors.grey,fontSize:15)),
                SizedBox(height: 10,),

                TextFormField(
                 decoration: InputDecoration(

                suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(width: 3)
    )
    ),

    ),
            SizedBox(height: 10,),
            Text("     Gender",style: TextStyle(color: Colors.grey,fontSize:15),),
            SizedBox(height: 10,),
                    Form(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         TextFormField(
                            decoration: InputDecoration(
                       suffixIcon: Icon(Icons.arrow_drop_down),
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(90),

                         borderSide: BorderSide(width: 1)
    )
    ),

    ),
                      SizedBox(height: 10,),
                      Text("     Date of birth",style: TextStyle(color: Colors.grey,fontSize:15,),),
                      SizedBox(height: 10,),
                     Form(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       TextFormField(

                           decoration: InputDecoration(
                              suffixIcon: Icon(Icons.date_range),
                                border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(60),

    )
    ),

    ),
                         SizedBox(height: 20,),

                         Container(
                             margin: EdgeInsets.all(20),
                             child:MaterialButton(
                               color: Colors.blue,

                               shape: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(90)
                               ),
                               padding: EdgeInsets.all(10),
                               onPressed: () {  },
                               child: Center( child: Text(" confirm ",style: TextStyle(fontSize: 30,color: Colors.white))),

                             )
                         )
        ],),
    )]))]))]));


}}