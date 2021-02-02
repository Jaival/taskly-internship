import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 1200) {
        return DesktopNavBar();
      } else if (constrains.maxWidth > 800 && constrains.maxWidth < 1200) {
        return DesktopNavBar();
      } else {
        return MobileNavBar();
      }
    });
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Landing Page",
            style: TextStyle(fontSize: 30.0),
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text("Login"),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              ),
              SizedBox(
                width: 10.0,
              ),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.button,
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Landing Page",
            style: TextStyle(fontSize: 30.0),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text("Login"),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: Theme.of(context).textTheme.button,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
