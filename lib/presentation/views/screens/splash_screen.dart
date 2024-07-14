import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/theme/theme_cubit.dart';
import '../../routes/routes.dart';
import '../../theme/app_theme.dart';
import '../widgets/theme_switch.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final cardColor = brightness == Brightness.dark
        ? AppTheme.darkCardBackgroundColor
        : AppTheme.lightCardBackgroundColor;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenue !',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Avant de commencer, merci de choisir votre mode d’affichage',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return Card(
                    color: cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mode sombre',
                              style: Theme.of(context).textTheme.titleMedium),
                          ThemeSwitch(
                            isDarkTheme: state.brightness == Brightness.dark,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () {
                  context.router.push(const HomeRoute());
                },
                child: Text('Continuer',
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
