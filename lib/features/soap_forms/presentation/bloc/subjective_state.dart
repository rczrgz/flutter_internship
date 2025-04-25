part of 'subjective_bloc.dart';

abstract class SubjectiveState extends Equatable {
 final String? type;
 final String? desc;

 const SubjectiveState({this.type, this.desc});

  @override
  List<Object?> get props => [type, desc];
}

class SubjectiveStateChanged extends SubjectiveState {
  const SubjectiveStateChanged({super.type = null, super.desc = null});

  SubjectiveStateChanged copyWith({
    String? type,
    String? desc,
  }) {
    return SubjectiveStateChanged(
      type: type ?? this.type,
      desc: desc ?? this.desc,
    );
  }
}

final class SubjectiveInitial extends SubjectiveStateChanged {
  const SubjectiveInitial() :super();
}
