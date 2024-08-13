import 'package:flutter/material.dart';

import '../../utilities/enums/common/app_status.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    required this.child,
    required this.status,
    super.key,
    this.errorView,
  });
  final Widget child;
  final Widget? errorView;
  final AppStatus status;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case AppStatus.success:
        // EasyLoading.dismiss();
        return child;
      case AppStatus.initial:
      case AppStatus.inProgress:
        // EasyLoading.show();
        return Container();
      case AppStatus.error:
        // EasyLoading.dismiss();
        return errorView ?? Container();
    }
  }
}
