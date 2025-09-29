import 'package:flutter/material.dart';

class Todologinscreen extends StatefulWidget {
  const Todologinscreen({super.key});

  @override
  State<Todologinscreen> createState() => _TodologinscreenState();
}

class _TodologinscreenState extends State<Todologinscreen> {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Todologinscreen()),
                      );
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
              ],
            )
          ],
        ),
      ),
      
    );
  }
}