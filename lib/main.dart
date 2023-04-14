import 'package:flutter/material.dart';
import 'package:flutter_editable_table/flutter_editable_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final editableTableKey = GlobalKey<EditableTableState>();

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              EditableTable(
                key: editableTableKey,
                data: const {
                  "column_count": null,
                  "row_count": null,
                  "addable": true,
                  "removable": true,
                  "columns": [
                    {
                      "primary_key": false,
                      "auto_increase": false,
                      "name": "product_name",
                      "title": "Product Name",
                      "type": "string",
                      "format": null,
                      "description": "product name",
                      "display": true,
                      "editable": true,
                      "width_factor": 0.4,
                      "input_decoration": {
                        "min_lines": 1,
                        "max_lines": 1,
                        "max_length": 128,
                        "hint_text": "Please input the product name"
                      },
                      "constrains": {"minimum": 0, "maximum": 99999999},
                      "style": {
                        "font_weight": "bold",
                        "font_size": 14.0,
                        "font_color": "#333333",
                        "background_color": "#b5cfd2",
                        "horizontal_alignment": "center",
                        "vertical_alignment": "center",
                        "text_align": "center"
                      }
                    },
                    {
                      "primary_key": false,
                      "auto_increase": false,
                      "name": "stock",
                      "title": "Stock",
                      "type": "integer",
                      "format": null,
                      "description": "Stock",
                      "display": true,
                      "editable": true,
                      "width_factor": 0.2,
                      "input_decoration": {
                        "min_lines": 1,
                        "max_lines": 1,
                        "max_length": 128,
                        "hint_text": "Please input the stock"
                      },
                      "constrains": {"minimum": 1, "maximum": 1000},
                      "style": {
                        "font_weight": "bold",
                        "font_size": 14.0,
                        "font_color": "#333333",
                        "background_color": "#b5cfd2",
                        "horizontal_alignment": "center",
                        "vertical_alignment": "center",
                        "text_align": "center"
                      }
                    },
                    {
                      "primary_key": false,
                      "auto_increase": false,
                      "name": "order",
                      "title": "Order",
                      "type": "integer",
                      "format": null,
                      "description": "Order",
                      "display": true,
                      "editable": true,
                      "width_factor": 0.2,
                      "input_decoration": {
                        "min_lines": 1,
                        "max_lines": 1,
                        "max_length": 128,
                        "hint_text": "Please input the Order"
                      },
                      "constrains": {"minimum": 1, "maximum": 1000},
                      "style": {
                        "font_weight": "bold",
                        "font_size": 14.0,
                        "font_color": "#333333",
                        "background_color": "#b5cfd2",
                        "horizontal_alignment": "center",
                        "vertical_alignment": "center",
                        "text_align": "center"
                      }
                    },
                  ],
                  "rows": [
                    {
                      "id": 0,
                      "product_name": "Tom",
                      "stock": 18,
                      "order": 50,
                    },
                    {
                      "id": 1,
                      "product_name": "Sam",
                      "stock": 20,
                      "order": 50,
                    },
                    {
                      "id": 2,
                      "product_name": "Olivia",
                      "stock": 25,
                      "order": 50,
                    },
                    {
                      "id": 3,
                      "product_name": "Liam",
                      "stock": 23,
                      "order": 50,
                    },
                    {
                      "id": 4,
                      "product_name": "David",
                      "stock": 26,
                      "order": 50,
                    }
                  ],
                },
                readOnly: false,
                tablePadding: const EdgeInsets.all(8.0),
                headerBorder: Border.all(color: const Color(0xFF999999)),
                rowBorder: Border.all(color: const Color(0xFF999999)),
                removeRowIcon: const Icon(
                  Icons.remove_circle_outline,
                  size: 24.0,
                  color: Colors.redAccent,
                ),
                addRowIcon: const Icon(
                  Icons.add_circle_outline,
                  size: 24.0,
                  color: Colors.white,
                ),
                addRowIconContainerBackgroundColor: Colors.blueAccent,
                onRowRemoved: (row) {
                  print('row removed: ${row.toString()}');
                },
                onRowAdded: () {
                  print('row added');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                      "editableTableKey.currentState?.currentData: ${editableTableKey.currentState?.currentData.rows}");
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
