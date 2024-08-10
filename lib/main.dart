import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/views/dashboard_view.dart';

void main() {
  // CachedSvg.svgPrecacheImage();
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const Horizon(),
  ));
}

class Horizon extends StatelessWidget {
  const Horizon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
