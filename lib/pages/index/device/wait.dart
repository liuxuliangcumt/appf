/*
 * 设备界面的初始状态，等待点击蓝牙连接，开始扫描设备
 */
// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dong_gan_dan_che/common/BaseUtil.dart';

class DeviceWaitPage extends StatefulWidget {
  final Function onSwitchParentType;       /// 切换上级状态
  DeviceWaitPage({ @required this.onSwitchParentType });

  @override
  _DeviceWaitPage createState() => _DeviceWaitPage();
}

class _DeviceWaitPage extends State<DeviceWaitPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: BaseUtil.dp(30)),
      child: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                "连接设备",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: BaseUtil.dp(16),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Image.asset(
                'assets/images/device/wait.png',
                height: BaseUtil.dp(200),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: BaseUtil.dp(20), right: BaseUtil.dp(20)),
            child: RawMaterialButton (
              constraints: BoxConstraints(minHeight: BaseUtil.dp(46)),
              fillColor: BaseUtil.gDefaultColor,
              elevation: 0,
              highlightElevation: 0,
              highlightColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(23)),
              ),
              onPressed: () {
                widget.onSwitchParentType(1);
              },
              child: Center(
                child: Text('蓝牙连接',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: BaseUtil.dp(16)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
