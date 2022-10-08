import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_latest_launch/bloc/app_bloc_bloc.dart';
import 'package:spacex_latest_launch/models/get_model/spacex_data_get_model.dart';
import 'package:spacex_latest_launch/ui/helper/sort_list.dart';
import 'package:spacex_latest_launch/utily/string_items.dart';
import 'package:spacex_latest_launch/utily/page_paddings.dart';

class ShowElements extends StatefulWidget {
  const ShowElements({Key? key, required this.items}) : super(key: key);

  final List<SpaceXDataGetModel>? items;

  @override
  State<ShowElements> createState() => _ShowElementsState();
}

class _ShowElementsState extends State<ShowElements> {
  late int
      lastNonNullElement; // Gerekli verileri null donmemis olan son gorevin indexini bulmak icin kullaniliyor.

  @override
  void initState() {
    super.initState();
    lastNonNullElement = SortListHelper().sortList(widget.items);
  }

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: _refreshAndSortData,
        child: CustomScrollView(
          slivers: [
            _sliverListView,
          ],
        ),
      );

  SliverList get _sliverListView =>
      SliverList(delegate: _sliverChildBuilderDelegate); //Neden list kullandim? bilmiyorum ilk defa silver kullaniyorum list ve grid yapisi vardi. list better.

  SliverChildBuilderDelegate get _sliverChildBuilderDelegate =>
      SliverChildBuilderDelegate(
        (context, index) => SizedBox(
          height: MediaQuery.of(context).size.height,
          child: showTime(context),
        ),
        childCount: 1,
      );

  SafeArea showTime(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text(StringItems().appBarTitle)),
            ),
            body: Padding(
              padding: const PagePadding.all(),
              child: Column(
                children: [

                  Padding(
                    padding: const PagePadding.bottom(),
                    child: Image.network(
                        widget
                            .items![lastNonNullElement].links!.patch!.large!, // Force ediliyorlar cunku null olmadiklari sortList de kontol edildi.
                        width: 190,
                        height: 190),
                  ),
                  Padding(
                    padding: const PagePadding.bottom(),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.items![lastNonNullElement].name!,
                          style: Theme.of(context).textTheme.subtitle1,
                        )),
                  ),
                  Padding(
                    padding: const PagePadding.bottom(),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                            widget.items![lastNonNullElement].details!,
                            style: Theme.of(context).textTheme.subtitle2)),
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Future<void> _refreshAndSortData() =>
      Future.delayed(const Duration(seconds: 2), () {
        context.read<AppState>();
        setState(() {
          lastNonNullElement = SortListHelper().sortList(widget.items);
        });
      });
}
