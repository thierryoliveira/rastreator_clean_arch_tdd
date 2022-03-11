import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/object_model.dart';
import 'package:rastreator/app/domain/entities/package/object_entity.dart';

import '../../../../mocks/package/destination_unity_json_mock.dart';
import '../../../../mocks/package/object_json_mock.dart';
import '../../../../mocks/package/object_model_mock.dart';

void main() {
  ObjectModel model = objectModelMock;

  test('should be a subclass of EventEntity', () {
    expect(model, isA<ObjectEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(objectJsonMock);

    final result = ObjectModel.fromJson(jsonMap);

    expect(result, model);
  });
}
