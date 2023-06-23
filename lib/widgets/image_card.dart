// @dart=2.9

import 'package:flutter/material.dart';
import 'package:undangan_digital/model/image.dart';
import 'package:undangan_digital/widgets/page_transformer.dart';

class ImageCardItem extends StatelessWidget {
  const ImageCardItem({
    Key key,
    @required this.item,
    @required this.pageVisibility,
  }) : super(key: key);

  final ImageItem item;
  final PageVisibility pageVisibility;

  @override
  Widget build(BuildContext context) {
    var image = Image.asset(
      item.imageUrl,
      fit: BoxFit.cover,
      alignment: FractionalOffset(
        0.5 + (pageVisibility.pagePosition / 3),
        0.5,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 8.0,
      ),
      child: Material(
        elevation: 4.0,
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            image,
          ],
        ),
      ),
    );
  }
}
