import 'package:flutter/material.dart';
class After_add_patient extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return  After_add_patientState ();
  }
}
class   After_add_patientState extends State<After_add_patient> {
  int selectedindex=2;
  List patientdata =[
    {
      "name": "Ahmed Gamal",
      "subinfo":"34 Years old",
      "image": "images/9.jpg",
      "rate":57 ,
    },
    {
      "name": "Abdelfatah Ali",
      "subinfo":"55 Years old",
      "image": "images/10.jpg",
      "rate":20 ,
    },
    {
      "name": "Rawan Said",
      "subinfo":"26 Years old",
      "image": "images/11.jpg",
      "rate":40 ,
    },
    {
      "name": "Doaa Abdelsatar",
      "subinfo":"76 Years old",
      "image": "images/12.jpg",
      "rate":46 ,
    },
    {
      "name": "Shadi Mahfoz",
      "subinfo":"44 Years old",
      "image": "images/13.jpg",
      "rate":38 ,
    },
    {
      "name": "Mlak Mahmoud",
      "subinfo":"33  Years old",
      "image": "images/14.jpg",
      "rate":67 ,

    },
    {
      "name": "Nesma Khaled",
      "subinfo":"55 Years old",
      "image": "images/15.jpg",
      "rate":84 ,
    },
    {
      "name": "Karem Mahmoud",
      "subinfo":"56 Years old",
      "image": "images/16.jpg",
      "rate":39 ,
    }
    ,
    {
      "name": "Gamal Ahmed",
      "subinfo":"33 Years old",
      "image": "images/9.2.jpg",
      "rate":39 ,
    }
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton.extended(

          label: Row(
            children: [Icon(Icons.add,color: Colors.black,), Text('Add',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))],
          ),
          heroTag: 'uniqueTag',
          onPressed: () {
          }
      ),

      appBar: AppBar(title: Center(child: Text(" Patient         ", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black))),
        backgroundColor: Colors.white,
        leading: TextButton(onPressed: () {},
            child: Text("Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),)),
      ),
      body:  Container(
        color:Colors.indigo[50],
        child: ListView.builder(
            itemCount:patientdata.length ,
            itemBuilder: (context,i){
              return ListData(data: patientdata[i],);

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
          BottomNavigationBarItem(label: "Questions", icon: Icon(Icons.question_answer,),),
          BottomNavigationBarItem(label: "Appointments",icon: Icon(Icons.book_online),),
          BottomNavigationBarItem(label: "Patients", icon: Icon(Icons.personal_injury), ),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person),)
        ],),
    );
  }}
class ListData extends StatelessWidget{
  final data ;
  ListData({this.data});
  @override
  Widget build(BuildContext context){
    return Card(

        child: InkWell(
          onTap: (){
            Navigator.of(context).pushNamed("after delete patient");
          },
          child:Row(children: [
            ColoredBox(color:Colors.white),

            Expanded(
              child: Image.asset("${data['image']}",width: 500,height:100),
              flex: 1,
            ),
            Expanded( flex: 3,
              child: Column(children: [ListTile(
                title:Text("${data['name']}"),
                subtitle:Text("${data['subinfo']}"),
                trailing:IconButton(
                    icon: Icon(Icons.delete, color: Colors.red,),
                    onPressed: () {
                      var index;
                      data.remove(index);
                    }

                ),


              )],

              ),
            )]),)
    );
  }

}

