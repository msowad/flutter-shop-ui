import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';
import 'components/body.dart';
import '../../utils/main_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: const Icon(
          Icons.home_outlined,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      body: const Body(),
    );
  }
}
