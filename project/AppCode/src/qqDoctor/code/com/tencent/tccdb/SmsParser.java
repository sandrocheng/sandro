package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;
import k;

public class SmsParser
{
  static
  {
    String str = TMSApplication.getStrFromEnvMap("sms_parser_libname");
    k.a(TMSApplication.getApplicaionContext(), str);
  }

  public static int getNumberEntrance(Context paramContext, SmsInfo paramSmsInfo, MatchRule paramMatchRule, AtomicReference<Ret> paramAtomicReference)
  {
    return nativeGetNumberEntrance(paramContext, paramSmsInfo, paramMatchRule, paramAtomicReference);
  }

  public static int getWrongSmsType(Context paramContext, SmsInfo paramSmsInfo, AtomicReference<Ret> paramAtomicReference)
  {
    return nativeGetWrongSmsType(paramContext, paramSmsInfo, paramAtomicReference);
  }

  private static native int nativeGetNumberEntrance(Context paramContext, SmsInfo paramSmsInfo, MatchRule paramMatchRule, AtomicReference<Ret> paramAtomicReference);

  private static native int nativeGetWrongSmsType(Context paramContext, SmsInfo paramSmsInfo, AtomicReference<Ret> paramAtomicReference);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.SmsParser
 * JD-Core Version:    0.6.2
 */