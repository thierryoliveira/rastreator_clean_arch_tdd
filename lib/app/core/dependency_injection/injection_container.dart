import 'package:get_it/get_it.dart';
import 'package:rastreator/app/core/http/implementation/http_client.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';
import 'package:rastreator/app/data/datasource/implementations/package_datasource.dart';
import 'package:rastreator/app/data/repositories/package_repository.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';
import 'package:rastreator/app/presentation/package/bloc/package_bloc.dart';

import '../../data/datasource/interfaces/ipackage_datasource.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Package
  sl.registerFactory(
      () => PackageBloc(getPackageTrackUsecase: sl<GetPackageTrackUsecase>()));

  //* Usecases
  sl.registerLazySingleton<GetPackageTrackUsecase>(
      () => GetPackageTrackUsecase(sl<IPackageRepository>()));

  //* Repositories
  sl.registerLazySingleton<IPackageRepository>(
      () => PackageRepository(sl<IPackageDatasource>()));

  //* Datasources
  sl.registerLazySingleton<IPackageDatasource>(
      () => PackageDatasource(sl<IHttpClient>()));

  //* Core
  sl.registerLazySingleton<IHttpClient>(() => HttpClientImplementation());
}
