import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/unity_model.dart';
import 'package:rastreator/app/domain/entities/package/unity_entity.dart';

import '../../../mocks/package/unity_json_mock.dart';
import '../../../mocks/package/unity_model_mock.dart';

void main() {
  UnityModel model = unityModelMock;

  test('should be a subclass of EventEntity', () {
    expect(model, isA<UnityEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(unityJsonMock);

    final result = UnityModel.fromJson(jsonMap);

    expect(result, model);
  });
}
