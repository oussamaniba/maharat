import 'package:auto_route/auto_route.dart';
import 'package:maharat/core/routes/app_route.gr.dart';

@AutoRouterConfig()
class AppRoutes extends $AppRoutes {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: OnboardingRoute.page,
        path: "/onBoarding",
        initial: true,
      ),
      AutoRoute(
        page: HomeRoute.page,
        path: "/home",
      ),
      AutoRoute(
        page: AuthenticationRoute.page,
        path: "/authentication",
      ),
    ];
  }
}
