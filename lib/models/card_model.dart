import 'package:flutter/material.dart';

class CreditCard {
  String bankName;
  String numberCard;
  String userName;
  String logoService;

  CreditCard(
      {this.bankName,
      this.numberCard,
      this.userName,
      this.logoService});
}

final List<CreditCard> cards = [
  CreditCard(
      bankName: 'Bank name 1',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/visa.svg'
  ),
  CreditCard(
      bankName: 'banque name 2',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/mastercard.svg'
  ),
  CreditCard(
      bankName: 'Banque Postale',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/visa.svg'
  ),
  CreditCard(
      bankName: 'Societe Generale',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/mastercard.svg'
  ),
  CreditCard(
      bankName: 'CIC',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/visa.svg'
  ),
  CreditCard(
      bankName: 'BNP Paribas',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/mastercard.svg'
  ),
  CreditCard(
      bankName: 'HSBC',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/visa.svg'
  ),
  CreditCard(
      bankName: 'LCL',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/mastercard.svg'
  ),
  CreditCard(
      bankName: 'Caisse d’Epargne',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/visa.svg'
  ),
  CreditCard(
      bankName: 'Crédit Agricole',
      numberCard: '•••• •••• •••• 2296',
      userName: 'John Wick',
      logoService: 'assets/svg/mastercard.svg'
  )
];

