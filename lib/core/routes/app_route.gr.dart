// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:maharat/core/values/constants.dart' as _i20;
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart'
    as _i21;
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart'
    as _i22;
import 'package:maharat/features/authentication/view/AuthenticationRootScreen.dart'
    as _i16;
import 'package:maharat/features/authentication/view/screens/AuthenticationScreen.dart'
    as _i15;
import 'package:maharat/features/authentication/view/screens/ConfirmPasswordScreen.dart'
    as _i12;
import 'package:maharat/features/authentication/view/screens/ForgotPasswordScreen.dart'
    as _i13;
import 'package:maharat/features/authentication/view/screens/OtpScreen.dart'
    as _i14;
import 'package:maharat/features/details/sections/models/Sections.dart' as _i23;
import 'package:maharat/features/details/sections/view/SectionsScreen.dart'
    as _i9;
import 'package:maharat/features/details/sections/view/SectionsScreenDetails.dart'
    as _i11;
import 'package:maharat/features/details/sections/view/SectionsScreenTest.dart'
    as _i10;
import 'package:maharat/features/home/view/HomeRootScreen.dart' as _i1;
import 'package:maharat/features/home/view/screens/AssessementScreen.dart'
    as _i3;
import 'package:maharat/features/home/view/screens/GroupScreen.dart' as _i4;
import 'package:maharat/features/home/view/screens/SkillsScreen.dart' as _i2;
import 'package:maharat/features/onboarding/view/OnboardingScreen.dart' as _i17;
import 'package:maharat/features/registration/view/RegistrationScreen.dart'
    as _i8;
import 'package:maharat/features/registration/view/screens/first_step.dart'
    as _i6;
import 'package:maharat/features/registration/view/screens/second_step.dart'
    as _i5;
import 'package:maharat/features/registration/view/screens/third_step.dart'
    as _i7;

abstract class $AppRoutes extends _i18.RootStackRouter {
  $AppRoutes({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    HomeRootRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRootRouteArgs>(
          orElse: () => const HomeRootRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeRootScreen(key: args.key),
      );
    },
    SkillsRoute.name: (routeData) {
      final args = routeData.argsAs<SkillsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SkillsScreen(
          skill: args.skill,
          key: args.key,
        ),
      );
    },
    AssessementRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AssessementScreen(),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.GroupScreen(
          key: args.key,
          onTap: args.onTap,
        ),
      );
    },
    SecondStepRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SecondStepScreen(),
      );
    },
    FirstStepRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FirstStepScreen(),
      );
    },
    ThirdStepRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ThirdStepScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.RegistrationScreen(key: args.key),
      );
    },
    SectionsRoute.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SectionsScreen(
          data: args.data,
          key: args.key,
        ),
      );
    },
    SectionsRouteTest.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteTestArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SectionsScreenTest(
          sectionId: args.sectionId,
          selectedIndex: args.selectedIndex,
          allData: args.allData,
          key: args.key,
        ),
      );
    },
    SectionsRouteDetails.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteDetailsArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SectionsScreenDetails(
          selectedId: args.selectedId,
          data: args.data,
          key: args.key,
        ),
      );
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ConfirmPasswordScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.ForgotPasswordScreen(
          onPhone: args.onPhone,
          onNext: args.onNext,
          onBackPress: args.onBackPress,
          key: args.key,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.OtpScreen(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.AuthenticationScreen(
          onLogin: args.onLogin,
          onRegister: args.onRegister,
          onPhoneNumber: args.onPhoneNumber,
          onPassword: args.onPassword,
          key: args.key,
        ),
      );
    },
    AuthenticationRootRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRootRouteArgs>(
          orElse: () => const AuthenticationRootRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.AuthenticationRootScreen(key: args.key),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.OnboardingScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeRootScreen]
class HomeRootRoute extends _i18.PageRouteInfo<HomeRootRouteArgs> {
  HomeRootRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          HomeRootRoute.name,
          args: HomeRootRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRootRoute';

  static const _i18.PageInfo<HomeRootRouteArgs> page =
      _i18.PageInfo<HomeRootRouteArgs>(name);
}

class HomeRootRouteArgs {
  const HomeRootRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'HomeRootRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SkillsScreen]
class SkillsRoute extends _i18.PageRouteInfo<SkillsRouteArgs> {
  SkillsRoute({
    required _i20.SkillsType skill,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          SkillsRoute.name,
          args: SkillsRouteArgs(
            skill: skill,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SkillsRoute';

  static const _i18.PageInfo<SkillsRouteArgs> page =
      _i18.PageInfo<SkillsRouteArgs>(name);
}

class SkillsRouteArgs {
  const SkillsRouteArgs({
    required this.skill,
    this.key,
  });

  final _i20.SkillsType skill;

  final _i19.Key? key;

  @override
  String toString() {
    return 'SkillsRouteArgs{skill: $skill, key: $key}';
  }
}

/// generated route for
/// [_i3.AssessementScreen]
class AssessementRoute extends _i18.PageRouteInfo<void> {
  const AssessementRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AssessementRoute.name,
          initialChildren: children,
        );

  static const String name = 'AssessementRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GroupScreen]
class GroupRoute extends _i18.PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    _i19.Key? key,
    required dynamic Function(_i21.ProgramsDataResponse) onTap,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            onTap: onTap,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i18.PageInfo<GroupRouteArgs> page =
      _i18.PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.onTap,
  });

  final _i19.Key? key;

  final dynamic Function(_i21.ProgramsDataResponse) onTap;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, onTap: $onTap}';
  }
}

/// generated route for
/// [_i5.SecondStepScreen]
class SecondStepRoute extends _i18.PageRouteInfo<void> {
  const SecondStepRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SecondStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondStepRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FirstStepScreen]
class FirstStepRoute extends _i18.PageRouteInfo<void> {
  const FirstStepRoute({List<_i18.PageRouteInfo>? children})
      : super(
          FirstStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstStepRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ThirdStepScreen]
class ThirdStepRoute extends _i18.PageRouteInfo<void> {
  const ThirdStepRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ThirdStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThirdStepRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i18.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i18.PageInfo<RegistrationRouteArgs> page =
      _i18.PageInfo<RegistrationRouteArgs>(name);
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.SectionsScreen]
class SectionsRoute extends _i18.PageRouteInfo<SectionsRouteArgs> {
  SectionsRoute({
    required _i21.ProgramsDataResponse data,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          SectionsRoute.name,
          args: SectionsRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SectionsRoute';

  static const _i18.PageInfo<SectionsRouteArgs> page =
      _i18.PageInfo<SectionsRouteArgs>(name);
}

class SectionsRouteArgs {
  const SectionsRouteArgs({
    required this.data,
    this.key,
  });

  final _i21.ProgramsDataResponse data;

  final _i19.Key? key;

  @override
  String toString() {
    return 'SectionsRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i10.SectionsScreenTest]
class SectionsRouteTest extends _i18.PageRouteInfo<SectionsRouteTestArgs> {
  SectionsRouteTest({
    required String sectionId,
    required int selectedIndex,
    required List<_i22.SectionsDataResponse> allData,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          SectionsRouteTest.name,
          args: SectionsRouteTestArgs(
            sectionId: sectionId,
            selectedIndex: selectedIndex,
            allData: allData,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SectionsRouteTest';

  static const _i18.PageInfo<SectionsRouteTestArgs> page =
      _i18.PageInfo<SectionsRouteTestArgs>(name);
}

class SectionsRouteTestArgs {
  const SectionsRouteTestArgs({
    required this.sectionId,
    required this.selectedIndex,
    required this.allData,
    this.key,
  });

  final String sectionId;

  final int selectedIndex;

  final List<_i22.SectionsDataResponse> allData;

  final _i19.Key? key;

  @override
  String toString() {
    return 'SectionsRouteTestArgs{sectionId: $sectionId, selectedIndex: $selectedIndex, allData: $allData, key: $key}';
  }
}

/// generated route for
/// [_i11.SectionsScreenDetails]
class SectionsRouteDetails
    extends _i18.PageRouteInfo<SectionsRouteDetailsArgs> {
  SectionsRouteDetails({
    required int selectedId,
    required _i23.Sections data,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          SectionsRouteDetails.name,
          args: SectionsRouteDetailsArgs(
            selectedId: selectedId,
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SectionsRouteDetails';

  static const _i18.PageInfo<SectionsRouteDetailsArgs> page =
      _i18.PageInfo<SectionsRouteDetailsArgs>(name);
}

class SectionsRouteDetailsArgs {
  const SectionsRouteDetailsArgs({
    required this.selectedId,
    required this.data,
    this.key,
  });

  final int selectedId;

  final _i23.Sections data;

  final _i19.Key? key;

  @override
  String toString() {
    return 'SectionsRouteDetailsArgs{selectedId: $selectedId, data: $data, key: $key}';
  }
}

/// generated route for
/// [_i12.ConfirmPasswordScreen]
class ConfirmPasswordRoute extends _i18.PageRouteInfo<void> {
  const ConfirmPasswordRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ConfirmPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmPasswordRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i18.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    required dynamic Function(String) onPhone,
    required dynamic Function() onNext,
    required dynamic Function() onBackPress,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(
            onPhone: onPhone,
            onNext: onNext,
            onBackPress: onBackPress,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const _i18.PageInfo<ForgotPasswordRouteArgs> page =
      _i18.PageInfo<ForgotPasswordRouteArgs>(name);
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({
    required this.onPhone,
    required this.onNext,
    required this.onBackPress,
    this.key,
  });

  final dynamic Function(String) onPhone;

  final dynamic Function() onNext;

  final dynamic Function() onBackPress;

  final _i19.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{onPhone: $onPhone, onNext: $onNext, onBackPress: $onBackPress, key: $key}';
  }
}

/// generated route for
/// [_i14.OtpScreen]
class OtpRoute extends _i18.PageRouteInfo<void> {
  const OtpRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.AuthenticationScreen]
class AuthenticationRoute extends _i18.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    required dynamic Function() onLogin,
    required dynamic Function() onRegister,
    required dynamic Function(String) onPhoneNumber,
    required dynamic Function(String) onPassword,
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          AuthenticationRoute.name,
          args: AuthenticationRouteArgs(
            onLogin: onLogin,
            onRegister: onRegister,
            onPhoneNumber: onPhoneNumber,
            onPassword: onPassword,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i18.PageInfo<AuthenticationRouteArgs> page =
      _i18.PageInfo<AuthenticationRouteArgs>(name);
}

class AuthenticationRouteArgs {
  const AuthenticationRouteArgs({
    required this.onLogin,
    required this.onRegister,
    required this.onPhoneNumber,
    required this.onPassword,
    this.key,
  });

  final dynamic Function() onLogin;

  final dynamic Function() onRegister;

  final dynamic Function(String) onPhoneNumber;

  final dynamic Function(String) onPassword;

  final _i19.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{onLogin: $onLogin, onRegister: $onRegister, onPhoneNumber: $onPhoneNumber, onPassword: $onPassword, key: $key}';
  }
}

/// generated route for
/// [_i16.AuthenticationRootScreen]
class AuthenticationRootRoute
    extends _i18.PageRouteInfo<AuthenticationRootRouteArgs> {
  AuthenticationRootRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          AuthenticationRootRoute.name,
          args: AuthenticationRootRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRootRoute';

  static const _i18.PageInfo<AuthenticationRootRouteArgs> page =
      _i18.PageInfo<AuthenticationRootRouteArgs>(name);
}

class AuthenticationRootRouteArgs {
  const AuthenticationRootRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'AuthenticationRootRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.OnboardingScreen]
class OnboardingRoute extends _i18.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i18.PageInfo<OnboardingRouteArgs> page =
      _i18.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}
