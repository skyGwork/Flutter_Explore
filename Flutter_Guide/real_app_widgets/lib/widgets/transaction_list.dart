import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  const TransactionList({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: transaction.isEmpty
            ? Column(
                children: [
                  const SizedBox(height: 20),
                  Text('No transactions added yet!',
                      style: Theme.of(context).textTheme.headline1),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/images/waiting.png',
                        fit: BoxFit.cover),
                  )
                ],
              )
            : ListView.builder(
                itemCount: transaction.length,
                itemBuilder: ((context, index) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                          child: Text(
                            '\$ ${transaction[index].amount.toStringAsFixed(2)}',
                            style: Theme.of(context).textTheme.headline5,

                            // TextStyle(
                            // fontWeight: FontWeight.bold,
                            // fontSize: 20,
                            // color: Color(0xFFED111C),
                            // color: Colors.red,
                            // ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transaction[index].title,
                              style: Theme.of(context).textTheme.headline1,
                              // const TextStyle(
                              // fontWeight: FontWeight.bold,
                              // fontSize: 18,
                              // ),
                            ),
                            Text(
                              DateFormat.yMMMd()
                                  .format(transaction[index].date),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ));
  }
}
