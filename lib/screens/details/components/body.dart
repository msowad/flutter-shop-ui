import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/products.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * (size.height > 450 ? 1 : 2),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * (size.width > 800 ? 0.3 : 0),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      const CounterWithFavButton(),
                      const SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                  width: size.width,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
