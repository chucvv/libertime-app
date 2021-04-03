import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

typedef onTapImage = void Function();

class StyledCacheImage extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final BoxFit boxFit;
  final bool isRound;
  final BorderRadius borderRadius;
  final BoxBorder boxBorder;
  final List<BoxShadow> boxShadow;
  final Widget defaultWidget;
  final onTapImage onTap;

  const StyledCacheImage(
      {Key key,
      this.url,
      this.height,
      this.width,
      this.boxFit = BoxFit.cover,
      this.isRound = false,
      this.borderRadius,
      this.boxBorder,
      this.boxShadow,
      this.defaultWidget = const Icon(Icons.error_outline_rounded),
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return GestureDetector(
        child: CachedNetworkImage(
          imageBuilder: (context, imageProvider) => Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              shape: isRound ? BoxShape.circle : BoxShape.rectangle,
              border: boxBorder,
              borderRadius: borderRadius,
              boxShadow: boxShadow,
              image: DecorationImage(
                image: imageProvider,
                fit: boxFit,
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(
            value: downloadProgress.progress,
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
          ),
          errorWidget: (context, url, error) => defaultWidget,
          imageUrl: url,
        ),
        onTap: onTap,
      );
    } else {
      return Image.network(
        url,
        height: height,
        width: width,
        fit: boxFit,
      );
    }
  }
}
