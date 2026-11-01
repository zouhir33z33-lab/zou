import '../models/models.dart';
import 'database_helper.dart';

class StatusRepository {
  Future<List<AttendanceStatus>> all() async {
    final db = await DatabaseHelper.instance.database;
    final rows = await db.query('attendance_statuses', orderBy: 'sort_order, id');
    return rows.map(AttendanceStatus.fromMap).toList();
  }
}
