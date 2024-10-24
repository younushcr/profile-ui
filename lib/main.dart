import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade100,
                  Colors.white,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 75),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const CircleAvatar(
                      maxRadius: 70,
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {
                          // Edit profile functionality
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "@younushcr",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "ᴹᴿメʏᴏᴜɴᴜꜱhcr",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "I delivers quick, efficient Web & App\nsolutions for you.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                _buildCard(Icons.privacy_tip_sharp, 'Privacy', context),
                _buildCard(Icons.history, 'Booking History', context),
                _buildCard(Icons.help_outline, 'Help & Support', context),
                _buildCard(Icons.settings, 'Settings', context),
                _buildCard(Icons.person_add, 'Invite a Friend', context),
                _buildCard(Icons.logout, 'Logout', context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String title, BuildContext context, {VoidCallback? onLogout}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 10,
        shadowColor: Colors.blueAccent.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.blueAccent,
            size: 30,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.blueAccent,
          ),
          onTap: () {
            if (onLogout != null) {
              onLogout();
            } else {
              // Navigate or add functionality for other cards
            }
          },
        ),
      ),
    );
  }
}