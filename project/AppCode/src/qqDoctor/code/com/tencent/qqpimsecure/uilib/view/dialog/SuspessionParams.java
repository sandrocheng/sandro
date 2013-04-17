package com.tencent.qqpimsecure.uilib.view.dialog;

import android.view.WindowManager.LayoutParams;

public class SuspessionParams
{
  public static WindowManager.LayoutParams mWindowParams;
  public static WindowManager.LayoutParams wmBaseParams;
  public static WindowManager.LayoutParams wmBatteryParams;
  public static WindowManager.LayoutParams wmColorRemindParams;
  public static WindowManager.LayoutParams wmDialogWindowBackgroundParams;
  public static WindowManager.LayoutParams wmDialogWindowParams;
  public static WindowManager.LayoutParams wmLocationParams;
  public static WindowManager.LayoutParams wmPermissionParams;
  public static WindowManager.LayoutParams wmTrafficParams;
  public static WindowManager.LayoutParams wmWhirlPoolParams;

  static
  {
    WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams();
    wmBaseParams = localLayoutParams1;
    localLayoutParams1.gravity = 51;
    wmBaseParams.type = 2003;
    wmBaseParams.format = 1;
    WindowManager.LayoutParams localLayoutParams2 = wmBaseParams;
    localLayoutParams2.flags = (0x8 | localLayoutParams2.flags);
    wmBaseParams.width = -2;
    wmBaseParams.height = -2;
    WindowManager.LayoutParams localLayoutParams3 = new WindowManager.LayoutParams();
    wmTrafficParams = localLayoutParams3;
    localLayoutParams3.copyFrom(wmBaseParams);
    wmTrafficParams.alpha = 1.0F;
    WindowManager.LayoutParams localLayoutParams4 = new WindowManager.LayoutParams();
    wmLocationParams = localLayoutParams4;
    localLayoutParams4.copyFrom(wmBaseParams);
    WindowManager.LayoutParams localLayoutParams5 = new WindowManager.LayoutParams();
    wmPermissionParams = localLayoutParams5;
    localLayoutParams5.gravity = 51;
    wmPermissionParams.type = 2003;
    wmPermissionParams.format = 1;
    WindowManager.LayoutParams localLayoutParams6 = wmPermissionParams;
    localLayoutParams6.flags = (0x8 | localLayoutParams6.flags);
    wmPermissionParams.width = -2;
    wmPermissionParams.height = -2;
    wmPermissionParams.gravity = 17;
    WindowManager.LayoutParams localLayoutParams7 = new WindowManager.LayoutParams();
    wmColorRemindParams = localLayoutParams7;
    localLayoutParams7.gravity = 51;
    wmColorRemindParams.type = 2003;
    wmColorRemindParams.format = 1;
    wmColorRemindParams.width = -2;
    wmColorRemindParams.height = -2;
    wmColorRemindParams.gravity = 17;
    WindowManager.LayoutParams localLayoutParams8 = new WindowManager.LayoutParams();
    wmBatteryParams = localLayoutParams8;
    localLayoutParams8.gravity = 51;
    wmBatteryParams.type = 2003;
    wmBatteryParams.format = 1;
    wmBatteryParams.width = -2;
    wmBatteryParams.height = -2;
    wmBatteryParams.gravity = 17;
    WindowManager.LayoutParams localLayoutParams9 = new WindowManager.LayoutParams();
    wmDialogWindowParams = localLayoutParams9;
    localLayoutParams9.gravity = 17;
    wmDialogWindowParams.type = 2003;
    wmDialogWindowParams.format = 1;
    wmDialogWindowParams.width = -1;
    wmDialogWindowParams.height = -2;
    wmDialogWindowParams.softInputMode = 16;
    WindowManager.LayoutParams localLayoutParams10 = new WindowManager.LayoutParams();
    wmDialogWindowBackgroundParams = localLayoutParams10;
    localLayoutParams10.gravity = 51;
    wmDialogWindowBackgroundParams.type = 2003;
    wmDialogWindowBackgroundParams.format = 1;
    WindowManager.LayoutParams localLayoutParams11 = wmDialogWindowBackgroundParams;
    localLayoutParams11.flags = (0x408 | localLayoutParams11.flags);
    wmDialogWindowBackgroundParams.width = -1;
    wmDialogWindowBackgroundParams.height = -1;
    WindowManager.LayoutParams localLayoutParams12 = new WindowManager.LayoutParams();
    mWindowParams = localLayoutParams12;
    localLayoutParams12.gravity = 51;
    mWindowParams.type = 2003;
    mWindowParams.format = 1;
    mWindowParams.width = -2;
    mWindowParams.height = -2;
    mWindowParams.gravity = 17;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.SuspessionParams
 * JD-Core Version:    0.6.2
 */