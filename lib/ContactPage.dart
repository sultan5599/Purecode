import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildContactInfoItem(Icons.email, 'Email', 'contact@example.com'),
            _buildContactInfoItem(Icons.phone, 'Phone', '+1 123-456-7890'),
            _buildContactInfoItem(
                Icons.location_on, 'Address', '123 Main Street, City, Country'),
            SizedBox(height: 20),
            Text(
              'Send us a Message',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildMessageForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfoItem(IconData icon, String title, String info) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(info),
          ],
        ),
      ],
    );
  }

  Widget _buildMessageForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Name',
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Subject',
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: 'Message',
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Implement the logic to send the message here
          },
          child: Text('Send Message'),
        ),
      ],
    );
  }
}
