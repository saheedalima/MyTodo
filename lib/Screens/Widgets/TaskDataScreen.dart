import 'package:flutter/material.dart';
import 'package:my_todo/Screens/TaskScreen/view_tasks.dart';

import '../TaskScreen/TaskView.dart';

void main(){
  runApp(MaterialApp(home: TaskDataScreen(),));
}

class TaskDataScreen extends StatelessWidget {
  var datas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Serach Your task..",
                  hintStyle: TextStyle(
                    color: Colors.white, // Set the color you want for the hint text
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              const Text("Total task : 100",style: TextStyle(fontSize: 13,color: Colors.white),
                textAlign: TextAlign.start,),
              const SizedBox(height: 10,),
              Row(
                children: [
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                          fixedSize: const Size(150, 50),
                      ),
                  child: const Text("25 task left")),
                  const SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        fixedSize: const Size(150, 50),
                      ),
                      child: const Text("75 task done")),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 350,
                child: ListView.builder(
                  itemCount: 3,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: InkWell(
                          onTap: ()=>
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TaskView())),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[800],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(value: 10, groupValue: 10, onChanged: (click){
                                }),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20,bottom: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Do math home work",style: TextStyle(fontSize: 20,color: Colors.white),),
                                      Text("Todat at 8:20",style: TextStyle(fontSize: 15,color: Colors.white),),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 73),
                                  child: ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.lightBlueAccent,
                                      ),
                                      child: const Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.catching_pokemon_sharp),
                                          SizedBox(width: 7,),
                                          Text("University")
                                        ],
                                      )),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(Icons.delete_forever,color: Colors.red,),
                                    ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.grey[800],
                                          side: const BorderSide(color: Colors.lightBlueAccent)
                                        ),
                                        child: const Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(Icons.flag),
                                            SizedBox(width: 7,),
                                            Text("1")
                                          ],
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
