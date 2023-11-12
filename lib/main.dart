import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("examples AlertDialog "),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),
      body: ElevatedButton.icon(

      style: ElevatedButton.styleFrom(
        padding:const EdgeInsets.all(40),
        backgroundColor: Colors.pinkAccent,
        elevation: 10,
        shadowColor: Colors.orange,
        textStyle: const TextStyle(fontSize: 24),

      ),
          onPressed:(){
         showDialog(context: context,
             barrierColor: Colors.green.shade100,
             barrierDismissible: false,
             builder: (context){
           return AlertDialog(
               title: const Text("Adding?"),
               titleTextStyle: const TextStyle(color:Colors.white,fontSize: 29),
               titlePadding:const  EdgeInsets.all(10),
               elevation: 10,
               shadowColor: Colors.blue,
               contentPadding:const EdgeInsets.symmetric(horizontal: 14),
               icon:const Icon(Icons.add_circle,size: 50,),
               iconColor: Colors.orangeAccent,
               iconPadding: const EdgeInsets.all(10),
               backgroundColor: Colors.lime,
               actionsAlignment:MainAxisAlignment.spaceEvenly,
               content: const Text("Do you want to add this product?"),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(24),
                 side: BorderSide(color:Colors.green,width: 5),
               ),
               contentTextStyle: const TextStyle(color: Colors.red,fontSize: 17),
               actions: [
                 OutlinedButton(onPressed: (){
                   print("yes");
                   Navigator.of(context).pop();
                 }, child: const Text('yes')),
                 OutlinedButton(onPressed: (){
                   print("no");
                   Navigator.of(context).pop();
                 }, child: const Text("No")),
               ],


           );
             });
      },
          icon:const Icon(Icons.add_circle),
          label: const Text("confirm adding")),
    );
  }
}

