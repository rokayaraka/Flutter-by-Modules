import 'package:course_flutter_codes/mini%20project/BuildList.dart';
import 'package:course_flutter_codes/mini%20project/buildSummeryCard.dart';
import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget {
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Map<String, dynamic>> expanse = [];
  List<Map<String, dynamic>> earning = [];

  double get totalExpanse =>
      expanse.fold(0, (sum, item) => sum + item["amount"]);
  double get totalEarning =>
      earning.fold(0, (sum, item) => sum + item["amount"]);
  double get balance => totalEarning - totalExpanse;

  void _showForm(bool isEarning) {
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entrydate = DateTime.now();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(isEarning ? "Add Earning" : "Add Expense"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: "Amount",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                if (isEarning) {
                  earning.add({
                    "title": titleController.text,
                    "amount": double.tryParse(amountController.text),
                    "date": entrydate.toString(),
                  });
                } else {
                  expanse.add({
                    "title": titleController.text,
                    "amount": double.tryParse(amountController.text),
                    "date": entrydate.toString(),
                  });
                }
                setState(() {});
                Navigator.of(context).pop();
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                          Navigator.of(context).pop();
                    _showForm(true);
                    
                  },
                  child: Text("Add Earning"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                          Navigator.of(context).pop();
                    _showForm(false);
                  },
                  child: Text("Add Expanse"),
                ),
              ],
            ),
          ),
        );
      },
    );
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

      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Buildsummerycard(
                  title: 'Earning',
                  amount: totalEarning,
                  cardColor: Colors.green,
                ),

                Buildsummerycard(
                  title: "Expanse",
                  amount: totalExpanse,
                  cardColor: Colors.red,
                ),
                Buildsummerycard(
                  title: "balance",
                  amount: balance,
                  cardColor: Colors.blueAccent,
                ),
              ],
            ),
            SizedBox(height: 10),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  BuildList(items: earning, inEarning: true),
                  BuildList(items: expanse, inEarning: false),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _showOptions(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
