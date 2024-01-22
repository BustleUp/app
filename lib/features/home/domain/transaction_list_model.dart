class TransactionModel {
  final String profileImage;
  final String userName;
  final String date;
  final String time;
  final String amount;

  TransactionModel(
      {required this.profileImage,
      required this.userName,
      required this.date,
      required this.time,
      required this.amount});
}

List<TransactionModel> transactions = [
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500'),
  TransactionModel(profileImage: 'assets/images/profile.jpeg', userName: 'Uchenna Idris', date: '20 May 2023', time: '10:46 AM', amount: '+3,500')
];
