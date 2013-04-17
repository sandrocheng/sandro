package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import k;

public class TccCryptor
{
  static
  {
    String str = TMSApplication.getStrFromEnvMap("cryptor_libname");
    k.a(TMSApplication.getApplicaionContext(), str);
  }

  public static int EndianSwap(int paramInt)
  {
    return paramInt << 24 | (0xFF00 & paramInt) << 8 | (0xFF0000 & paramInt) >>> 8 | paramInt >>> 24;
  }

  public static native byte[] decrypt(Context paramContext, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  public static String encrypt(Context paramContext, String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = paramString1.getBytes();
    if (paramString2 == null);
    for (byte[] arrayOfByte2 = null; ; arrayOfByte2 = paramString2.getBytes())
      return new String(encrypt(paramContext, arrayOfByte1, arrayOfByte2));
  }

  public static native byte[] encrypt(Context paramContext, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  public static native byte[] makePassword(Context paramContext, byte[] paramArrayOfByte);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.TccCryptor
 * JD-Core Version:    0.6.2
 */