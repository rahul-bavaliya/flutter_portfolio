import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/components/animated_progress_indicator.dart';
import 'package:flutter_portfolio/screens/home/components/coding.dart';
import 'package:flutter_portfolio/screens/home/components/knowledges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset("assets/icons/download.svg")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        InkWell(
                          child: IconButton(
                            onPressed: () {
                              _launchUrl(url: linkedinUrl);
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          onHover: (value) {
                            if (value) {
                              print('Change color.');
                            } else {
                              print('Do not change color.');
                            }
                          },
                        ),
                        IconButton(
                            onPressed: () {
                              _launchUrl(url: githubUrl);
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg")),
                        IconButton(
                            onPressed: () {
                              _launchUrl(url: twitterUrl);
                            },
                            icon: SvgPicture.asset("assets/icons/twitter.svg")),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl({required String url}) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
