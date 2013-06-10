package org.antivirus.core.compatibility;

import android.os.Build.VERSION;

public class AndroidVersionCompatibility
{
  public static final int VER_DONUT = 4;
  public static final int VER_ECLAIR = 5;
  public static final int VER_FROYO = 8;
  public static final int VER_GINGERBREAD = 9;
  public static final int VER_HONEYCOMB = 11;
  public static final int VER_ICS = 14;

  public static boolean isEclairOrAbove()
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 5);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.compatibility.AndroidVersionCompatibility
 * JD-Core Version:    0.6.2
 */