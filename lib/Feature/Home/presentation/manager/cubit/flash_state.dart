part of 'flash_cubit.dart';

@immutable
sealed class FlashState {}

final class FlashInitial extends FlashState {}

final class FlashOn extends FlashState {}

final class FlashIOff extends FlashState {}
