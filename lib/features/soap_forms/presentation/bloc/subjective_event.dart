part of 'subjective_bloc.dart';

sealed class SubjectiveEvent extends Equatable {
  const SubjectiveEvent();

  @override
  List<Object> get props => [];
}

class TypeChanged extends SubjectiveEvent {
  final String type;
  const TypeChanged(this.type);
  @override
  List<Object> get props => [type];
}

class DescChanged extends SubjectiveEvent {
  final String desc;
  const DescChanged(this.desc);
  @override
  List<Object> get props => [desc];
}