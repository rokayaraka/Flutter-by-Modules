import 'package:course_flutter_codes/module17/db/task_database.dart';
import 'package:course_flutter_codes/module17/models/task.dart';
import 'package:flutter/material.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {


  List<Task> tasks=[];
  final TextEditingController controller=TextEditingController();

  @override
  void initState() {
  
    super.initState();
    refreshTask();
  }

  Future<void> refreshTask()async{
    tasks = await TaskDatabase.getTask();
    setState(() {
      
    });
  }

Future<void> addTask()async{
   if(controller.text.isNotEmpty){
    await TaskDatabase.insertTask(Task(title: controller.text, isDone: false));
   controller.clear();
   refreshTask();
   }
   
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Task with DB",
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Task',
                  ),
                )),
                IconButton(onPressed: addTask, icon: Icon(Icons.add)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context,index){
                final task=tasks[index];
                return Card(
                  child: ListTile(
                    leading: Checkbox(value: task.isDone, onChanged: (_){}),
                    title: Text(task.title),
                  ),
                );
            
              },),
          ),
        ],
      ),
    );
  }
}