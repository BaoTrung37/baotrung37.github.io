// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter_portfolio/presentation/utilities/enums/common/app_status.dart';
import 'package:flutter_portfolio/presentation/utilities/enums/common/languages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

@lazySingleton
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState()) {
    Future.delayed(Duration.zero, () {
      _init();
    });
  }

  Future<void> _init() async {
    emit(state.copyWith(status: AppStatus.initial));

    emit(
      state.copyWith(
        currentLanguage: Languages.en,
        status: AppStatus.success,
      ),
    );
  }

  Future<void> changeLanguage({
    required Languages language,
  }) async {
    emit(state.copyWith(currentLanguage: language));
  }
}
