import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rastreator/app/core/errors/exceptions.dart';
import 'package:rastreator/app/core/errors/failures.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/data/repositories/package_repository.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';

import '../../../mocks/package/package_model_mock.dart';
import '../../../mocks/package/track_id_mock.dart';

class _MockPackageDatasource extends Mock implements IPackageDatasource {}

void main() {
  late IPackageRepository repository;
  late IPackageDatasource datasource;

  setUp(() {
    datasource = _MockPackageDatasource();
    repository = PackageRepository(datasource);
  });

  group('get track info', () {
    test('should return auth model when call the datasource', () async {
      when(() => datasource.getTrackInfo(any()))
          .thenAnswer((_) async => packageModelMock);

      final result = await repository.getTrackInfo(trackIdMock);

      expect(result, Right(packageModelMock));
      verify(() => datasource.getTrackInfo(trackIdMock)).called(1);
    });

    test(
        'should returns a server failure when the call to datasource is unsucessful',
        () async {
      //Arrange
      when(() => datasource.getTrackInfo(trackIdMock))
          .thenThrow(ServerException());
      //Act
      final result = await repository.getTrackInfo(trackIdMock);

      //Assert
      expect(result, Left(ServerFailure()));
    });
  });
}
