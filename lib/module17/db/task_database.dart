import 'package:sqflite/sqflite.dart';

class TaskDatabase{
  static Database? _db;

  static Future<Database> getDb()async{
    if(_db!=null) return _db;
  _db = await openDatabase(
    
  );
  }
  
}