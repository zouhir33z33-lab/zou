import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/academic_repository.dart';
import '../services/class_repository.dart';
import '../services/settings_repository.dart';
import '../services/status_repository.dart';
import '../services/student_repository.dart';

final settingsRepositoryProvider = Provider((ref) => SettingsRepository());
final academicRepositoryProvider = Provider((ref) => AcademicRepository());
final classRepositoryProvider = Provider((ref) => ClassRepository());
final studentRepositoryProvider = Provider((ref) => StudentRepository());
final statusRepositoryProvider = Provider((ref) => StatusRepository());
