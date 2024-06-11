import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:km_test/core/theme/app_theme.dart';
import 'package:km_test/core/utils/bindings.dart';
import 'package:km_test/routes/pages.dart';
import 'package:km_test/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KM Test',
      theme: AppTheme.appTheme,
      initialRoute: Routes.SPLASH,
      getPages: Pages.routes,
      initialBinding: InitBinding(),
    );
  }
}
