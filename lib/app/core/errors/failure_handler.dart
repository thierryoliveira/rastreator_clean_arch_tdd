import 'package:rastreator/app/presentation/global/widgets/show_error_snackbar.dart';

import 'failures.dart';

class FailureHandler {
  static handleFailureToSnackbar(Failure failure) {
    showSnackbar(failure: failure);
  }

  static showSnackbar(
      {String title = 'Ops... ocorreu um erro', required Failure failure}) {
    if (failure is InvalidTrackIdFailure) {
      title = 'Ops... código inválido. Verifique e tente novamente';
      showErrorSnackbar(title);
    }
  }
}
