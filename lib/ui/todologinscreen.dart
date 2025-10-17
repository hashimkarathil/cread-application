import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Todologinscreen extends StatefulWidget {
  const Todologinscreen({super.key});
  
  @override
  State<Todologinscreen> createState() => _TodologinscreenState();
}

class _TodologinscreenState extends State<Todologinscreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: [
           
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Authentication",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
             
             SizedBox(height: 50),
            Text(
              'Please Enter Your Email Id:',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),

                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),

            Text(
              'Please Enter Your Password:',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),

                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 20,),

             ],
            ),
            Column(
              children: [
                 InkWell(
                    onTap: () {
                     FirebaseFirestore.instance.collection("Users").add({"email":emailController.text,"password":passwordController.text});
                     
                    },
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(3),
                        ),

                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () async {
                    final ret = await FirebaseFirestore.instance.collection("Users").get();
                    for( var doc in ret.docs){
                      print(doc.data());
                    }
                  }, child: Text("Get")),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}