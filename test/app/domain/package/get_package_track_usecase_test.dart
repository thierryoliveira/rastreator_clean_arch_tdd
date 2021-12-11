import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rastreator/app/core/usecase/errors/failures.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';

import '../../mocks/package/package_entity_mock.dart';
import '../../mocks/package/track_id_mock.dart';

class _MockPackageRepository extends Mock implements IPackageRepository {}

void main() {
  late GetPackageTrackUsecase _usecase;
  late IPackageRepository _repository;

  setUp(() {
    _repository = _MockPackageRepository();
    _usecase = GetPackageTrackUsecase(_repository);
  });

  test('should get a package track entity from the repository', () async {
    when(() => _repository.getTrackInfo(any())).thenAnswer(
        (invocation) async => Right<Failure, PackageEntity>(packageEntityMock));

    final result = await _usecase(trackIdMock);

    expect(result, Right(packageEntityMock));
    verify(() => _repository.getTrackInfo(trackIdMock)).called(1);
  });

  test('should return a ServerFailure when don\'t succeed', () async {
    when(() => _repository.getTrackInfo(any()))
        .thenAnswer((_) async => Left<Failure, PackageEntity>(ServerFailure()));

    final result = await _usecase(trackIdMock);

    expect(result, Left(ServerFailure()));
    verify(() => _repository.getTrackInfo(trackIdMock)).called(1);
  });
}
