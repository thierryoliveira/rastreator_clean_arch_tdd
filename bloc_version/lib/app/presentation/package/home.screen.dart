import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rastreator/app/core/colors.dart';
import 'package:rastreator/app/presentation/global/widgets/custom_loading.dart';
import 'package:rastreator/app/presentation/package/widgets/no_package.screen.dart';
import 'package:rastreator/app/presentation/package/widgets/package_track_info.screen.dart';

import '../../core/dependency_injection/injection_container.dart';
import 'bloc/package_bloc.dart';
import 'widgets/dialog_add_package.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        //TODO* REFACTOR HERE
        floatingActionButton: BlocBuilder<PackageBloc, PackageState>(
          builder: (context, state) {
            if (state is LoadedState) return Container();
            return Padding(
              padding: EdgeInsets.only(
                  bottom: size.height * .03, right: size.width * .03),
              child: FloatingActionButton(
                backgroundColor: kGreenColor,
                onPressed: () {
                  showDialogAddPackage(context: context);
                },
                child: Icon(
                  Icons.add,
                ),
              ),
            );
          },
        ),
        backgroundColor: kDarkBlueColor,
        body: SafeArea(
          child: BlocBuilder<PackageBloc, PackageState>(
            builder: (context, state) {
              final bloc = BlocProvider.of<PackageBloc>(context);
              if (state is LoadingState) return CustomLoading();
              if (state is LoadedState)
                return PackageTrackInfoScreen(
                  trackId: bloc.trackId,
                  packageTitle: bloc.packageTitle,
                  package: state.package,
                );
              return NoPackageScreen();
            },
          ),
        ));
  }
}
