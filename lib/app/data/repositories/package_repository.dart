import 'package:rastreator/app/core/errors/exceptions.dart';
import 'package:rastreator/app/core/errors/failures.dart';
import 'package:rastreator/app/data/datasource/interfaces/ipackage_datasource.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';

class PackageRepository implements IPackageRepository {
  final IPackageDatasource datasource;

  PackageRepository(this.datasource);

  @override
  Future<Either<Failure, PackageEntity>> getTrackInfo(String trackId) async {
    try {
      final result = await datasource.getTrackInfo(trackId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
