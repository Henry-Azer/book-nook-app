// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:book_nook_app/core/usecases/usecase.dart';
import 'package:book_nook_app/features/user-profile/presentation/cubit/signout_state.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/models/response_model.dart';
import '../../domain/usecases/signout_usecase.dart';


class SignoutCubit extends Cubit<SignoutState> {
  final SignoutUseCase signoutUseCase;

  SignoutCubit({required this.signoutUseCase}) : super(SignoutInitial());

  Future<void> signout() async {
    emit(SignoutInitial());
    emit(SignoutLoading());
    Either<GenericException, ResponseModel<NoParams>> response = await signoutUseCase(NoParams());
    emit(response.fold((exception) => SignoutError(message: exception.message),
        (signoutResponse) => SignoutSuccess(signoutResponse: signoutResponse)));
  }
}
