import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/products.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  final double width;

  const ProductTitleWithImage({
    Key? key,
    required this.product,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: "Price\n"),
                    TextSpan(
                      text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              width > 350
                  ? Spacer(flex: (width >= 550 && width <= 910) ? 2 : 1)
                  : const SizedBox(width: kDefaultPadding),
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300,
                    minWidth: 200,
                  ),
                  child: Hero(
                    tag: product.id,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
