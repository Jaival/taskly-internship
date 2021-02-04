import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  final String pageName;
  final String pageFooterStarting;
  final String pageFooterEnding;

  LeftSide({
    this.pageName,
    this.pageFooterStarting,
    this.pageFooterEnding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //TODO: Logo
        Container(
          child: Text(
            "Taskly",
            style: TextStyle(fontSize: 70.0),
          ),
        ),
        Text(
          pageName,
          style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 40.0),
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                pageFooterStarting,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              GestureDetector(
                onTap: () {
                  print("Tapped");
                },
                child: Text(
                  pageFooterEnding,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
