import '../models/models.dart';
import 'database_helper.dart';

class StudentRepository {
  Future<List<Student>> byClass(int classId, {bool activeOnly = true}) async {
    final db = await DatabaseHelper.instance.database;
    final rows = await db.query('students',
        where: activeOnly ? 'class_id = ? AND is_active = 1' : 'class_id = ?',
        whereArgs: [classId],
        orderBy: 'sort_order, last_name COLLATE NOCASE, first_name COLLATE NOCASE');
    return rows.map(Student.fromMap).toList();
  }

  Future<int> insert(Student s) async {
    final db = await DatabaseHelper.instance.database;
    return db.insert('students', s.toMap());
  }

  Future<void> update(Student s) async {
    final db = await DatabaseHelper.instance.database;
    await db.update('students', s.toMap(), where: 'id = ?', whereArgs: [s.id]);
  }

  Future<void> delete(int id) async {
    final db = await DatabaseHelper.instance.database;
    await db.delete('students', where: 'id = ?', whereArgs: [id]);
  }
}
