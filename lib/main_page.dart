import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider_sample/async_value_widget.dart';
import 'package:future_provider_sample/data/postal_code.dart';
import 'package:future_provider_sample/main_page_vm.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  MainPageVM _vm = MainPageVM();

  @override
  void initState() {
    super.initState();
    _vm.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: _vm.onPostalCodeChanged,
            ),
            Expanded(
              child: AsyncValueWidget(
                value: _vm.postalCodeWithFamily(_vm.postalcode),
                data: (PostalCode postalCode) => ListView.separated(
                  itemCount: postalCode.data.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Column(
                      children: [
                        Text(postalCode.data[index].en.prefecture),
                        Text(postalCode.data[index].en.address1),
                        Text(postalCode.data[index].en.address2),
                        Text(postalCode.data[index].en.address3),
                        Text(postalCode.data[index].en.address4),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
