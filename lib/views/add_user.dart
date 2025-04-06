import 'package:flutter/material.dart';


class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


/*
class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Column( //columna que envuelve todo 


          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row( //primera fila
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              MaterialApp()              

               IconButton(
               icon: const Icon(Icons.minimize),
               tooltip: 'Disminuir',
               onPressed: (){
               setState(() {
              _counter--;
            });
            },
           ),

              Column(
               ),
               

               IconButton(
               icon: const Icon(Icons.add),
               tooltip: 'Aumentar',
               onPressed: _incrementCounter,
               ),
                
              ],


            
            ),
          ]
    );
  }
}
*/