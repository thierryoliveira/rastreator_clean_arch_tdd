import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/postal_type_model.dart';
import 'package:rastreator/app/domain/entities/package/postal_type_entity.dart';

import '../../../../mocks/package/postal_type_model_mock.dart';
import '../../../../mocks/package/postal_type_json_mock.dart';

void main() {
  PostalTypeModel model = postalTypeModelMock;

  test('should be a subclass of PostalTypeEntity', () {
    expect(model, isA<PostalTypeEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(postalTypeJsonMock);

    final result = PostalTypeModel.fromJson(jsonMap);

    expect(result, model);
  });
}
