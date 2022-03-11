import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:rastreator/app/data/models/package/event_model.dart';
import 'package:rastreator/app/domain/entities/package/event_entity.dart';

import '../../../../mocks/package/event_json_mock.dart';
import '../../../../mocks/package/event_model_mock.dart';

void main() {
  EventModel model = eventModelMock;

  test('should be a subclass of EventEntity', () {
    expect(model, isA<EventEntity>());
  });

  test('should return a valid model', () {
    final jsonMap = json.decode(eventJsonMock);

    final result = EventModel.fromJson(jsonMap);

    expect(result, model);
  });
}
