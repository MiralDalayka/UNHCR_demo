import 'package:flutter/material.dart';

class ErrorMsg extends StatelessWidget {
 const  ErrorMsg({super.key,required this.msg});
final String msg;
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
       msg,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
