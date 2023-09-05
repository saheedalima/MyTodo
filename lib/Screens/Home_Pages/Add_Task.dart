import 'package:flutter/material.dart';
import 'package:my_todo/Screens/Widgets/Category_widget.dart';

class Add_Task extends StatelessWidget {

  var categories = ["category","work","sport","university","social","music","health","movie"
      "home","create New"];
  var icons =[Icon(Icons.category),Icon(Icons.work),Icon(Icons.sports),Icon(Icons.flag),
    Icon(Icons.social_distance),Icon(Icons.music_note),Icon(Icons.health_and_safety),
    Icon(Icons.movie), Icon(Icons.home),Icon(Icons.add)];
  var colours = [Colors.lightGreenAccent,Colors.orange,Colors.lightBlue,
    Colors.grey,Colors.lightBlue,Colors.purple,
    Colors.purpleAccent,Colors.green,Colors.blue,Colors.orangeAccent,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Add Task",style: TextStyle(fontSize: 20,color: Colors.white),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Task",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              TextField(
                style: TextStyle(color: Colors.white,height: 3,fontSize: 25), // Optionally, you can set the font size
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Add Category",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Center(
                  child: ElevatedButton(onPressed: (){
                    showModalBottomSheet(context: context, builder: (context){
                      return GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 30),
                          shrinkWrap: true,
                          itemCount: icons.length,
                          itemBuilder: (context,index){
                            return ElevatedButton(onPressed: (){

                            },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(3, 1),
                                  backgroundColor: colours[index]
                                ),
                                child: icons[index]);
                          });
                    });
                  },
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Color(0xFF11334B),
                        fixedSize: Size(300, 70), // Adjust the width and height as per your requirement
                      ),
                      child: Text("Add Category")),
                ),
              ),
              SizedBox(height: 10,),
              Text("Description",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white,height: 3,fontSize: 25), // Optionally, you can set the font size
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0,),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Date",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              TextField(
                style: TextStyle(color: Colors.white,height: 3,fontSize: 25), // Optionally, you can set the font size
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Time",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              TextField(
                style: TextStyle(color: Colors.white,height: 3,fontSize: 25), // Optionally, you can set the font size
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Task Priority",style: TextStyle(fontSize: 15,color: Colors.white),),
              SizedBox(height: 10,),
              TextField(
                style: TextStyle(color: Colors.white,fontSize: 25),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[700],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                        minimumSize: Size(100, 10)
                      ),
                   child: Text("Cancel")),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15),
                        backgroundColor: Color(0xFF11334B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: Size(150, 50), // Adjust the width and height as per your requirement
                      ),
                      child: Text("Add"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> showalert(BuildContext context)async {
    return await showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text("choose category"),
        content:  GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            shrinkWrap: true,
            itemCount: icons.length,
            itemBuilder: (context,index){
              return Container(
                height: 25,width: 25,
                color: colours[index],
                child: icons[index],
              );
            }),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop(true);
          }, child: const Text("Add category")),

        ],
      );
    });
  }
}
