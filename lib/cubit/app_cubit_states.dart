abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  @override
  List<Object?> get props => [];
}
