import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const HomeScreen());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
