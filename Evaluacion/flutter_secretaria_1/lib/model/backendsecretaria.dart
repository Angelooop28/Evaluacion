import 'emailsecretaria.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 631,
      from: 'gabrielapacheco@secretaria.com.ec',
      subject: 'Gabriela Pacheco',
      dateTime: DateTime(2022, 20, 05, 19, 43),
      body:
          'Hola somos un equipo de secretaria capaces de mejorar los procesos de tu organizacion',
    ),
    Email(
      id: 522,
      from: 'angelinacastillo@secretaria.com.ec',
      subject: 'Angelina Castillo',
      dateTime: DateTime(2020, 09, 08, 03, 05),
      body:
          'Secretaria del departamento de talento humano',
    ),
    Email(
      id: 963,
      from: 'karlacedeño@secretaria.com.ec',
      subject: 'Karla Cedeño ',
      dateTime: DateTime(2020, 10, 10, 01, 48),
      body:
          'Secretaria del departamento de administracion',
    ),
    Email(
      id: 164,
      read: true,
      from: 'valeskarosado@secretaria.com.ec',
      subject: 'Valeska Rosado',
      dateTime: DateTime(2019, 05, 10, 10, 14),
      body:
          'Secretaria del departamento de contabilidad ',
    ),
    Email(
      id: 835,
      from: 'paulahernandez@secretaria.com.ec',
      subject: 'Paula Hernandez',
      dateTime: DateTime(2020, 10, 13, 20, 25),
      body:
          'Secretaria del departamento de bodega',
    ),
    Email(
      id: 966,
      from: 'melinamacias@secretaria.com.ec',
      subject: 'Melina Macias',
      dateTime: DateTime(2020, 10, 10, 10, 59),
      body:
          'Secretaria del departamento de ventas',
    ),
    Email(
      id: 237,
      from: 'milenavelez@secretaria.com.ec',
      subject: 'Milena Velez',
      dateTime: DateTime(2020, 10, 11, 20, 09),
      body:
          'Secretaria del departamento de insumos ',
    ),
    Email(
      id: 308,
      from: 'raquelzambrano@secretaria.com.ec',
      subject: 'Tatiana Macias',
      dateTime: DateTime(2020, 10, 18, 18, 10),
      body:
          'Secretaria del departamento de asesoria',
    ),
   
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
