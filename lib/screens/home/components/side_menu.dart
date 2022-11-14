import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/components/animated_progress_indicator.dart';
import 'package:flutter_portfolio/screens/home/components/coding.dart';
import 'package:flutter_portfolio/screens/home/components/knowledges.dart';

import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(title: 'Country', text: 'Canada'),
                  AreaInfo(title: 'City', text: 'Moose Jaw'),
                  AreaInfo(title: 'Age', text: '25'),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
