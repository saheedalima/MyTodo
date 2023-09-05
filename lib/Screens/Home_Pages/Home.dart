import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/Screens/Home_Pages/Add_Task.dart';
import 'package:my_todo/Screens/Widgets/NoDataScreen.dart';
import 'package:my_todo/Screens/Widgets/TaskDataScreen.dart';

void main(){
  runApp( DevicePreview(enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      useInheritedMediaQuery: true, home: Home(),
      debugShowCheckedModeBanner: false,
    ), // Wrap your app
  ),);
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var taskdatas =[];
    bool isLoading = false;
    
    return Scaffold(
      backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Add_Task()));
        },
          child: Icon(Icons.add),),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Home")),
        leading: Icon(Icons.arrow_downward),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: CircleAvatar(
              radius: 15,
            ),
          )
        ],
      ),
      body: taskdatas.isNotEmpty ? Center(child: NoDataScreen()): TaskDataScreen());
  }
}
