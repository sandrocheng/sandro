package com.tencent.tccdb;

import a;
import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;

public class PinyinMatch
{
  private int instance = -1;

  static
  {
    a.c(TMSApplication.getApplicaionContext(), "tmspinyin");
  }

  public PinyinMatch(Context paramContext)
  {
    newObject(paramContext);
  }

  private static native int native_match(String paramString, AtomicReference<String> paramAtomicReference);

  private static native int newObject(Context paramContext);

  public String match(char paramChar)
  {
    String str = new String(new char[] { paramChar });
    AtomicReference localAtomicReference = new AtomicReference();
    native_match(str, localAtomicReference);
    return (String)localAtomicReference.get();
  }

  public String match(String paramString)
  {
    AtomicReference localAtomicReference = new AtomicReference();
    native_match(paramString, localAtomicReference);
    return (String)localAtomicReference.get();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.PinyinMatch
 * JD-Core Version:    0.6.2
 */