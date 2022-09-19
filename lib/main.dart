// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('matching Images'),
        backgroundColor: Colors.indigo[900],
      ),
      body: ImagePage(),
    ),
  ),
);
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int Left_image_Number = 1;
  int rghit_image_Number = 1;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          rghit_image_Number == Left_image_Number?  
          'you won' : 'Try Again',
        style: TextStyle(
          fontSize: 42,
          color: Colors.white,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () { 
                      setState(() {
                        Left_image_Number = Random().nextInt(6+1);
                        rghit_image_Number = Random().nextInt(6+1);
                      });
                     },
                    child: Image.asset('images/$Left_image_Number.jpg'),
                    ),
                ), 
             
                 Expanded(
                   child: FlatButton(onPressed: () { 
                     setState(() {
                        rghit_image_Number = Random().nextInt(6+1);
                         Left_image_Number = Random().nextInt(6+1);
                      });
                    },
                   child: Image.asset('images/$rghit_image_Number.jpg'),
                   ),
                 
                ),
                
              ],
            ),
          )
      ],
    );
    
  }
}




  