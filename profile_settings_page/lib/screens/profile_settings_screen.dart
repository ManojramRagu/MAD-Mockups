import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/settings_tile.dart';
import '../widgets/app_nav_bar.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  int _tab = 3; // Profile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.maybePop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Profile Settings',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        child: Column(
          children: const [
            ProfileHeader(
              name: 'Micheal Jonathon',
              photoUrl:
                  'https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=256',
            ),
            SettingsTile(
              icon: Icons.person_outline,
              title: 'Change Name',
              subtitle: 'You can change name and surname',
            ),
            SettingsTile(
              icon: Icons.lock_outline,
              title: 'Change Password',
              subtitle: 'Change your password easily',
            ),
            SettingsTile(
              icon: Icons.email_outlined,
              title: 'Change Email',
              subtitle: 'You can change your email',
            ),
            SettingsTile(
              icon: Icons.phone_iphone_outlined,
              title: 'Change Mobile Number',
              subtitle: 'Change your mobile number',
            ),
            SettingsTile(
              icon: Icons.calendar_month_outlined,
              title: 'Change Date Of Birth',
              subtitle: 'Change your date of birth',
            ),
            SettingsTile(
              icon: Icons.translate_outlined,
              title: 'Change Language',
              subtitle: 'Change your language here',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        bottom: false,
        child: AppNavBar(
          currentIndex: _tab,
          onChanged: (i) => setState(() => _tab = i),
        ),
      ),
    );
  }
}
