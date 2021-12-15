import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/errors/failure_handler.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';

class PackageController extends GetxController {
  final _usecase = Get.find<GetPackageTrackUsecase>();

  final txtSearch = TextEditingController();

  PackageEntity? entity;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<PackageEntity> getTrackInfo(String trackId) async {
    var result = await _usecase('LE424296059SE');
    result.fold((failure) => FailureHandler.handleFailureToSnackbar(failure),
        (response) {
      entity = response;
    });
    return entity!;
  }
}
