import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import '../widgets/CustomButton.dart';
import 'RegistrationScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              const Text(
                'Добро пожаловать!',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Приветствуем вас на площадке аренды строительной техники',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              CustomButton(
                text: 'Регистрация',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                outline: true,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                },
                child: const Text(
                  'У меня уже есть аккаунт',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              CustomButton(
                text: 'Магазин автозапчастей',
                padding: 4,
                fontSize: 12,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationScreen(),
                    ),
                  );
                },
                outline: true,
                width: 200,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}