import 'package:flutter/material.dart';
import 'package:flutter_parcial_4/services/firebase.dart';

class addcliente extends StatefulWidget {
  const addcliente({super.key});

  @override
  State<addcliente> createState() => _addclienteState();
}

class _addclienteState extends State<addcliente> {

  TextEditingController IdController = TextEditingController();
  TextEditingController NombreController = TextEditingController(text: "");
  TextEditingController ApellidoController = TextEditingController(text: "");
  TextEditingController direccionController = TextEditingController(text: "");
  TextEditingController ciudadController = TextEditingController(text: "");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agregar Cliente"),),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Center(child: 
            Text('Pagina Agregar Cliente',style: TextStyle(fontSize: 24),),),
            TextFormField(
              controller: IdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese un número entero',
              ),
              
            ),
            TextField(
              controller: NombreController,
              decoration: InputDecoration(hintText: 'Ingrese el nombre del Cliente'),
            ),
            TextField(
              controller: ApellidoController,
              decoration: InputDecoration(hintText: 'Ingrese el Apellido Cliente'),
            ),
            TextField(
              controller: direccionController,
              decoration: InputDecoration(hintText: 'Ingrese la Direccion del Cliente'),
            ), TextField(
              controller: ciudadController,
              decoration: InputDecoration(hintText: 'Ingrese la Ciudad del Cliente'),
            ),
            ElevatedButton(
                onPressed: () async {
             
                  await addClientes(int.parse(IdController.text),ApellidoController.text, ciudadController.text ,
                           direccionController.text, NombreController.text )
                      .then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                  setState(() {});
                },
                child: Text("Guardar registro"))
             
          ],
        ),
      ),
      
    );
  }
}