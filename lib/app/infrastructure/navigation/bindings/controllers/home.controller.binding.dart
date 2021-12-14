import 'package:get/get.dart';
import 'package:rastreator/app/core/http/implementation/http_client.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';
import 'package:rastreator/app/data/datasource/implementations/package_datasource.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<IHttpClient>(() => HttpClientImplementation());
    Get.lazyPut<IPackageDatasource>(
        () => PackageDatasource(Get.find<IHttpClient>()));
    // Get.lazyPut<IPackageRepository>(() => PackageRepos(Get.find<IHttpClient>()));
  }
}
