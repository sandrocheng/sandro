package com.tencent.tmsecure.module.powersaving;

import android.content.ContentResolver;
import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.provider.Settings.System;
import bxw;
import byf;
import byg;
import byi;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import java.lang.ref.WeakReference;
import java.util.List;

public final class PowerSavingManager extends BaseManager
{
  private byg a;
  private byf b;

  public final IBatteryInfoHelper getBatteryInfoHelper()
  {
    try
    {
      if (isExpired())
        if (this.b == null)
          this.b = new byf();
      IBatteryInfoHelper localIBatteryInfoHelper;
      for (Object localObject2 = this.b; ; localObject2 = localIBatteryInfoHelper)
      {
        return localObject2;
        localIBatteryInfoHelper = this.a.a();
      }
    }
    finally
    {
    }
  }

  public final int getBatteryLevel()
  {
    if (isExpired());
    for (int i = 100; ; i = bxw.a)
      return i;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new byg();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void registerPowerSavingEventListener(PowerSavingEventListener paramPowerSavingEventListener)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.d.add(new WeakReference(paramPowerSavingEventListener));
    }
  }

  public final void setPowerSavingConfig(PowerSavingConfig paramPowerSavingConfig, boolean paramBoolean)
  {
    if (isExpired());
    byg localbyg;
    do
    {
      return;
      localbyg = this.a;
    }
    while (paramPowerSavingConfig == null);
    localbyg.a = paramPowerSavingConfig;
    localbyg.b = paramBoolean;
    label47: label110: NetSettingManager localNetSettingManager1;
    label135: label147: int k;
    label177: label230: NetSettingManager localNetSettingManager2;
    if (paramPowerSavingConfig.mBrightness <= 0)
    {
      Settings.System.putInt(localbyg.c.getContentResolver(), "screen_brightness_mode", 1);
      int j = paramPowerSavingConfig.mScreenOffTime;
      Settings.System.putInt(localbyg.c.getContentResolver(), "screen_off_timeout", j);
      Uri localUri2 = Settings.System.getUriFor("screen_off_timeout");
      localbyg.c.getContentResolver().notifyChange(localUri2, null);
      if (paramPowerSavingConfig.mHapticFeedbackStateOperation != 1)
        break label433;
      Settings.System.putInt(localbyg.c.getContentResolver(), "haptic_feedback_enabled", 1);
      if (paramPowerSavingConfig.mVibrateStateOperation != 1)
        break label458;
      ((AudioManager)localbyg.c.getSystemService("audio")).setVibrateSetting(0, 1);
      if (paramPowerSavingConfig.mAutoSyncStateOperation != 1)
        break label486;
      ContentResolver.setMasterSyncAutomatically(true);
      localNetSettingManager1 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
      if (Settings.System.getInt(localbyg.c.getContentResolver(), "airplane_mode_on", 0) != 1)
        break label501;
      k = 1;
      if (paramPowerSavingConfig.mAirplaneModeStateOperation == 1)
        break label602;
      if ((paramPowerSavingConfig.mAirplaneModeStateOperation == 2) && (k != 0))
        localbyg.a(false);
      if ((paramPowerSavingConfig.mWifiStateOperation != 1) || (localNetSettingManager1.isWifiEnabled()))
        break label507;
      localNetSettingManager1.setWifiEnabled(true);
      bxw.b = true;
      localNetSettingManager2 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
      if ((paramPowerSavingConfig.mMobileNetWorkStateOperation != 1) || (localNetSettingManager2.getMobileDataConnectivity()))
        break label537;
      ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(true);
      bxw.c = true;
      label273: if ((paramPowerSavingConfig.mBlueToothStateOperation != 1) || (localNetSettingManager1.isBluetoothEnabled()))
        break label573;
      localNetSettingManager1.enableBluetooth();
      bxw.d = true;
    }
    while (true)
    {
      int m = PowerSavingConfig.ANIMATION_STATE_SETTINGS[paramPowerSavingConfig.mAnimationState];
      new byi();
      float[] arrayOfFloat = byi.a();
      if ((arrayOfFloat != null) && (arrayOfFloat.length > 0))
        arrayOfFloat[0] = (m % 10);
      if ((arrayOfFloat != null) && (arrayOfFloat.length >= 2))
        arrayOfFloat[1] = (m / 10 % 10);
      byi.a(arrayOfFloat);
      break;
      Settings.System.putInt(localbyg.c.getContentResolver(), "screen_brightness_mode", 0);
      int i = paramPowerSavingConfig.mBrightness;
      ContentResolver localContentResolver = localbyg.c.getContentResolver();
      Uri localUri1 = Settings.System.getUriFor("screen_brightness");
      Settings.System.putInt(localContentResolver, "screen_brightness", i);
      localContentResolver.notifyChange(localUri1, null);
      break label47;
      label433: if (paramPowerSavingConfig.mHapticFeedbackStateOperation != 2)
        break label110;
      Settings.System.putInt(localbyg.c.getContentResolver(), "haptic_feedback_enabled", 0);
      break label110;
      label458: if (paramPowerSavingConfig.mVibrateStateOperation != 2)
        break label135;
      ((AudioManager)localbyg.c.getSystemService("audio")).setVibrateSetting(0, 0);
      break label135;
      label486: if (paramPowerSavingConfig.mAutoSyncStateOperation != 2)
        break label147;
      ContentResolver.setMasterSyncAutomatically(false);
      break label147;
      label501: k = 0;
      break label177;
      label507: if ((paramPowerSavingConfig.mWifiStateOperation != 2) || (!localNetSettingManager1.isWifiEnabled()))
        break label230;
      localNetSettingManager1.setWifiEnabled(false);
      bxw.b = true;
      break label230;
      label537: if ((paramPowerSavingConfig.mMobileNetWorkStateOperation != 2) || (!localNetSettingManager2.getMobileDataConnectivity()))
        break label273;
      ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
      bxw.c = true;
      break label273;
      label573: if ((paramPowerSavingConfig.mBlueToothStateOperation == 2) && (localNetSettingManager1.isBluetoothEnabled()))
      {
        localNetSettingManager1.disableBluetooth();
        bxw.d = true;
        continue;
        label602: if (k == 0)
        {
          localbyg.a(true);
        }
        else
        {
          if (localNetSettingManager1.isWifiEnabled())
          {
            localNetSettingManager1.setWifiEnabled(false);
            bxw.b = true;
          }
          if (((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).getMobileDataConnectivity())
          {
            ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(false);
            bxw.c = true;
          }
          if (localNetSettingManager1.isBluetoothEnabled())
          {
            localNetSettingManager1.disableBluetooth();
            bxw.d = true;
          }
        }
      }
    }
  }

  public final void unRegisterPowerSavingEventListener(PowerSavingEventListener paramPowerSavingEventListener)
  {
    if (isExpired());
    byg localbyg;
    do
    {
      return;
      localbyg = this.a;
    }
    while (paramPowerSavingEventListener == null);
    List localList = localbyg.d;
    label92: for (int i = 0; ; i++)
      while (true)
      {
        try
        {
          if (i >= localbyg.d.size())
            break;
        }
        finally
        {
        }
        WeakReference localWeakReference = (WeakReference)localbyg.d.get(i);
        if (localWeakReference.get() != paramPowerSavingEventListener)
          break label92;
        localbyg.d.remove(localWeakReference);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.powersaving.PowerSavingManager
 * JD-Core Version:    0.6.2
 */