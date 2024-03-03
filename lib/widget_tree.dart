import 'package:flutter/rendering.dart';
import 'package:flutter_project_4/auth.dart';
import 'package:flutter_project_4/pages/home_page.dart';
import 'package:flutter_project_4/pages/login_register_page.dart';
import 'package:flutter/material.dart';

class WdigetTree extends StatefulWidget {
  const WdigetTree({Key? key}) : super(key: key);

  @override
  State<WdigetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WdigetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().AuthStateChangeAction,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
