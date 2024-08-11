class FormValidators {

  static String? validateEmail({required String email}) {
    if (email.isEmpty) {
      return 'Se requiere un email.';
    }

    // Verificar texto antes y después de '@', un solo '@', un '.' seguido de más texto
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email)) {
      return 'Se requiere un email válido.';
    }

    return email.length >= 7 ? null : 'El email debe contener al menos 6 caracteres.';
  }

  static String? validatePassword({required String password}) {
    if (password.isEmpty) {
      return 'Se requiere contraseña.';
    }
    return password.length >= 6 ? null : 'La contraseña debe contener al menos 6 caracteres.';
  }

  static String? validateUserName({required String name}) {
    String auxName = name.trim();
    if (auxName.isEmpty) {
      return 'Se requiere nombre.';
    } else if (auxName.length != name.length) {
      return 'El nombre no debe contener espacios.';
    }
    return name.length >= 2 ? null : 'El nombre debe contener al menos 2 caracteres.';
  }

}
