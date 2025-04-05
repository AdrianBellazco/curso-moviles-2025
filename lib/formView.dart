import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormState();
}

class _FormState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
     String textoTipado = "";
    return 
    Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 
        title: Text("Nueva vista"),
      ),
      body:
Column(
      
      children: [
         Row( // Tercera fila 

             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              SizedBox(
              width: 250,
              child: TextField(
              //obscureText: true,
              onChanged: (value){
                setState(() {
                  textoTipado = value;
                });
              },
              decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Password'),
             ),
             )
             ],

            ),

            Row(
               mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                textoTipado, //variable
                style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 114, 126, 255),
              ),
              ),
                ],
            )

      ],
    ),

    
    );
     /* 
    
     */
  }
}