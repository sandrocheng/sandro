package com.tencent.tmsecure.utils;

import android.os.Build;
import android.os.Build.VERSION;

public final class SDKUtil
{
  public static final int OS_1_5 = 3;
  public static final int OS_1_6 = 4;
  public static final int OS_2_0 = 5;
  public static final int OS_2_0_1 = 6;
  public static final int OS_2_1 = 7;
  public static final int OS_2_2 = 8;
  public static final int OS_2_3 = 9;
  public static final int OS_2_3_3 = 10;
  public static final int OS_3_0 = 11;
  public static final int OS_3_1 = 12;
  public static final int OS_3_2 = 13;
  public static final int OS_4_0 = 14;
  public static final int OS_4_0_3 = 15;
  public static final int OS_4_1_0 = 16;
  public static final int OS_4_2_0 = 17;
  public static final int RELEASE_ANDROID = 2;
  public static final int RELEASE_LEPHONE = 3;
  public static final int RELEASE_MEIZU_M9 = 4;
  public static final int RELEASE_OMS = 1;

  public static int getAndroidReleaseName()
  {
    String str = Build.PRODUCT;
    int i;
    if ((str.contains("OMS")) || (str.contains("SnapperTD")))
      i = 1;
    while (true)
    {
      return i;
      if ((str.contains("qsd8250_surf")) || (str.contains("3GW100")))
        i = 3;
      else if (str.contains("meizu_m9"))
        i = 4;
      else
        i = 2;
    }
  }

  public static String getSDKName()
  {
    return Build.VERSION.SDK;
  }

  public static int getSDKVersion()
  {
    return Integer.parseInt(Build.VERSION.SDK);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.SDKUtil
 * JD-Core Version:    0.6.2
 */