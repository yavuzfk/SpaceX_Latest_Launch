import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_latest_launch/bloc/app_bloc_bloc.dart';
import 'package:spacex_latest_launch/ui/home_layout.dart';
import 'package:spacex_latest_launch/repository/dao_repository.dart';
import 'package:spacex_latest_launch/repository/service.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => DaoRepository(service: Service()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AppBlockBlock>(
                create: (context) => AppBlockBlock(
                      repository: context.read<DaoRepository>(),
                    )..add(GetData())),
          ],
          child: const HomeLayout(),
        ),
      ),
    );
  }
}
