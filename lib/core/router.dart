import 'package:go_router/go_router.dart';

import '../features/soap_forms/presentation/assessment_form_screen.dart';
import '../features/soap_forms/presentation/objective_form_screen.dart';
import '../features/soap_forms/presentation/plan_form_screen.dart';
import '../features/soap_forms/presentation/subjective_form_screen.dart';
import '../main.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CategorizedButtonsScreen(),
    ),
    GoRoute(
      name: 'soap-subjective',
      path: '/soap-subjective',
      builder: (context, state) => const SubjectiveFormScreen(),
    ),
    GoRoute(
      name: 'soap-objective',
      path: '/soap-objective',
      builder: (context, state) => const ObjectiveFormScreen(),
    ),
    GoRoute(
      name: 'soap-assessment',
      path: '/soap-assessment',
      builder: (context, state) => const AssessmentFormScreen(),
    ),
    GoRoute(
      name: 'soap-plan',
      path: '/soap-plan',
      builder: (context, state) => const PlanFormScreen(),
    ),
  ],
  initialLocation: '/',
);
