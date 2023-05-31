import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_parcial_4/services/firebase.dart';


class Parcialdiferido extends StatelessWidget {
  const Parcialdiferido({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Parcial Diferido',
       home:Scaffold(appBar: AppBar(
        title: Text('Parcial Diferido'),
       ),
       body: FutureBuilder(
        future:getClientes(), 
        builder:(context,snapshot){
          if(snapshot.hasData){
          return ListView.builder(itemCount: snapshot.data?.length,
          itemBuilder: (context, index){
            return Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    
                    Text(
                     'Código: ${snapshot.data?[index]['ID_Cliente']}', style:TextStyle(fontSize: 15),),
                      Text(
                     'Nombre: ${snapshot.data?[index]['sNombreCliente']}', style:TextStyle(fontSize: 15),),
                      Text(
                     'Apellido: ${snapshot.data?[index]['sApellidoCliente']}', style:TextStyle(fontSize: 15),),
                      Text(
                     'Direccion: ${snapshot.data?[index]['sDireccionCliente']}', style:TextStyle(fontSize: 15),),
                      Text(
                     'Ciudad: ${snapshot.data?[index]['sDireccionCliente']}', style:TextStyle(fontSize: 15),),
                  ],
                ),
              )
               
            );
           
       

            },);
          }
          else{
            return const Center(child: CircularProgressIndicator(),
            );
          }
       }
       ),
       floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, '/add');
       },
       child: Icon(Icons.add),
       ),
       
       ),
       );
   
  }
}