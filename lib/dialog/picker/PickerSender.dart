import 'package:flutter_boot/dialog/picker/PickerDialog.dart';

import 'PickerBean.dart';

abstract class Sender {
  void send(PickerBean bean, List<PickerBean> list);
}

class SenderHandler extends Sender {
  PickerState _state;

  SenderHandler(this._state): super();

  @override
  void send(PickerBean bean, List<PickerBean> list) {
    _state.setData(bean, list);
  }
}