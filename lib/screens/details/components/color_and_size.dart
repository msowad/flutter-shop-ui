import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/products.dart';

class ColorAndSize extends StatefulWidget {
  final Product product;

  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ColorAndSize> createState() => _ColorAndSizeState();
}

class _ColorAndSizeState extends State<ColorAndSize> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: [
                  _buildColorDot(
                    const Color(0xFF356C95),
                    isSelected: selectedColorIndex == 0,
                    onPress: () => setState(() => selectedColorIndex = 0),
                  ),
                  _buildColorDot(
                    const Color(0xFFF8C078),
                    isSelected: selectedColorIndex == 1,
                    onPress: () => setState(() => selectedColorIndex = 1),
                  ),
                  _buildColorDot(
                    const Color(0xFFA29B9B),
                    isSelected: selectedColorIndex == 2,
                    onPress: () => setState(() => selectedColorIndex = 2),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${widget.product.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  InkWell _buildColorDot(
    Color color, {
    required void Function() onPress,
    bool isSelected = false,
  }) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2,
        ),
        padding: const EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
