import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  int tabIndex = 0;

  @action
  setTab(int value) {
    if (tabIndex != value) {
      tabIndex = value;
    }
  }

  get homePageIndex => 0;
  get chartPageIndex => 1;

 void navigateToPage({required BuildContext context,required Widget page}){
   Navigator.push(
     context,
     MaterialPageRoute(
       builder: (context) =>
           page,
     ),
   );
  }
}