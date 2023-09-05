
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: TaskView(),));
}

class TaskView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.multiline_chart,color: Colors.red,),
                  trailing: Icon(Icons.crop_rotate_rounded,color: Colors.red,),
                ),
                const ListTile(
                  leading: Icon(Icons.do_not_disturb_on_total_silence_rounded,color: Colors.white,size: 25,),
                  title: Text("Do math home work",style: TextStyle(
                    fontSize: 25,color: Colors.white,),),
                  subtitle: Text("Do chapter 2 to 5 for next 5 weeks",
                    style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(Icons.edit,color: Colors.white,size: 25,),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.timer,color: Colors.white,
                    size: 20,),
                  title: Text("task time :",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey
                      ),
                      child: Text("Task at 16:45",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 20,),
                  title: Text("Task Category",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey
                    ),
                    child: Text("University",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ),
                // SizedBox(height: 8,),
                ListTile(
                  leading: Icon(Icons.flag,color: Colors.white,size: 20,),
                  title: Text("Task Priority :",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey
                      ),
                      child: Text("Default",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                ListTile(
                  leading: Icon(Icons.multiline_chart_sharp,color: Colors.white,size: 20,),
                  title: Text("Sub Task :",style: TextStyle(fontSize: 20,color: Colors.white),),
                  trailing: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey
                      ),
                      child: Text("Add sub task",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Row(
            children: [
              Icon(Icons.delete_forever,color: Colors.red,size: 25,),
              SizedBox(width: 10,),
              Text("Delete Task",style: TextStyle(fontSize: 25,color: Colors.red),)
            ],
          ),
          SizedBox(height: 120,),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF11334B),
                  fixedSize: Size(400, 50)
              ),
              child: Text("Edit Task",style: TextStyle(fontSize: 20,color: Colors.white),))
        ],
      ),
    );
  }
}
