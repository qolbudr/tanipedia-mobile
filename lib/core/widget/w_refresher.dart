import 'package:flutter/material.dart';
import 'package:tanipedia_mobile/core/themes/color_theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class WRefresher extends StatelessWidget {
  const WRefresher({
    super.key,
    required this.child,
    required this.controller,
    this.onRefresh,
    this.onLoading,
    this.reverse = false,
  });

  final Widget child;
  final RefreshController controller;
  final void Function()? onRefresh;
  final void Function()? onLoading;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      reverse: reverse,
      header: const MaterialClassicHeader(
        color: TColors.primaryColor,
      ),
      controller: controller,
      enablePullDown: onRefresh != null,
      enablePullUp: onLoading != null,
      onLoading: onLoading,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
