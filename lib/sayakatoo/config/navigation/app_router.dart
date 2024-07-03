import 'package:go_router/go_router.dart';

import '../../presentation/pages/auth/signin/signin_page.dart';
import '../../presentation/pages/auth/signup/signup_page.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/private_info/private_info.dart';
import '../../presentation/pages/welcome/welcome_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SigninPage(),
      routes: [
        GoRoute(
          path: 'signup',
          name: 'signup',
          builder: (context, state) => const SignupPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/private_info',
      builder: (context, state) => const PrivateInfoPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
