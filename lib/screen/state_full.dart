import 'package:flutter/material.dart';

class state_full extends StatefulWidget {
  const state_full({super.key});

  @override
  State<state_full> createState() => _state_full();
}

class _state_full extends State<state_full> {
  Color color = Colors.blue;

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
                }else if(color == Colors.blue){
                  color = Colors.red;
                }
                setState(() {});
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
