import 'package:dartz/dartz.dart';
import 'package:rastreator/app/core/usecase/errors/failures.dart';

abstract class IPackageRepository {
  Future<Either<Failure, PackageTrackEntity>> authenticate(String trackId);
}
