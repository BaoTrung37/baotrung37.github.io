// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../config/app_config.dart' as _i650;
import '../presentation/app/cubit/app_cubit.dart' as _i202;
import '../presentation/pages/splash/cubit/splash_cubit.dart' as _i386;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i386.SplashCubit>(() => _i386.SplashCubit());
    gh.lazySingleton<_i650.AppConfig>(() => _i650.AppConfig());
    gh.lazySingleton<_i202.AppCubit>(() => _i202.AppCubit());
    return this;
  }
}
