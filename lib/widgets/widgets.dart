import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String name;
  final String number;

  const Dashboard({
    super.key,
    required this.name,
    required this.number,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            // User Profile Card
            Card(
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  child: Text(
                    widget.name.isNotEmpty
                        ? widget.name[0].toUpperCase()
                        : "?",
                  ),
                ),

                title: Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Text(widget.number),
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            const Text(
              "Chats",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "No Chats Yet",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}