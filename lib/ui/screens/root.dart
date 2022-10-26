import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  static const String tag = '/RootScreenRoute';

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // initialize a index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              labelType: NavigationRailLabelType.selected,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                    icon: Icon(CupertinoIcons.square_list),
                    label: Text('App\'s')),
                NavigationRailDestination(
                    icon: Icon(CupertinoIcons.selection_pin_in_out),
                    label: Text('Category\'s')),
                NavigationRailDestination(
                    icon: Icon(CupertinoIcons.selection_pin_in_out),
                    label: Text('Products')),
                NavigationRailDestination(
                    icon: Icon(CupertinoIcons.selection_pin_in_out),
                    label: Text('Posts')),
                NavigationRailDestination(
                    icon: Icon(CupertinoIcons.selection_pin_in_out),
                    label: Text('About us')),
              ],
              selectedIndex: _selectedIndex),
        ],
      ),
    );
  }
}
