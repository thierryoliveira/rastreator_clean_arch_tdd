import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';
import 'package:rastreator/app/data/datasource/implementations/package_datasource.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/data/endpoints/package_endpoints.dart';
import '../../mocks/package/track_id_mock.dart';
import '../../mocks/package/track_info_json_mock.dart';

class _MockHttpClient extends Mock implements IHttpClient {}

void main() {
  late IPackageDatasource datasource;
  late IHttpClient client;

  setUp(() {
    client = _MockHttpClient();
    datasource = PackageDatasource(client);
  });

  group('get track info', () {
    final String url = PackageEndpoints.getTrackInfo(trackIdMock);

    void successMock() {
      when(() => client.get(url)).thenAnswer((_) async =>
          HttpResponse(data: json.decode(trackInfoJsonMock), statusCode: 200));
    }

    test('should call get method to get track info with correct url', () async {
      successMock();
      await datasource.getTrackInfo(trackIdMock);

      verify(() => client.get(url)).called(1);
    });
  });
}
