import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD=FirebaseFirestore.instance;
Future<List>getClientes() async{
  List clientes = [];
  CollectionReference collectionReferenceclientes = 
      baseD.collection('MD_Clientes');
      QuerySnapshot queryCliente= await collectionReferenceclientes.get();
      queryCliente.docs.forEach((documento) { 
        clientes.add(documento.data()); 

      });

  return clientes;
}

Future<void> addClientes(int ID_Cliente, String sApellidoCliente,String sCiudadCliente, String sDireccionCliente, String sNombreCliente) async {
  await baseD.collection('MD_Clientes').add({
    "ID_Cliente": ID_Cliente,
    "sApellidoCliente": sApellidoCliente,
    "sCiudadCliente": sCiudadCliente,
    "sDireccionCliente": sDireccionCliente,
    "sNombreCliente": sNombreCliente,

  });
}
