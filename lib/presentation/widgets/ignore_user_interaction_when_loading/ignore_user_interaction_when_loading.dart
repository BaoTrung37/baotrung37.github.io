import 'package:flutter/material.dart';

import '../../utilities/enums/common/app_status.dart';

class IgnoreUserInteractionWhenLoading extends StatelessWidget {
  const IgnoreUserInteractionWhenLoading({
    required this.child,
    required this.status,
    super.key,
  });
  final Widget child;
  final AppStatus status;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: status == AppStatus.inProgress,
      child: child,
    );
  }
}
