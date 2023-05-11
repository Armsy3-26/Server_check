import 'package:flutter/material.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const[
        SizedBox(
          height: 250,
        ),
        Center(
            child:
                Text("Could not establish connection to the server:)-",style: TextStyle(color: Colors.green),)),

                SizedBox(height: 15,),


      ],
    );
  }
}
