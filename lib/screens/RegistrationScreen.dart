import 'package:flutter/material.dart';
import '../utils/AppColors.dart';
import '../widgets/CustomButton.dart';
import '../widgets/CustomTextField.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _surnameController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: const Icon(Icons.arrow_back, color: AppColors.primary), // Цвет иконки изменен на фиолетовый
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Регистрация',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Фамилия',
                hintText: 'Иванов',
                controller: _surnameController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Имя',
                hintText: 'Иван',
                controller: _nameController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Номер телефона',
                hintText: '(+996) 500 000 000',
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Пароль',
                hintText: '••••••',
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                text: 'Зарегистрироваться',
                filled: true,
                padding: 17,
                onPressed: () {
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}