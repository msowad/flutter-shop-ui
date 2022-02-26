import 'package:flutter/material.dart';
import '../../models/products.dart';
import 'components/body.dart';
import '../../utils/main_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(
        context,
        onPressed: () {
          Navigator.pop(context);
        },
        color: product.color,
        iconColor: Colors.white,
      ),
      body: Body(product: product),
    );
  }
}
