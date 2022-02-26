import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constant.dart';
import '../../../models/products.dart';
import '../../../widgets/rounded_button.dart';

class AddToCart extends StatelessWidget {
  final Product product;

  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            width: 20,
          ),
        ),
        const SizedBox(width: kDefaultPadding),
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: product.color,
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: Text(
              "Buy  Now".toUpperCase(),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
