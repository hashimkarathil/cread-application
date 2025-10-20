import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tudoapp/ui/usermodel.dart';

class Crudprovider extends ChangeNotifier{
  List <Usermodel> users=[];
  //adding data using model
  Future <void> addData(Usermodel usermodel) async {
    final usercollection = FirebaseFirestore.instance.collection("User");
    final id=usercollection.doc().id;
    final user= usermodel.Copywith(id: id);
    await
    usercollection.doc(id).set(user.toMap());
  }
  Future <void> fetchdata() async {
    final userCollection = await FirebaseFirestore.instance.collection("Users").get();
    final user1 = userCollection.docs.map((doc) => Usermodel.fromMap(doc.data()));
    users.addAll(user1);
  }
}

