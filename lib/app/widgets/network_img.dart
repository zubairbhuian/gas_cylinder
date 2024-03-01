import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../core/config/color.dart';
import 'app_indecator.dart';

class NetworkImg extends StatelessWidget {
  final String url;
  final String? errUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const NetworkImg(this.url, {super.key, this.errUrl, this.width, this.height, this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Center(child: AppIndecator(value: downloadProgress.progress)),
      errorWidget: (context, url, error) {
        if (errUrl == null) {
          return  const Center(
              child: Icon(
            Icons.error,
            color: kDisabledTextColor,
          ));
        }
        return Image.asset(
          errUrl ?? 'assets/images/default_user.png',
          fit:fit,
        );
      },
    );
  }
}
