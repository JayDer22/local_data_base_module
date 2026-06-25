import 'package:flutter/material.dart';

class Addcontects extends StatefulWidget {
  const Addcontects({super.key});

  @override
  State<Addcontects> createState() => _AddcontectsState();
}

class _AddcontectsState extends State<Addcontects> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: Center(
         child: Container(

         height: 450,
           width: 650,
           decoration: BoxDecoration(
             color: Colors.teal
           ),
           child: Column(
             children: [
               SizedBox(height: 10,width: 100,),
               TextField(

                 controller: name,
                 decoration: const InputDecoration(

                   hintText: "Enter your name...",
                   labelText: "Name",
                   border: OutlineInputBorder(),
                 ),
               )
             ],
           ),
         ),
       )
    );
  }
}
