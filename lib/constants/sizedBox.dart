import 'package:flutter/material.dart';

enum MyHeights { small, medium, large, xlarge, xxlarge, xxxlarge }

extension MyHeightsExtension on MyHeights {
  SizedBox toHeight() {
    switch (this) {
      case MyHeights.small:
        return const SizedBox(height: 10);
      case MyHeights.medium:
        return const SizedBox(height: 20);
      case MyHeights.large:
        return const SizedBox(height: 30);
      case MyHeights.xlarge:
        return const SizedBox(height: 40);
      case MyHeights.xxlarge:
        return const SizedBox(height: 50);
      case MyHeights.xxxlarge:
        return const SizedBox(height: 60);
    }
  }
}

enum MyWidths { small, medium, large, xlarge, xxlarge, xxxlarge }

extension MyWidthsExtension on MyWidths {
  SizedBox toWidths() {
    switch (this) {
      case MyWidths.small:
        return const SizedBox(width: 10);
      case MyWidths.medium:
        return const SizedBox(width: 20);
      case MyWidths.large:
        return const SizedBox(width: 30);
      case MyWidths.xlarge:
        return const SizedBox(width: 40);
      case MyWidths.xxlarge:
        return const SizedBox(width: 50);
      case MyWidths.xxxlarge:
        return const SizedBox(width: 60);
    }
  }
}
