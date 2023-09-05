import 'package:flutter/material.dart';

class new_category_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Create New Category",style: TextStyle(
              color: Colors.white,
          fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("Category Name :",style: TextStyle(
            color: Colors.white,fontSize: 20),),
          SizedBox(height: 5,),
          TextField(
            style: TextStyle(color: Colors.white,height: 3,fontSize: 20), // Optionally, you can set the font size
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[700],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text("Category Icon ",style: TextStyle(
            fontSize: 20,color: Colors.white,
          ),),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[800],
                fixedSize: const Size(250, 30),
              ),
              child: const Text("75 task done")),
          SizedBox(height: 5,),
          Text("Category color",style: TextStyle(fontSize: 20,color: Colors.white),),
          // Row(
          //   children: List.generate(length, (index) => null),
          // )
        ],
      ),
    );
  }
}
