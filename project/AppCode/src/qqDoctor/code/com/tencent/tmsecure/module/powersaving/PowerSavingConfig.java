package com.tencent.tmsecure.module.powersaving;

public final class PowerSavingConfig
{
  public static final int ANIMATION_FULL = 2;
  public static final int ANIMATION_NONE = 0;
  public static final int ANIMATION_PARTIAL = 1;
  public static final int[] ANIMATION_STATE_SETTINGS = arrayOfInt;
  public static final byte OPERATION_CLOSE = 2;
  public static final byte OPERATION_NONE = 0;
  public static final byte OPERATION_OPEN = 1;
  public byte mAirplaneModeStateOperation = 0;
  public int mAnimationState = 1;
  public byte mAutoSyncStateOperation = 0;
  public int mBlueToothAutoCloseCondition = 1;
  public int mBlueToothAutoOpenCondition = 1;
  public byte mBlueToothStateOperation = 0;
  public int mBrightness = -1;
  public byte mHapticFeedbackStateOperation = 0;
  public int mMobileNetWorkAutoCloseCondition = 1;
  public int mMobileNetWorkAutoOpenCondition = 1;
  public int mMobileNetWorkScreenTime = 600000;
  public byte mMobileNetWorkStateOperation = 0;
  public int mScreenOffTime = 15000;
  public byte mVibrateStateOperation = 0;
  public int mWifiAutoCloseCondition = 1;
  public int mWifiAutoCloseScreenTime = 600000;
  public int mWifiAutoOpenCondition = 1;
  public int mWifiLowSignalThreshold = 5;
  public int mWifiOverTimeDuration = 300000;
  public byte mWifiStateOperation = 0;

  static
  {
    int[] arrayOfInt = new int[3];
    arrayOfInt[1] = 1;
    arrayOfInt[2] = 11;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.powersaving.PowerSavingConfig
 * JD-Core Version:    0.6.2
 */