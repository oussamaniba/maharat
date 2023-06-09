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
      ),
      AutoRoute(
        page: AuthenticationRootRoute.page,
        path: "/authRoot",
        children: [
          AutoRoute(
            page: AuthenticationRoute.page,
            path: "login",
          ),
          AutoRoute(
            page: ForgotPasswordRoute.page,
            path: "recover",
          ),
          AutoRoute(
            page: OtpRoute.page,
            path: "otp",
          ),
          AutoRoute(
            page: ConfirmPasswordRoute.page,
            path: "confirm",
          ),
        ],
      ),
      AutoRoute(
        page: RegistrationRoute.page,
        path: "/registration",
        initial: true,
        children: [
          AutoRoute(
            page: FirstStepRoute.page,
            path: "first",
          ),
          AutoRoute(
            page: SecondStepRoute.page,
            path: "second",
          ),
          AutoRoute(
            page: ThirdStepRoute.page,
            path: "third",
          ),
        ],
      ),
      AutoRoute(
        page: HomeRootRoute.page,
        path: "/home",
        children: [
          AutoRoute(
            page: GroupRoute.page,
            path: "groups",
          ),
          AutoRoute(
            page: SkillsRoute.page,
            path: "skills",
          ),
          AutoRoute(
            page: AssessementRoute.page,
            path: "skills",
          ),
        ],
      ),
      AutoRoute(
        page: SectionsRoute.page,
        path: "/sections",
      ),
      AutoRoute(
        page: SectionsRouteDetails.page,
        path: "/sections/details",
      ),
      AutoRoute(
        page: SectionsRouteTest.page,
        path: "/sections/test",
      ),
      AutoRoute(
        page: SettingRoute.page,
        path: "/setting",
      ),
      AutoRoute(
        page: AboutUsRoute.page,
        path: "/aboutUs",
      ),
      AutoRoute(
        page: TermsAndConditions.page,
        path: "/terms",
      ),
      AutoRoute(
        page: ContactUsRoute.page,
        path: "/contactUs",
      ),
    ];
  }
}
