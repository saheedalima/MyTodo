import 'package:flutter/material.dart';

class viewTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.multiline_chart),
            trailing: Icon(Icons.crop_rotate_rounded),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Icon(Icons.do_not_disturb_on_total_silence_rounded),
            title: Text("Do math home work",style: TextStyle(fontSize: 15,color: Colors.white),),
            subtitle: Text("Do chapter 2 to 5 for next 5 weeks",
              style: TextStyle(fontSize: 10,color: Colors.white),),
            trailing: Icon(Icons.edit),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Icon(Icons.timer),
            title: Text("task time :"),
            trailing: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey
                ),
                child: Text("Task at 16:45",style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text("Task Category"),
            trailing: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                ),
                child: ElevatedButton(onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Icons.catching_pokemon_sharp),
                        SizedBox(width: 7,),
                        Text("University")
                      ],
                    )),),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text("Task Priority :"),
            trailing: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                ),
                child: Text("Default",style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 5,),
          ListTile(
            leading: Icon(Icons.multiline_chart_sharp),
            title: Text("Sub Task :"),
            trailing: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                ),
                child: Text("Add sub task",style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.delete_forever,color: Colors.red,),
              SizedBox(width: 4,),
              Text("Delete Task")
            ],
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(400, 20)
              ),
              child: Text("Edit Task"))

        ],
      ),
    );
  }
}
