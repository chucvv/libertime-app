import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_ui/awesome_ui.dart';

class NetworkingImage extends StatefulWidget {
  final String url;
  final double height;
  final double width;
  final BoxFit boxFit;

  const NetworkingImage(
      {Key key, this.url, this.height, this.width, this.boxFit})
      : super(key: key);

  @override
  _NetworkingImageState createState() => _NetworkingImageState();
}

class _NetworkingImageState extends State<NetworkingImage> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    if (isMobile) {
      return CachedNetworkImage(
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => IconButton(
            iconSize: 50.0,
            icon: Icon(IconFonts.arrows_cw),
            color: Colors.redAccent,
            onPressed: () {}),
        imageUrl: widget.url,
        height: widget.height,
        width: widget.width,
        fit: widget.boxFit,
      );
    } else {
      return Image.network(
        widget.url,
        height: widget.height,
        width: widget.width,
        fit: widget.boxFit,
      );
    }
  }
}
