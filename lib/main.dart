import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );

}

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State createState() => _Practice();
}


class _Practice extends State{
  TextEditingController nameController=TextEditingController();

  String? myName;

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Widget",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),

        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body:  Column(
        children: [
             const SizedBox(
              height: 20,
            ),

             Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 24,
                ),
              
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color:Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),

                onChanged: (String val){
                  print("Value:$val");
                },

                onEditingComplete: () {
                  print("Editing Complete");
                },

                onSubmitted: (value) {
                  print("Value Submitted:$value");
                  
                },
                
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                print("Add Data");
                myName=nameController.text;
                print("My Name:  $myName");
                nameController.clear();
                setState(() {
                  
                });

              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
              
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              
              ),
            ),
            const SizedBox(
              height: 40,


            ),
            Text(
              "Name:$myName",
              style: const TextStyle(
                fontSize: 30
              ),
            )
        ],
      ),
    );
  }
 
}