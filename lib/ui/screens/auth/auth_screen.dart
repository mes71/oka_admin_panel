import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oka_admin_panel/ui/utils/colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String tag = '/AuthScreenRoute';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [primaryColorLight, primaryColorDarker])),
          child: Center(
            child: Card(
              elevation: 10,
              child: Container(
                width: 550,
                height: 350,
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Username')),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: showPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Password'),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: Icon(showPassword
                                  ?CupertinoIcons.eye_fill
                                  :  CupertinoIcons.eye_slash_fill),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
