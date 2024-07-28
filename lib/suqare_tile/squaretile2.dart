import 'package:flutter/material.dart';
 class SquareTile2 extends StatelessWidget {
   final int number;
   const SquareTile2({Key? key, required this.number}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: const EdgeInsets.all(18),
       decoration: BoxDecoration(
         border: Border.all(color: Colors.white),
         borderRadius: BorderRadius.circular(16),
         color: Colors.grey[200],
       ),
       child: Center(
         child: Text(
           number.toString(),
           style: const TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ),
       ),
     );
   }
 }

