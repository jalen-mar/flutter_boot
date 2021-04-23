import 'package:flutter_boot/model/ThemeConfig.dart';
import 'package:flutter_boot/router/RouterHelp.dart';
import 'package:flutter_boot/router/RouterResource.dart';
import 'package:flutter/material.dart';

class DecorView extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  final RouterResource resource;
  final ThemeConfig? config;

  DecorView(this.resource, this.config): super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: config?.applicationName??"Default Application Name",
      initialRoute: resource.initialRoute(),
      routes: RouterHelp.init(resource),
      debugShowCheckedModeBanner: config?.debugShowCheckedModeBanner??false,
      showSemanticsDebugger: config?.showSemanticsDebugger??false,
      checkerboardRasterCacheImages: config?.checkerboardRasterCacheImages??false,
      showPerformanceOverlay: config?.showPerformanceOverlay??false,
      checkerboardOffscreenLayers: config?.checkerboardOffscreenLayers??false,
      theme: ThemeData(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: config?.backgroundColor,
        primarySwatch: config?.themeColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}