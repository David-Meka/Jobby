import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobby/core/service/api_service.dart';
import 'package:jobby/core/theme/app_theme.dart';
import 'package:jobby/core/theme/cubit/theme_cubit.dart';
import 'package:jobby/presentation/bloc/job_bloc.dart';
import 'package:jobby/presentation/bloc/job_event.dart';
import 'package:jobby/presentation/home_navigation.dart';
import 'package:jobby/presentation/screens/saved%20jobs/cubit/saved_jobs_cubit.dart';

void main() {
  
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),

        BlocProvider(
          create:
              (_) => JobsBloc(apiService: ApiService())..add(FetchJobsEvent()),
        ),
        BlocProvider(create: (_) => SavedJobsCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Your design's width and height
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode:
                  themeState == ThemeState.dark
                      ? ThemeMode.dark
                      : ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: HomeNavigation(),
            );
          },
        );
      },
    );
  }
}
