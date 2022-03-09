import 'package:get/get.dart';
import 'package:rastreator/app/core/http/implementation/http_client.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';
import 'package:rastreator/app/data/datasource/implementations/package_datasource.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/data/repositories/package_repository.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';
import 'package:rastreator/app/presentation/package/controllers/package.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackageController>(
      () => PackageController(),
    );

    Get.lazyPut<IHttpClient>(() => HttpClientImplementation());
    Get.lazyPut<IPackageDatasource>(
        () => PackageDatasource(Get.find<IHttpClient>()));
    Get.lazyPut<IPackageRepository>(
        () => PackageRepository(Get.find<IPackageDatasource>()));
    Get.lazyPut<GetPackageTrackUsecase>(
        () => GetPackageTrackUsecase(Get.find<IPackageRepository>()));
  }
}
