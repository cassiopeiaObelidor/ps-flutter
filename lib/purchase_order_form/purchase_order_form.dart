import 'package:flutter/material.dart';
import 'package:food_order_ui/view/checkout_page/checkout_page_view.dart';
// import 'checkout_page_view.dart'; // Import your checkout page view

class PurchaseOrderForm extends StatefulWidget {
  const PurchaseOrderForm({Key? key}) : super(key: key);

  @override
  _PurchaseOrderFormState createState() => _PurchaseOrderFormState();
}

class _PurchaseOrderFormState extends State<PurchaseOrderForm> {
  int _selectedOrderTypeIndex = -1;
  int _selectedOrderClassificationIndex = -1;
  DateTime? _selectedDate;
  bool _isTeamNameFocused = false;

  List<DataRow> _orderRows = [];

  void _handleOrderTypeChange(int index) {
    setState(() {
      _selectedOrderTypeIndex = index;
    });
  }

  void _handleOrderClassificationChange(int index) {
    setState(() {
      _selectedOrderClassificationIndex = index;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _addOrderRow() {
    _orderRows.add(DataRow(cells: [
      _buildDataCell(TextFormField(), 150), // Item
      _buildDataCell(TextFormField(), 150), // Description
      _buildDataCell(TextFormField(), 50), // Size
      _buildDataCell(TextFormField(), 50), // Quantity
      _buildDataCell(TextFormField(), 50), // Price
      _buildDataCell(TextFormField(), 50), // Total
    ]));
    setState(() {});
  }

  DataCell _buildDataCell(Widget child, double width) {
    return DataCell(
      SizedBox(
        width: width,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Purchase Order Form',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold, // Add this line for bold text
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select order type:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  _buildCheckbox(0, 'Regular order'),
                  _buildCheckbox(1, 'Rush order'),
                  _buildCheckbox(2, 'Big order'),
                  _buildCheckbox(3, 'Philgeps Order'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Order Date:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today),
                          SizedBox(width: 4),
                          Text(
                            _selectedDate != null
                                ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                : 'Select order date',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Order classification:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 8),
                  _buildOrderClassificationCheckbox(0, 'New Order'),
                  SizedBox(width: 16),
                  _buildOrderClassificationCheckbox(1, 'Additional Order'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Order Details:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 8),
              _buildOrderDataTable(),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _addOrderRow,
                child: Text('Add Row'),
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team Name:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _isTeamNameFocused ? Colors.red : Colors.grey,
                        ),
                      ),
                      hintText: 'Enter team name',
                    ),
                    onChanged: (value) {
                      // Add your logic here
                    },
                    onTap: () {
                      setState(() {
                        _isTeamNameFocused = true;
                      });
                    },
                    onSubmitted: (value) {
                      setState(() {
                        _isTeamNameFocused = false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter total',
                    ),
                    onChanged: (value) {
                      // Add your logic here
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Downpayment:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter downpayment',
                    ),
                    onChanged: (value) {
                      // Add your logic here
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter balance',
                    ),
                    onChanged: (value) {
                      // Add your logic here
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mode of Payment:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter mode of payment',
                    ),
                    onChanged: (value) {
                      // Add your logic here
                    },
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckoutPageView()),
                          );
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckbox(int index, String label) {
    return Expanded(
      child: InkWell(
        onTap: () {
          _handleOrderTypeChange(index);
        },
        child: Column(
          children: [
            _CustomCheckbox(
              value: _selectedOrderTypeIndex == index,
              onChanged: (bool? checked) {
                _handleOrderTypeChange(index);
              },
            ),
            SizedBox(height: 4),
            Text(label),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderClassificationCheckbox(int index, String label) {
    return InkWell(
      onTap: () {
        _handleOrderClassificationChange(index);
      },
      child: Row(
        children: [
          _CustomCheckbox(
            value: _selectedOrderClassificationIndex == index,
            onChanged: (bool? checked) {
              _handleOrderClassificationChange(index);
            },
          ),
          SizedBox(width: 4),
          Text(label),
        ],
      ),
    );
  }

  Widget _buildOrderDataTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: Text('Item')),
          DataColumn(label: Text('Description')),
          DataColumn(label: Text('Size')),
          DataColumn(label: Text('Quantity')),
          DataColumn(label: Text('Price')),
          DataColumn(label: Text('Total')),
        ],
        rows: _orderRows,
      ),
    );
  }
}

class _CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const _CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  __CustomCheckboxState createState() => __CustomCheckboxState();
}

class __CustomCheckboxState extends State<_CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(_CustomCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value!;
        });
        widget.onChanged!(value);
      },
      fillColor: MaterialStateColor.resolveWith((states) {
        if (_value) {
          return Colors.red; // Change color to red if checkbox is selected
        } else {
          return Colors
              .transparent; // Use transparent color for unselected state
        }
      }),
    );
  }
}
