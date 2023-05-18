// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSource.dart'
    as _i3;
import 'package:maharat/features/_commons/data/remote/ProgramsRemoteDataSourceImpl.dart'
    as _i4;
import 'package:maharat/features/_commons/data/repository/ProgramsRepository.dart'
    as _i5;
import 'package:maharat/features/_commons/data/repository/ProgramsRepositoryImpl.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ProgramsRemoteDataSource>(
        () => _i4.ProgramsRemoteDataSourceImpl());
    gh.factory<_i5.ProgramsRepository>(() => _i6.ProgramsRepositoryImpl());
    return this;
  }
}
