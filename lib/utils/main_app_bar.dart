import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant.dart';

AppBar buildAppBar(
  BuildContext context, {
  required void Function() onPressed,
  Color color = Colors.white,
  Color iconColor = kTextColor,
  Widget? leading,
}) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(
      onPressed: onPressed,
      icon: leading ??
          SvgPicture.asset(
            'assets/icons/back.svg',
            color: iconColor,
          ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: iconColor,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: iconColor,
        ),
      ),
    ],
  );
}
