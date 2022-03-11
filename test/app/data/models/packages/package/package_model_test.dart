import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/object_model.dart';
import 'package:rastreator/app/data/models/package/package_model.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import '../../../../mocks/package/package_json_mock.dart';
import '../../../../mocks/package/package_model_mock.dart';

void main() {
  PackageModel model = packageModelMock;

  test('should be a subclass of EventEntity', () {
    expect(model, isA<PackageEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(packageJsonMock);

    final result = PackageModel.fromJson(jsonMap);

    expect(result, model);
  });
}
