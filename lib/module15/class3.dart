import 'package:course_flutter_codes/module%2011/textfield.dart';
import 'package:course_flutter_codes/module15/BuildList.dart';
import 'package:course_flutter_codes/module15/buildSummeryCard.dart';
import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;


List<Map<String,dynamic>> expanse =[];
List<Map<String,dynamic>> earning =[];

void _shoeForm(bool isEarning){
  TextEditingController titleController = TextEditingController();
   TextEditingController amountController = TextEditingController();
   DateTime entrydate = DateTime.now();

   showModalBottomSheet(context: context, 
   isScrollControlled: true,
   builder: (context){
    return Column(
      children: [
        Text(isEarning?"Add Earning":"Add expanse"),
        Textfield(
          controller:titleController,
          decoration:InputDecoration(
            labelText: "Title",
            border: OutlineInputBorder(),
          ),
        ),
        Textfield(
          controller:titleController,
          decoration:InputDecoration(
            labelText: "Amount",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
   });
}

void _showOptions(BuildContext context){
  showModalBottomSheet(context: context, builder: (context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: (){
              FocusScope.of(context).unfocus();
              _shoeForm(true);
            }, 
          child: Text("Add Earning"),
          ),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: (){
                 FocusScope.of(context).unfocus();
              _shoeForm(false);
            }, 
          child: Text("Add Expanse"),
          ),
        ],
      ),
    );
  });
}

  @override
  void initState() {
   
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Money Management", style: TextStyle(fontSize: 20)),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Earning", icon: Icon(Icons.arrow_upward)),
            Tab(text: "Expense", icon: Icon(Icons.arrow_downward)),
          ],
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(
            children: [
              Buildsummerycard(
                title: 'Earning',
                amount: '510',
                cardColor: Colors.green,
              ),

              Buildsummerycard(
                title: "Expanse",
                amount: "580",
                cardColor: Colors.red,
              ),
              Buildsummerycard(
                title: "balance",
                amount: "1000",
                cardColor: Colors.blueAccent,
              ),
            ],
          ),
          SizedBox(height: 10),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
              BuildList(items: earning, inEarning: true,),
              BuildList(items: expanse, inEarning: false,),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _showOptions(context),
        child: Icon(Icons.add),
        ),
    );
  }
}
