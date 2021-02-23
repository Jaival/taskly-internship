import 'package:flutter/material.dart';

class MyTaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      child: Card(
        child: Container(
          // margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Task Name"),
              SizedBox(height: 10.0),
              Text("Sub Tasks"),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.blue, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 56, height: 56, child: Icon(Icons.menu)),
                        onTap: () {},
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.camera_alt,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
        color: Colors.amber,
        elevation: 3,
      ),
    );
  }
}
