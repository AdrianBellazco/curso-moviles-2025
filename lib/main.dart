import 'package:flutter/material.dart';


// punto de partida de la aplicacion 
void main() {
  runApp(const MyApp());
}

// StatelessWidget | widget que no cambia
// StatefulWidget | widget que si cambia 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //define la esstructura de la app
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 78, 58, 255)),
      ),
      // home - define la pantalla inicial
      home: const MyHomePage(title: 'Hola mundo - Adrian '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   String myVariable = "";
   String textoTipado = "";


  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 
        title: Text(widget.title),
      ),
      body: Center(

        child: Column( //columna que envuelve todo 


          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row( //primera fila
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

               IconButton(
               icon: const Icon(Icons.minimize),
               tooltip: 'Disminuir',
               onPressed: (){
               setState(() {
              _counter--;
            });
            },
           ),

              Column( // columna dentro de la fila 
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Adri Points'),
                  Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
               ),
                ],
               ),
               

               IconButton(
               icon: const Icon(Icons.add),
               tooltip: 'Aumentar',
               onPressed: _incrementCounter,
               ),
                
              ],


            
            ),

           

            
            const SizedBox(height: 20), // ESPACIO ENTRE FILAS

            Row( //segunda fila 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Esta es la segunda fila UuU')
            ],

            ),
            //text file
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
          
        )

),
/**
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Adri points'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            
            IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Aumentar',
          onPressed: _incrementCounter,
        ),

             IconButton(
          icon: const Icon(Icons.minimize),
          tooltip: 'Disminuir',
          onPressed: (){
            setState(() {
              _counter--;
            });
          },
        ),

          ],
        ),
       */
     

      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
