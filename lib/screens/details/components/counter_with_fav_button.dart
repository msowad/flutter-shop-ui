import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../../../widgets/rounded_button.dart';

class CounterWithFavButton extends StatefulWidget {
  const CounterWithFavButton({Key? key}) : super(key: key);

  @override
  State<CounterWithFavButton> createState() => _CounterWithFavButtonState();
}

class _CounterWithFavButtonState extends State<CounterWithFavButton> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedButton(
              onPressed: () {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              },
              icon: const Icon(Icons.remove),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2,
              ),
              child: Text(
                numOfItems.toString().padLeft(2, '0'),
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            RoundedButton(
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        RoundedButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/heart.svg',
            color: const Color(0xFFFF6464),
            width: 20,
          ),
        )
      ],
    );
  }
}
