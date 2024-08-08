import 'package:flutter/material.dart';
import 'package:horizon/features/dashboard/presentation/views/dashboard_view.dart';

void main() {
  // CachedSvg.svgPrecacheImage();
  runApp(const Horizon());
}

class Horizon extends StatelessWidget {
  const Horizon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
