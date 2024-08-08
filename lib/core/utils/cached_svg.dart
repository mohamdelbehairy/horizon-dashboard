import 'package:flutter_svg/flutter_svg.dart';
import 'package:horizon/core/utils/assets.dart';

class CachedSvg {
  static void svgPrecacheImage() {
    const cacheSvg = [
      Assets.imagesCalendarToday,
      Assets.imagesDarkMode,
      Assets.imagesDashboard,
      Assets.imagesDoller,
      Assets.imagesDone,
      Assets.imagesFiles,
      Assets.imagesKanban,
      Assets.imagesMark,
      Assets.imagesMarket,
      Assets.imagesNewTask,
      Assets.imagesNotification,
      Assets.imagesProfile,
      Assets.imagesSearch,
      Assets.imagesSignin,
      Assets.imagesTables,
      Assets.imagesUpgradeToPro,
    ];
    for (var element in cacheSvg) {
      var loader = SvgAssetLoader(element);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
