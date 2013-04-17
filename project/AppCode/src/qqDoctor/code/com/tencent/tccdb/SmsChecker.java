package com.tencent.tccdb;

import android.content.Context;
import btd;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.update.IUpdateObserver;
import com.tencent.tmsecure.module.update.UpdateManager;
import java.util.concurrent.atomic.AtomicReference;
import k;

public class SmsChecker
{
  public static final int EM_MOD_CHARGE = 8;
  public static final int EM_MOD_KEYWORD = 2;
  public static final int EM_MOD_PATTERN = 4;
  public static final int EM_MOD_SENDER = 1;
  private static volatile SmsChecker mInstance = null;
  private final int chargeCheckerFlag = 8;
  private String dbpath;
  private boolean initSuccess = false;
  private IUpdateObserver mUpdateObserver = new SmsChecker.1(this);
  private int object;
  private final int smsCheckerFlag = 3;

  static
  {
    String str = TMSApplication.getStrFromEnvMap("aresengine_libname");
    k.a(TMSApplication.getApplicaionContext(), str);
  }

  private SmsChecker(Context paramContext)
  {
    this.object = newObject(paramContext);
    if (this.object == 0)
      throw new OutOfMemoryError();
    this.dbpath = btd.a(paramContext, "rule_store.sys", null);
    if ((this.dbpath != null) && (initSmsChecker(this.object, 3, this.dbpath) == 0) && (initChargeChecker(this.object, 8, this.dbpath) == 0))
      this.initSuccess = true;
    ((UpdateManager)ManagerCreator.getManager(UpdateManager.class)).addObserver(4, this.mUpdateObserver);
  }

  public static void DestoryInstance()
  {
    mInstance = null;
  }

  private static native int checkChargeSms(int paramInt, MCheckInput paramMCheckInput, AtomicReference<MMatchSysResult> paramAtomicReference);

  private static native int checkSmsSys(int paramInt, MCheckInput paramMCheckInput, AtomicReference<MMatchSysResult> paramAtomicReference);

  private static native void deleteObject(int paramInt);

  private static native void finishChargeChecker(int paramInt);

  private static native void finishSmsChecker(int paramInt);

  public static int getFinalAction(Context paramContext, MMatchSysResult paramMMatchSysResult)
  {
    return nativeGetFinalAction(paramContext, paramMMatchSysResult);
  }

  public static SmsChecker getInstance(Context paramContext)
  {
    if (mInstance == null);
    try
    {
      if (mInstance == null)
        mInstance = new SmsChecker(paramContext);
      return mInstance;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void getRuleFileHeader(Context paramContext, AtomicReference<RuleFileHeader> paramAtomicReference, String paramString)
  {
    nativeGetRuleFileInfo(paramContext, paramString, paramAtomicReference);
  }

  private static native int initChargeChecker(int paramInt1, int paramInt2, String paramString);

  private static native int initSmsChecker(int paramInt1, int paramInt2, String paramString);

  private static native int nativeGetFinalAction(Context paramContext, MMatchSysResult paramMMatchSysResult);

  private static native int nativeGetRuleFileInfo(Context paramContext, String paramString, AtomicReference<RuleFileHeader> paramAtomicReference);

  private static native int newObject(Context paramContext);

  private static native int reloadChargeRule(int paramInt1, int paramInt2, String paramString);

  private static native int reloadModRule(int paramInt1, int paramInt2, String paramString);

  private static void throwIfError(int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new SmsCheckerException(paramInt);
    case 0:
    }
  }

  public boolean checkChargeSms(MCheckInput paramMCheckInput, AtomicReference<MMatchSysResult> paramAtomicReference)
  {
    int i;
    if (!this.initSuccess)
    {
      if (reloadModRule())
        this.initSuccess = true;
    }
    else
    {
      i = checkChargeSms(this.object, paramMCheckInput, paramAtomicReference);
      if (i != 0)
        break label62;
      bool = true;
    }
    label62: 
    do
    {
      while (true)
      {
        return bool;
        paramAtomicReference.set(new MMatchSysResult(0, 0, 0, 0, 0, null));
        bool = false;
      }
      bool = false;
    }
    while (i > 0);
    boolean bool = false;
    switch (i)
    {
    case 0:
    }
    throw new SmsCheckerException(i);
  }

  public boolean checkSmsSys(MCheckInput paramMCheckInput, AtomicReference<MMatchSysResult> paramAtomicReference)
  {
    int i;
    if (!this.initSuccess)
    {
      if (reloadModRule())
        this.initSuccess = true;
    }
    else
    {
      i = checkSmsSys(this.object, paramMCheckInput, paramAtomicReference);
      if (i != 0)
        break label62;
      bool = true;
    }
    label62: 
    do
    {
      while (true)
      {
        return bool;
        paramAtomicReference.set(new MMatchSysResult(0, 0, 0, 0, 0, null));
        bool = false;
      }
      bool = false;
    }
    while (i == -3);
    boolean bool = false;
    switch (i)
    {
    case 0:
    }
    throw new SmsCheckerException(i);
  }

  protected void finalize()
  {
    if ((this.object != 0) && (this.initSuccess))
    {
      finishSmsChecker(this.object);
      finishChargeChecker(this.object);
      deleteObject(this.object);
      this.object = 0;
    }
  }

  public void finishChargeChecker()
  {
    if (this.initSuccess)
      finishChargeChecker(this.object);
  }

  public void finishSmsChecker()
  {
    if (this.initSuccess)
      finishSmsChecker(this.object);
  }

  public int initChargeChecker(int paramInt, String paramString)
  {
    if (this.initSuccess);
    for (int i = initChargeChecker(this.object, paramInt, paramString); ; i = -1)
      return i;
  }

  public int initSmsChecker(int paramInt, String paramString)
  {
    if (this.initSuccess);
    for (int i = initSmsChecker(this.object, paramInt, paramString); ; i = -1)
      return i;
  }

  public int reloadChargeRule(int paramInt, String paramString)
  {
    if (this.initSuccess);
    for (int i = reloadChargeRule(this.object, paramInt, paramString); ; i = -1)
      return i;
  }

  public boolean reloadModRule()
  {
    while (true)
    {
      try
      {
        if (this.initSuccess)
        {
          int i = reloadModRule(this.object, 3, this.dbpath);
          int j = reloadChargeRule(this.object, 8, this.dbpath);
          int k = i | j;
          if (k == 0)
          {
            bool = true;
            return bool;
          }
          switch (k)
          {
          default:
            throw new SmsCheckerException(k);
          case 0:
          }
        }
      }
      finally
      {
      }
      boolean bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccdb.SmsChecker
 * JD-Core Version:    0.6.2
 */