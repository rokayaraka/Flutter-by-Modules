import 'package:course_flutter_codes/module17/models/task.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class TaskDatabase{
  static Database? _db;

  static Future<Database> getDb()async{
    if(_db!=null) return _db!;
  _db = await openDatabase(
    p.join(await getDatabasesPath(),'task.db'),
    onCreate: (db,version){
      return db.execute("CREATE Table tasks(id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,isDone INTEGER)");
    },
    version: 1,

  );
  return _db!;
  }

   static Future<void> insertTask(Task task)async{
    final db = await getDb();
    await db.insert('tasks', task.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);

   }

   static Future<List<Task>> getTask()async{
    final db = await getDb();
    final List<Map<String,dynamic>> maps =await db.query('tasks');
    return List.generate(maps.length,(i)=>Task.formMap(maps[i]) );
   
   }

    static Future<void> deleteTask(int id)async{
      final db = await getDb();
      await db.delete('task',where: 'id=?',whereArgs: [id]);
    }
  
}