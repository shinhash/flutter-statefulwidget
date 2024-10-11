import 'package:flutter/material.dart';
import 'package:statefulwidget/screen/state_less.dart';

class state_full extends StatefulWidget {
  const state_full({super.key});

  @override
  // State<state_full> createState() => _state_full();
  State<state_full> createState() => StateFullLifeCycle();
}

class _state_full extends State<state_full> {
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
                if (color == Colors.red) {
                  color = Colors.blue;
                } else if (color == Colors.blue) {
                  color = Colors.red;
                }
                setState(() {});
              },
              child: Text('색상 변경!'),
            ),
            SizedBox(
              height: 32.0,
            ),
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

class StateFullLifeCycle extends State<state_full> {
  bool show = false;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show)
              GestureDetector(
                onTap: (){
                  setState(() {
                    color = color == Colors.blue ? Colors.red : Colors.blue;
                  });
                },
                child: HashedFactoryWidget(
                  color: color,
                ),
              ),
            const SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: const Text('클릭 show'),
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     if(color == Colors.red){
            //       color = Colors.blue;
            //     }else if(color == Colors.blue){
            //       color = Colors.red;
            //     }
            //     setState(() {});
            //   },
            //   child: Text('색상 변경!'),
            // ),
            // SizedBox(height: 32.0,),
            // Container(
            //   width: 50.0,
            //   height: 50.0,
            //   color: color,
            // )
          ],
        ),
      ),
    );
  }
}

class HashedFactoryWidget extends StatefulWidget {
  final Color color;

  HashedFactoryWidget({
    super.key,
    required this.color,
  }) {
    print('StateFull Widget Constructor');
  }

  @override
  State<HashedFactoryWidget> createState() {
    print('StateFull Widget Create State');
    return _HashedFactoryWidgetState();
  }
}

class _HashedFactoryWidgetState extends State<HashedFactoryWidget> {
  @override
  void initState() {
    print('_HashedFactoryWidgetState Widget Init');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('_HashedFactoryWidgetState Widget didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('_HashedFactoryWidgetState Widget build');
    return Container(
      width: 50.0,
      height: 50.0,
      color: widget.color,
    );
  }

  @override
  void deactivate() {
    print('_HashedFactoryWidgetState Widget deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('_HashedFactoryWidgetState Widget dispose');
    super.dispose();
  }
}
