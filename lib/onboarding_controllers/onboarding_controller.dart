import 'package:flutter/material.dart';
import 'package:onboarding/onboarding_models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';



class OnboardingController extends GetxController{
   
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == OnboardingPages.length -1;
  var pageController = PageController();

  forwardAction()
  {
    if (isLastPage){
      //ho to home page
    }
    else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }



  List<OnboardingInfo> OnboardingPages = [
    OnboardingInfo('assets/onboarding1.png', 'T r a c k F i t', ''),
    OnboardingInfo('assets/onboarding2.png', 'Welcome to TrackFit', 'Define your fitness goals and track your progress daily. Begin your fitness journey today with TrackFit!'),
    OnboardingInfo('assets/yoga-pose.png', 'Title', 'description')
  ];
}