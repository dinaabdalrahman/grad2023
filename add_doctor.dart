import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Adding_Doctor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return Adding_DoctorState ();

  }
}

class  Adding_DoctorState extends State<Adding_Doctor> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("   Adding Doctors         ", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
          backgroundColor: Colors.white10,
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(children: [
              SizedBox(height: 20),
              Text(" Enter Some Information                                    ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21, color: Colors.blue))
              ,SizedBox(height: 20),

              Text("  Enter your full name                                           ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    Your specialization                                                      ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),

              Text("    Your workplace                                                             ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(width: 2)
                    )
                ),

              ),
              SizedBox(height: 20),
              Text("    Enter Your image                                                                    ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black))
              ,SizedBox(height: 10),
              if (imageFile != null)
                Container(
                  width: 700,
                  height: 300,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    image: DecorationImage(
                      image: FileImage(imageFile!),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 8,color: Colors.black),
                    borderRadius: BorderRadius.circular(12.0),
                  ),)
              else
                Container(
                  width: 600,
                  height: 480,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    border: Border.all(width: 8,color: Colors.black26),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text("Image should appear here",style: TextStyle(fontSize: 29,color: Colors.black,fontWeight: FontWeight.bold),),

                ),

              Row(children: [
                Expanded(child: ElevatedButton(
                  onPressed: ()=>getImage(source: ImageSource.camera),
                  child: Text("Capture Image",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),

                ))
                ,SizedBox(width: 20),
                Expanded(child: ElevatedButton(

                  onPressed: ()=>getImage(source: ImageSource.gallery),
                  child: Text("Select Image",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold,),),

                ))

              ],),


              SizedBox(height: 40),

              Center(
                child: ElevatedButton(
                  child: const Text('Add',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                  onPressed: () {
                    Navigator.of(context).pushNamed("after add doctor");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 30),),

                ),
              ),



            ],)
        ));
  }
  void getImage({required ImageSource source}) async{
    final file = await ImagePicker().pickImage(
      source: source,
      maxHeight: 300,
      maxWidth: 700,
      imageQuality: 100,


    );
    if(file?.path!=null){
      setState(() {
        imageFile = File(file!.path);
      });

    }}}