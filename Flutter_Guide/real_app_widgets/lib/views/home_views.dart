import 'package:flutter/material.dart';
import 'package:real_app_widgets/widgets/listtile.dart';
import '../widgets/flex_expand.dart';
import '../widgets/new_transaction.dart';
import '../model/transaction.dart';
import '../presentation/strings.dart';
import '../widgets/transaction_list.dart';

class HomeViews extends StatefulWidget {
  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  final List<Transaction> _userTransactions = [
    // Transaction(
    //   id: 'Tx-A01',
    //   title: 'New Shew',
    //   amount: 69.89,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 'Gx-B02',
    //   title: 'Weekly Groceries- Gx',
    //   amount: 19.89,
    //   date: DateTime.now(),
    // )
  ];

  void _addNewTransactions(String tx, double amt) {
    final newTx = Transaction(
      title: tx,
      amount: amt,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewTransaction(addNewTx: _addNewTransactions),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.title,
          // style: Theme.of(context).textTheme.headline5,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => _startAddNewTransaction(context),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Color(0xFFFFFDFE),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'CHART!',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            // TransactionList(transaction: _userTransactions),
            // const FlexExpand(),
            // const SizedBox(height: 10),
            ListTileDemo(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        child: const Icon(Icons.add, size: 20),
      ),
    );
  }
}
