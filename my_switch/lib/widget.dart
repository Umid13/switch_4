import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool s=true;
  bool x=true;
  bool z=false;

  void fn(va){
    setState(() {
      s=!s;
    });
  }
  void fn1(va){
    setState(() {
      x=!x;
    });
  }
  void fn2(va){
    setState(() {
      z=!z;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.translate,
                color: Colors.grey,
                size: 30,
              ),
            ),
            title: Text(
              'App language',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400
              ),
            ),
            subtitle: Text(
              'English',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: ListTile(
            leading: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.color_lens_outlined,
                size: 30,
                color: Colors.grey,
              ),
            ),
            title: Text(
              'App theme',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17
              ),
            ),
            subtitle: Text(
              'Light (Indigo and Orange)',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SwitchListTile(
            value: s,
            onChanged: fn,
            secondary: const Padding(
              padding: EdgeInsets.only(left: 10),
              child:  Icon(
                Icons.pin_invoke_outlined,
                size: 30,
              ),
            ),
            title: const Text(
              'Enable zoom',
              style: TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
            activeColor: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SwitchListTile(
            value: x,
            onChanged: fn1,
            secondary: const Padding(
              padding: EdgeInsets.only(left: 10),
              child:  Icon(
                Icons.developer_board,
                size: 30,
              ),
            ),
            title: const Text(
              'Developer options',
              style: TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
            activeColor: Colors.orange,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SwitchListTile(
            value: z,
            onChanged: fn2,
            secondary: const Padding(
              padding: EdgeInsets.only(left: 10),
              child:  Icon(
                Icons.exit_to_app,
                size: 30,
              ),
            ),
            title: const Text(
              'Press back button twice for exit',
              style: TextStyle(
                fontWeight: FontWeight.w400
              ),
            ),
            activeColor: Colors.orange,
          ),
        )
      ],
    );
  }
}