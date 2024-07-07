// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mood_up_recruitment_task/domain/data_sources/data_source.dart'
    as _i3;
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart'
    as _i4;
import 'package:mood_up_recruitment_task/features/pages/home_page/cubit/home_page_cubit.dart'
    as _i5;
import 'package:mood_up_recruitment_task/features/pages/search_page/cubit/search_page_cubit.dart'
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
    gh.factory<_i3.RemoteDataSource>(() => _i3.RemoteDataSource());
    gh.factory<_i4.DataRepository>(
        () => _i4.DataRepository(remoteDataSource: gh<_i3.RemoteDataSource>()));
    gh.factory<_i5.HomePageCubit>(
        () => _i5.HomePageCubit(dataRepository: gh<_i4.DataRepository>()));
    gh.factory<_i6.SearchPageCubit>(
        () => _i6.SearchPageCubit(dataRepository: gh<_i4.DataRepository>()));
    return this;
  }
}
