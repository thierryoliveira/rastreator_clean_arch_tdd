import 'package:dartz/dartz.dart';
import 'package:rastreator/app/core/usecase/errors/failures.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';

abstract class IPackageRepository {
  Future<Either<Failure, PackageEntity>> getTrackInfo(String trackId);
}
