import 'package:flutter/material.dart';
class Delete_Doctor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return Delete_DoctorState ();

  }
}
class  Delete_DoctorState extends State<Delete_Doctor> {
  var selectedindex =2;
  int favorite=0;
  final List<Map<String, dynamic>> data =[

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
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundDoctor = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundDoctor = data;
    super.initState();
  }
// This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = data;
    } else {
      results = data
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundDoctor = results;
    });
  }
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
            Navigator.of(context).pushNamed("adding doctor");
          }
      ),
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
                  onChanged: (value) => _runFilter(value),
                  onFieldSubmitted: (covariant){
                    setState(() {
                    });

                  },
                  cursorColor: Colors.cyan,
                  decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),borderSide: BorderSide(width: 20,color: Colors.black),gapPadding: BorderSide.strokeAlignCenter.ceilToDouble(),),

                      prefixIcon:  Icon(Icons.search),
                      suffixIcon: Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.min,
                        children: [Icon(Icons.tune),Text("   ") ,Icon(Icons.keyboard_voice),Text("  ")],),)
                  ),
                ),





              ),



              ] )
          ,),

      ),
      body:Container(color:Colors.indigo[50],
        child: _foundDoctor.isNotEmpty
            ?  ListView.builder(
            itemCount: _foundDoctor.length,
            itemBuilder: (context, index) => Card(
                child: Row(children: [

                  ColoredBox(color:Colors.white),
                  Expanded(
                    child: Image.asset(_foundDoctor[index]['image'],width: 500,height:100),
                    flex: 1,
                  ),
                  Expanded( flex: 3,
                    child: Column(
                      children: [ListTile(title: Text(_foundDoctor[index]['name']),
                          trailing:Icon(Icons.favorite_border,color: Colors.blue,) ,
                          subtitle:Row(children: [Icon(Icons.star_half_outlined,color: Colors.blue,), Text(_foundDoctor[index]['reviews']),IconButton(
                              icon: Icon(Icons.delete, color: Colors.red,),
                              onPressed: () {
                                data.remove(index);
                              }

                          ),],)
                      ),
                        Text(_foundDoctor[index]['sub'],)],

                    ),

                  )])
            )
        )
            : const Text(
          'No results found Please try with diffrent search',
          style: TextStyle(fontSize: 24),
        ),)
      ,bottomNavigationBar:BottomNavigationBar(
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
        BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person),)
      ],),



    );

  }}
