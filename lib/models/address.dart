// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });
  

  factory Address.fromJson(Map<String, dynamic> map) {
    return Address(
      street: map['street'] as String,
      suite: map['suite'] as String,
      city: map['city'] as String,
      zipcode: map['zipcode'] as String,
    );
  }

  @override
  String toString () => "Address -> $city $street $suite $zipcode" ;
}
