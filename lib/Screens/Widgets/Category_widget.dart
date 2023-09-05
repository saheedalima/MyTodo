import 'package:flutter/material.dart';
import 'package:my_todo/Screens/Splash.dart';

class catergory_widget extends StatelessWidget {

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

    Future<void> showalert()async {
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

    return Scaffold(
    );
  }
}
