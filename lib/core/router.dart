import 'package:flutter_internship/features/soap_forms/presentation/select_service_request/assign_to_clinic.dart';
import 'package:flutter_internship/features/soap_forms/presentation/select_service_request/assign_to_facility.dart';
import 'package:flutter_internship/features/soap_forms/presentation/service_request_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/soap_forms/presentation/assessment_form_screen.dart';
import '../features/soap_forms/presentation/objective_form_screen.dart';
import '../features/soap_forms/presentation/plan_form_screen.dart';
import '../features/soap_forms/presentation/subjective_form_screen.dart';
import '../main.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
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
    GoRoute(
      name: 'service-request',
      path: '/service-request',
      builder: (context, state) => const ServiceRequestScreen(),
    ),
    GoRoute(
      name: 'assign-to-facility',
      path: '/assign-to-facility',
      builder: (context, state) => const AssignToFacility(),
    ),
    GoRoute(
      name: 'assign-to-clinic',
      path: '/assign-to-clinic',
      builder: (context, state) => const AssignToClinic(),
    ),
  ],
  initialLocation: '/',
);
