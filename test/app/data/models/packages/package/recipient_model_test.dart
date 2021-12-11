import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/recipient_model.dart';
import 'package:rastreator/app/domain/entities/package/recipient_entity.dart';

import '../../../../mocks/package/recipient_json_mock.dart';
import '../../../../mocks/package/recipient_model_mock.dart';

void main() {
  RecipientModel model = recipientModelMock;

  test('should be a subclass of PostalTypeEntity', () {
    expect(model, isA<RecipientEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(recipientJsonMock);

    final result = RecipientModel.fromJson(jsonMap);

    expect(result, model);
  });
}
