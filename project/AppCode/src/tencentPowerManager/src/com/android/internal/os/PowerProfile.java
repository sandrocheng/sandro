package com.android.internal.os;

import android.content.Context;
import java.util.HashMap;

public class PowerProfile
{
  private static final String ATTR_NAME = "name";
  public static final String POWER_AUDIO = "dsp.audio";
  public static final String POWER_BATTERY_CAPACITY = "battery.capacity";
  public static final String POWER_BLUETOOTH_ACTIVE = "bluetooth.active";
  public static final String POWER_BLUETOOTH_AT_CMD = "bluetooth.at";
  public static final String POWER_BLUETOOTH_ON = "bluetooth.on";
  public static final String POWER_CPU_ACTIVE = "cpu.active";
  public static final String POWER_CPU_IDLE = "cpu.idle";
  public static final String POWER_CPU_SPEEDS = "cpu.speeds";
  public static final String POWER_GPS_ON = "gps.on";
  public static final String POWER_NONE = "none";
  public static final String POWER_RADIO_ACTIVE = "radio.active";
  public static final String POWER_RADIO_ON = "radio.on";
  public static final String POWER_RADIO_SCANNING = "radio.scanning";
  public static final String POWER_SCREEN_FULL = "screen.full";
  public static final String POWER_SCREEN_ON = "screen.on";
  public static final String POWER_VIDEO = "dsp.video";
  public static final String POWER_WIFI_ACTIVE = "wifi.active";
  public static final String POWER_WIFI_ON = "wifi.on";
  public static final String POWER_WIFI_SCAN = "wifi.scan";
  private static final String TAG_ARRAY = "array";
  private static final String TAG_ARRAYITEM = "value";
  private static final String TAG_DEVICE = "device";
  private static final String TAG_ITEM = "item";
  static final HashMap<String, Object> sPowerMap = new HashMap();

  public PowerProfile(Context paramContext)
  {
  }

  private void readPowerValuesFromXml(Context paramContext)
  {
  }

  public double getAveragePower(String paramString)
  {
    return 0.0D;
  }

  public double getAveragePower(String paramString, int paramInt)
  {
    return 0.0D;
  }

  public int getNumSpeedSteps()
  {
    return 0;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.android.internal.os.PowerProfile
 * JD-Core Version:    0.6.2
 */