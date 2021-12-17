import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rastreator/app/core/errors/failure_handler.dart';

import 'package:rastreator/app/domain/entities/package/event_entity.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';

class PackageController extends GetxController {
  final _usecase = Get.find<GetPackageTrackUsecase>();

  final txtSearch = TextEditingController();
  final txtPackageName = TextEditingController();
  final txtTrackId = TextEditingController();

  final trackId = ''.obs;

  final packageName = ''.obs;

  final _events = <EventEntity>[].obs;
  get events => this._events;
  set events(value) => this._events.value = value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<List<EventEntity>> getTrackInfo(String trackId) async {
    var result = await _usecase(trackId.toUpperCase());
    List<EventEntity> eventList = <EventEntity>[];
    result.fold((failure) => FailureHandler.handleFailureToSnackbar(failure),
        (response) {
      eventList = response.objects[0].events;
      events.value = response.objects[0].events;
    });
    update();
    return eventList;
  }

  clearEvents() {
    events.value = <EventEntity>[];
    txtTrackId.clear();
    txtPackageName.clear();
    packageName.value = '';
    trackId.value = '';
  }
}
