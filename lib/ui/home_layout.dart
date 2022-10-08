import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_latest_launch/ui/loading_page.dart';
import 'package:spacex_latest_launch/ui/show_elements.dart';
import 'package:spacex_latest_launch/bloc/app_bloc_bloc.dart';


class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlockBlock, AppState>(
      builder: (context, state){
        return state.status.isSuccess
            ? ShowElements(items: state.data)
            : state.status.isLoading ? const Center(
          child: LoadingPage(),
        )
        : const SizedBox();
      },
    );
  }
}

