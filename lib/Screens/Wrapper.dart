import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Screens/Home.dart';
import 'package:taskly/Screens/LandingPage.dart';

import '../Model/User.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    // Returns home or landing page on basis of user value
    return user == null ? LandingPage() : Home();
  }
}
