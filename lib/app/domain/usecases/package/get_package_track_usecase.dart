import 'package:dartz/dartz.dart';
import 'package:rastreator/app/core/errors/failures.dart';
import 'package:rastreator/app/core/usecase/usecase.dart';
import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:rastreator/app/domain/repositories/ipackage_repository.dart';

class GetPackageTrackUsecase implements Usecase<PackageEntity, String> {
  final IPackageRepository _packageRepository;

  GetPackageTrackUsecase(this._packageRepository);
  @override
  Future<Either<Failure, PackageEntity>> call(String params) async {
    return await _packageRepository.getTrackInfo(params);
  }
}
