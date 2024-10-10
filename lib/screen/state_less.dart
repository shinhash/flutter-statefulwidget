import 'package:flutter/material.dart';

Color color = Colors.blue;

class state_less extends StatelessWidget {
  const state_less({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if(color == Colors.red){
                  color = Colors.blue;
                  print('clicked red');
                }else if(color == Colors.blue){
                  color = Colors.red;
                  print('clicked blue');
                }
              },
              child: Text('색상 변경!'),
            ),
            SizedBox(height: 32.0,),
            Container(
              width: 50.0,
              height: 50.0,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
