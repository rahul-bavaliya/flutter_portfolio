import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

import 'components/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
