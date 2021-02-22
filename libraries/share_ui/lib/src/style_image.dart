import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class StyledCacheImage extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  final BoxFit boxFit;
  final bool isRound;
  final BorderRadius borderRadius;
  final BoxBorder boxBorder;
  final List<BoxShadow> boxShadow;
  final Icon defaultIcon;

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
      this.defaultIcon = const Icon(Icons.error_outline_rounded)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return CachedNetworkImage(
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
        errorWidget: (context, url, error) => defaultIcon,
        imageUrl: url,
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
