import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pulloverCount = 1;
  int _tShirtCount = 1;
  int _sportDressCount = 1;

  double _totalAmount = 124;

  void _incrementItemCount(String itemName, int unitPrice) {
    setState(() {
      if (itemName == 'Pullover') {
        _pulloverCount++;
      } else if (itemName == 'T-Shirt') {
        _tShirtCount++;
      } else if (itemName == 'Sport Dress') {
        _sportDressCount++;
      }

      if (_pulloverCount >= 5 || _tShirtCount >= 5 || _sportDressCount >= 5) {
        _showDialog(itemName);
      }

      _calculateTotalAmount();
    });
  }

  void _decrementItemCount(String itemName) {
    setState(() {
      if (itemName == 'Pullover' && _pulloverCount > 1) {
        _pulloverCount--;
      } else if (itemName == 'T-Shirt' && _tShirtCount > 1) {
        _tShirtCount--;
      } else if (itemName == 'Sport Dress' && _sportDressCount > 1) {
        _sportDressCount--;
      }

      _calculateTotalAmount();
    });
  }

  void _calculateTotalAmount() {
    _totalAmount = (_pulloverCount * 51) + (_tShirtCount * 30) + (_sportDressCount * 43);
  }

  void _showDialog(String itemName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('You have added 5 $itemName on your bag!'),
        actions: [
          TextButton(
            child: Text('OKAY'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congratulations! You have checked out successfully!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Pullover'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    _incrementItemCount('Pullover', 51);
                  },
                  child: Text('+'),
                ),
                Text('$_pulloverCount'),
                TextButton(
                  onPressed: () {
                    _decrementItemCount('Pullover');
                  },
                  child: Text('-'),
                ),
                Text('\$51'),
              ],
            ),
            Row(
              children: [
                Text('T-Shirt'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    _incrementItemCount('T-Shirt', 30);
                  },
                  child: Text('+'),
                ),
                Text('$_tShirtCount'),
                TextButton(
                  onPressed: () {
                    _decrementItemCount('T-Shirt');
                  },
                  child: Text('-'),
                ),
                Text('\$30'),
              ],
            ),
            Row(
              children: [
                Text('Sport Dress'),
                Spacer(),
                TextButton(
                  onPressed: () {
                    _incrementItemCount('Sport Dress', 43);
                  },
                  child: Text('+'),
                ),
                Text('$_sportDressCount'),
                TextButton(
                  onPressed: () {
                    _decrementItemCount('Sport Dress');
                  },
                  child: Text('-'),
                ),
                Text('\$43'),
              ],
            ),
            Text('Total amount: \$$_totalAmount'),
            ElevatedButton(
              onPressed: () {
                _showSnackBar();
              },
              child: Text('CHECK OUT'),
            ),
          ],
        ),
      ),
    );
  }
}