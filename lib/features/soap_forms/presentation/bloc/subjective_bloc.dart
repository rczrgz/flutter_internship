import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'subjective_event.dart';
part 'subjective_state.dart';

class SubjectiveBloc extends Bloc<SubjectiveEvent, SubjectiveStateChanged> {
  SubjectiveBloc() : super(SubjectiveInitial()) {
    on<TypeChanged>(_subjectiveType);
    on<DescChanged>(_subjectiveDesc);
  }

  void _subjectiveType(
    TypeChanged event,
    Emitter<SubjectiveStateChanged> emit,
  ) {
    print('Current state: $state');
    emit(state.copyWith(type: event.type));
    print('New state: ${state.copyWith(type: event.type)}');
  }

  void _subjectiveDesc(
    DescChanged event,
    Emitter<SubjectiveStateChanged> emit,
  ) {
    print('DescChanged: ${event.desc}');
    emit(state.copyWith(desc: event.desc));
    print('New state: ${state.copyWith(desc: event.desc)}');
  }
}
