// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:maharat/core/values/constants.dart' as _i27;
import 'package:maharat/features/_commons/data/remote/response/ProgramsDataResponse.dart'
    as _i24;
import 'package:maharat/features/_commons/data/remote/response/SectionsDataResponse.dart'
    as _i26;
import 'package:maharat/features/authentication/view/AuthenticationRootScreen.dart'
    as _i1;
import 'package:maharat/features/authentication/view/screens/AuthenticationScreen.dart'
    as _i2;
import 'package:maharat/features/authentication/view/screens/ConfirmPasswordScreen.dart'
    as _i3;
import 'package:maharat/features/authentication/view/screens/ForgotPasswordScreen.dart'
    as _i4;
import 'package:maharat/features/authentication/view/screens/OtpScreen.dart'
    as _i5;
import 'package:maharat/features/details/sections/models/Sections.dart' as _i25;
import 'package:maharat/features/details/sections/view/SectionsScreen.dart'
    as _i6;
import 'package:maharat/features/details/sections/view/SectionsScreenDetails.dart'
    as _i7;
import 'package:maharat/features/details/sections/view/SectionsScreenTest.dart'
    as _i8;
import 'package:maharat/features/general/AboutUsScreen.dart' as _i9;
import 'package:maharat/features/general/ContactUsScreen.dart' as _i10;
import 'package:maharat/features/general/TermsAndConditions.dart' as _i11;
import 'package:maharat/features/home/view/HomeRootScreen.dart' as _i12;
import 'package:maharat/features/home/view/screens/AssessementScreen.dart'
    as _i13;
import 'package:maharat/features/home/view/screens/GroupScreen.dart' as _i14;
import 'package:maharat/features/home/view/screens/SkillsScreen.dart' as _i15;
import 'package:maharat/features/onboarding/view/OnboardingScreen.dart' as _i16;
import 'package:maharat/features/registration/view/RegistrationScreen.dart'
    as _i17;
import 'package:maharat/features/registration/view/screens/first_step.dart'
    as _i18;
import 'package:maharat/features/registration/view/screens/second_step.dart'
    as _i19;
import 'package:maharat/features/registration/view/screens/third_step.dart'
    as _i20;
import 'package:maharat/features/settings/view/SettingScreen.dart' as _i21;

abstract class $AppRoutes extends _i22.RootStackRouter {
  $AppRoutes({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AuthenticationRootRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRootRouteArgs>(
          orElse: () => const AuthenticationRootRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AuthenticationRootScreen(key: args.key),
      );
    },
    AuthenticationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthenticationScreen(
          onLogin: args.onLogin,
          onRegister: args.onRegister,
          onPhoneNumber: args.onPhoneNumber,
          onPassword: args.onPassword,
          key: args.key,
        ),
      );
    },
    ConfirmPasswordRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ConfirmPasswordScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ForgotPasswordScreen(
          onPhone: args.onPhone,
          onNext: args.onNext,
          onBackPress: args.onBackPress,
          key: args.key,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OtpScreen(),
      );
    },
    SectionsRoute.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SectionsScreen(
          data: args.data,
          key: args.key,
        ),
      );
    },
    SectionsRouteDetails.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteDetailsArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SectionsScreenDetails(
          selectedId: args.selectedId,
          data: args.data,
          key: args.key,
        ),
      );
    },
    SectionsRouteTest.name: (routeData) {
      final args = routeData.argsAs<SectionsRouteTestArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.SectionsScreenTest(
          sectionId: args.sectionId,
          selectedIndex: args.selectedIndex,
          allData: args.allData,
          key: args.key,
        ),
      );
    },
    AboutUsRoute.name: (routeData) {
      final args = routeData.argsAs<AboutUsRouteArgs>(
          orElse: () => const AboutUsRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.AboutUsScreen(key: args.key),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ContactUsScreen(),
      );
    },
    TermsAndConditions.name: (routeData) {
      final args = routeData.argsAs<TermsAndConditionsArgs>(
          orElse: () => const TermsAndConditionsArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.TermsAndConditions(key: args.key),
      );
    },
    HomeRootRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRootRouteArgs>(
          orElse: () => const HomeRootRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.HomeRootScreen(key: args.key),
      );
    },
    AssessementRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.AssessementScreen(),
      );
    },
    GroupRoute.name: (routeData) {
      final args = routeData.argsAs<GroupRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.GroupScreen(
          key: args.key,
          onTap: args.onTap,
        ),
      );
    },
    SkillsRoute.name: (routeData) {
      final args = routeData.argsAs<SkillsRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.SkillsScreen(
          skill: args.skill,
          key: args.key,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.OnboardingScreen(key: args.key),
      );
    },
    RegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouteArgs>(
          orElse: () => const RegistrationRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.RegistrationScreen(key: args.key),
      );
    },
    FirstStepRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.FirstStepScreen(),
      );
    },
    SecondStepRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SecondStepScreen(),
      );
    },
    ThirdStepRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ThirdStepScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      final args = routeData.argsAs<SettingRouteArgs>(
          orElse: () => const SettingRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.SettingScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthenticationRootScreen]
class AuthenticationRootRoute
    extends _i22.PageRouteInfo<AuthenticationRootRouteArgs> {
  AuthenticationRootRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          AuthenticationRootRoute.name,
          args: AuthenticationRootRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthenticationRootRoute';

  static const _i22.PageInfo<AuthenticationRootRouteArgs> page =
      _i22.PageInfo<AuthenticationRootRouteArgs>(name);
}

class AuthenticationRootRouteArgs {
  const AuthenticationRootRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'AuthenticationRootRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthenticationScreen]
class AuthenticationRoute extends _i22.PageRouteInfo<AuthenticationRouteArgs> {
  AuthenticationRoute({
    required dynamic Function() onLogin,
    required dynamic Function() onRegister,
    required dynamic Function(String) onPhoneNumber,
    required dynamic Function(String) onPassword,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
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

  static const _i22.PageInfo<AuthenticationRouteArgs> page =
      _i22.PageInfo<AuthenticationRouteArgs>(name);
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

  final _i23.Key? key;

  @override
  String toString() {
    return 'AuthenticationRouteArgs{onLogin: $onLogin, onRegister: $onRegister, onPhoneNumber: $onPhoneNumber, onPassword: $onPassword, key: $key}';
  }
}

/// generated route for
/// [_i3.ConfirmPasswordScreen]
class ConfirmPasswordRoute extends _i22.PageRouteInfo<void> {
  const ConfirmPasswordRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ConfirmPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConfirmPasswordRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i22.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    required dynamic Function(String) onPhone,
    required dynamic Function() onNext,
    required dynamic Function() onBackPress,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
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

  static const _i22.PageInfo<ForgotPasswordRouteArgs> page =
      _i22.PageInfo<ForgotPasswordRouteArgs>(name);
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

  final _i23.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{onPhone: $onPhone, onNext: $onNext, onBackPress: $onBackPress, key: $key}';
  }
}

/// generated route for
/// [_i5.OtpScreen]
class OtpRoute extends _i22.PageRouteInfo<void> {
  const OtpRoute({List<_i22.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SectionsScreen]
class SectionsRoute extends _i22.PageRouteInfo<SectionsRouteArgs> {
  SectionsRoute({
    required _i24.ProgramsDataResponse data,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SectionsRoute.name,
          args: SectionsRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SectionsRoute';

  static const _i22.PageInfo<SectionsRouteArgs> page =
      _i22.PageInfo<SectionsRouteArgs>(name);
}

class SectionsRouteArgs {
  const SectionsRouteArgs({
    required this.data,
    this.key,
  });

  final _i24.ProgramsDataResponse data;

  final _i23.Key? key;

  @override
  String toString() {
    return 'SectionsRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [_i7.SectionsScreenDetails]
class SectionsRouteDetails
    extends _i22.PageRouteInfo<SectionsRouteDetailsArgs> {
  SectionsRouteDetails({
    required int selectedId,
    required _i25.Sections data,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
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

  static const _i22.PageInfo<SectionsRouteDetailsArgs> page =
      _i22.PageInfo<SectionsRouteDetailsArgs>(name);
}

class SectionsRouteDetailsArgs {
  const SectionsRouteDetailsArgs({
    required this.selectedId,
    required this.data,
    this.key,
  });

  final int selectedId;

  final _i25.Sections data;

  final _i23.Key? key;

  @override
  String toString() {
    return 'SectionsRouteDetailsArgs{selectedId: $selectedId, data: $data, key: $key}';
  }
}

/// generated route for
/// [_i8.SectionsScreenTest]
class SectionsRouteTest extends _i22.PageRouteInfo<SectionsRouteTestArgs> {
  SectionsRouteTest({
    required String sectionId,
    required int selectedIndex,
    required List<_i26.SectionsDataResponse> allData,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
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

  static const _i22.PageInfo<SectionsRouteTestArgs> page =
      _i22.PageInfo<SectionsRouteTestArgs>(name);
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

  final List<_i26.SectionsDataResponse> allData;

  final _i23.Key? key;

  @override
  String toString() {
    return 'SectionsRouteTestArgs{sectionId: $sectionId, selectedIndex: $selectedIndex, allData: $allData, key: $key}';
  }
}

/// generated route for
/// [_i9.AboutUsScreen]
class AboutUsRoute extends _i22.PageRouteInfo<AboutUsRouteArgs> {
  AboutUsRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          AboutUsRoute.name,
          args: AboutUsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AboutUsRoute';

  static const _i22.PageInfo<AboutUsRouteArgs> page =
      _i22.PageInfo<AboutUsRouteArgs>(name);
}

class AboutUsRouteArgs {
  const AboutUsRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'AboutUsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ContactUsScreen]
class ContactUsRoute extends _i22.PageRouteInfo<void> {
  const ContactUsRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TermsAndConditions]
class TermsAndConditions extends _i22.PageRouteInfo<TermsAndConditionsArgs> {
  TermsAndConditions({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          TermsAndConditions.name,
          args: TermsAndConditionsArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TermsAndConditions';

  static const _i22.PageInfo<TermsAndConditionsArgs> page =
      _i22.PageInfo<TermsAndConditionsArgs>(name);
}

class TermsAndConditionsArgs {
  const TermsAndConditionsArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'TermsAndConditionsArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.HomeRootScreen]
class HomeRootRoute extends _i22.PageRouteInfo<HomeRootRouteArgs> {
  HomeRootRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          HomeRootRoute.name,
          args: HomeRootRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRootRoute';

  static const _i22.PageInfo<HomeRootRouteArgs> page =
      _i22.PageInfo<HomeRootRouteArgs>(name);
}

class HomeRootRouteArgs {
  const HomeRootRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'HomeRootRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.AssessementScreen]
class AssessementRoute extends _i22.PageRouteInfo<void> {
  const AssessementRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AssessementRoute.name,
          initialChildren: children,
        );

  static const String name = 'AssessementRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.GroupScreen]
class GroupRoute extends _i22.PageRouteInfo<GroupRouteArgs> {
  GroupRoute({
    _i23.Key? key,
    required dynamic Function(_i24.ProgramsDataResponse) onTap,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          GroupRoute.name,
          args: GroupRouteArgs(
            key: key,
            onTap: onTap,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i22.PageInfo<GroupRouteArgs> page =
      _i22.PageInfo<GroupRouteArgs>(name);
}

class GroupRouteArgs {
  const GroupRouteArgs({
    this.key,
    required this.onTap,
  });

  final _i23.Key? key;

  final dynamic Function(_i24.ProgramsDataResponse) onTap;

  @override
  String toString() {
    return 'GroupRouteArgs{key: $key, onTap: $onTap}';
  }
}

/// generated route for
/// [_i15.SkillsScreen]
class SkillsRoute extends _i22.PageRouteInfo<SkillsRouteArgs> {
  SkillsRoute({
    required _i27.SkillsType skill,
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SkillsRoute.name,
          args: SkillsRouteArgs(
            skill: skill,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SkillsRoute';

  static const _i22.PageInfo<SkillsRouteArgs> page =
      _i22.PageInfo<SkillsRouteArgs>(name);
}

class SkillsRouteArgs {
  const SkillsRouteArgs({
    required this.skill,
    this.key,
  });

  final _i27.SkillsType skill;

  final _i23.Key? key;

  @override
  String toString() {
    return 'SkillsRouteArgs{skill: $skill, key: $key}';
  }
}

/// generated route for
/// [_i16.OnboardingScreen]
class OnboardingRoute extends _i22.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i22.PageInfo<OnboardingRouteArgs> page =
      _i22.PageInfo<OnboardingRouteArgs>(name);
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.RegistrationScreen]
class RegistrationRoute extends _i22.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          RegistrationRoute.name,
          args: RegistrationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i22.PageInfo<RegistrationRouteArgs> page =
      _i22.PageInfo<RegistrationRouteArgs>(name);
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.FirstStepScreen]
class FirstStepRoute extends _i22.PageRouteInfo<void> {
  const FirstStepRoute({List<_i22.PageRouteInfo>? children})
      : super(
          FirstStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstStepRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SecondStepScreen]
class SecondStepRoute extends _i22.PageRouteInfo<void> {
  const SecondStepRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SecondStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondStepRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ThirdStepScreen]
class ThirdStepRoute extends _i22.PageRouteInfo<void> {
  const ThirdStepRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ThirdStepRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThirdStepRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SettingScreen]
class SettingRoute extends _i22.PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i22.PageInfo<SettingRouteArgs> page =
      _i22.PageInfo<SettingRouteArgs>(name);
}

class SettingRouteArgs {
  const SettingRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key}';
  }
}
