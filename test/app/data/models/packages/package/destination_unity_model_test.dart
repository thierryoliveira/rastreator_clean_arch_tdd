import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/destination_unity_model.dart';
import 'package:rastreator/app/data/models/package/unity_model.dart';
import 'package:rastreator/app/domain/entities/package/destination_unity_entity.dart';
import 'package:rastreator/app/domain/entities/package/unity_entity.dart';

import '../../../../mocks/package/destination_unity_json_mock.dart';
import '../../../../mocks/package/destination_unity_model_mock.dart';

void main() {
  DestinationUnityModel model = destinationUnityModelMock;

  test('should be a subclass of EventEntity', () {
    expect(model, isA<DestinationUnityEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(destinationUnityJsonMock);

    final result = DestinationUnityModel.fromJson(jsonMap);

    expect(result, model);
  });
}
