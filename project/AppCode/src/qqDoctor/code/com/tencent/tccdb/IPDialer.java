package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;
import k;

public class IPDialer
{
  public static final int TYPE_MOBILE = 1;
  public static final int TYPE_TELECOM = 3;
  public static final int TYPE_UNICOM = 2;
  private int object = 0;

  static
  {
    String str = TMSApplication.getStrFromEnvMap("location_libname");
    k.a(TMSApplication.getApplicaionContext(), str);
  }

  public IPDialer(Context paramContext)
  {
    this.object = newObject(paramContext);
    if (this.object == 0)
      throw new OutOfMemoryError();
  }

  private static native int changeToIPNum(int paramInt, String paramString, AtomicReference<String> paramAtomicReference);

  private static native void deleteObject(int paramInt);

  private static native int getConfig(int paramInt, AtomicReference<IPConfigSet> paramAtomicReference);

  private static native int initIPDialer(int paramInt1, String paramString, int paramInt2);

  private static native int newObject(Context paramContext);

  private static native int setConfig(int paramInt, IPConfigSet paramIPConfigSet);

  public int changeToIPNum(String paramString, AtomicReference<String> paramAtomicReference)
  {
    return changeToIPNum(this.object, paramString, paramAtomicReference);
  }

  protected void finalize()
  {
    if (this.object != 0)
      deleteObject(this.object);
  }

  public IPConfigSet getConfig()
  {
    AtomicReference localAtomicReference = new AtomicReference();
    if (getConfig(this.object, localAtomicReference) == 0);
    for (IPConfigSet localIPConfigSet = (IPConfigSet)localAtomicReference.get(); ; localIPConfigSet = null)
      return localIPConfigSet;
  }

  public int initIPDialer(String paramString, int paramInt)
  {
    return initIPDialer(this.object, paramString, paramInt);
  }

  public int setConfig(IPConfigSet paramIPConfigSet)
  {
    return setConfig(this.object, paramIPConfigSet);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.IPDialer
 * JD-Core Version:    0.6.2
 */