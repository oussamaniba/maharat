import 'package:maharat/core/di/injectable.dart';
import 'package:maharat/core/routes/app_route.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends BaseViewModel {
  final AppRoutes routes = getIt<AppRoutes>();
}
