part of 'start_cubit.dart';

sealed class StartState {}

final class StartInitial extends StartState {}

final class UpdateAvailable extends StartState {
  final bool updateAvailable = false;
  UpdateAvailable({required updateAvailable});
}

final class IsLogin extends StartState {
  final bool isLogin = false;
  IsLogin({required isLogin});
}
