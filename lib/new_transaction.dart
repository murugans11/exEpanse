import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  Function nexTxButtonClick;

  NewTransaction(this.nexTxButtonClick);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleControler,
              //onChanged: (titleValues) => titleInput = titleValues,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (amount) => amountInput = amount,
              controller: amountControler,
            ),
            FlatButton(
              child: Text('Add Trasaction'),
              textColor: Colors.purple,
              onPressed: () {
                nexTxButtonClick(
                  titleControler.text,
                  double.parse(amountControler.text),
                );
                print(titleControler.text);
                print(amountControler.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
