package com.tencent.tccsync;

import bl;
import ca;
import java.util.concurrent.atomic.AtomicInteger;

public class TccRemoteSyncCheckUtil
{
  private int cppInstance = 0;

  static
  {
    bl.f().a(bl.b());
  }

  public TccRemoteSyncCheckUtil()
  {
    if (this.cppInstance == 0)
      throw new OutOfMemoryError();
  }

  private native void deleteTccRemoteSyncCheckUtilInstance(int paramInt);

  private native byte[] getPostBody(int paramInt);

  private native String getPostUrl(int paramInt);

  private native int getRemoteContactDelTotal(int paramInt, AtomicInteger paramAtomicInteger);

  private native int getRemoteSyncCheck(int paramInt, AtomicInteger paramAtomicInteger1, AtomicInteger paramAtomicInteger2, AtomicInteger paramAtomicInteger3, AtomicInteger paramAtomicInteger4);

  private native int getRemoteTccSyncCount(int paramInt1, int paramInt2, AtomicInteger paramAtomicInteger1, AtomicInteger paramAtomicInteger2, AtomicInteger paramAtomicInteger3, AtomicInteger paramAtomicInteger4, AtomicInteger paramAtomicInteger5);

  private native int makeCheckWapDataPackage(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt2);

  private native int newTccRemoteSyncCheckUtilInstance();

  private native int solveLoginResponsePackage(int paramInt1, byte[] paramArrayOfByte, int paramInt2);

  protected void finalize()
    throws Throwable
  {
    release();
  }

  public byte[] getPostBody()
  {
    return getPostBody(this.cppInstance);
  }

  public String getPostUrl()
  {
    return getPostUrl(this.cppInstance);
  }

  public int getRemoteContactDelTotal(AtomicInteger paramAtomicInteger)
  {
    return getRemoteContactDelTotal(this.cppInstance, paramAtomicInteger);
  }

  public int getRemoteSyncCheck(AtomicInteger paramAtomicInteger1, AtomicInteger paramAtomicInteger2, AtomicInteger paramAtomicInteger3, AtomicInteger paramAtomicInteger4)
  {
    return getRemoteSyncCheck(this.cppInstance, paramAtomicInteger1, paramAtomicInteger2, paramAtomicInteger3, paramAtomicInteger4);
  }

  public int getRemoteTccSyncCount(int paramInt, AtomicInteger paramAtomicInteger1, AtomicInteger paramAtomicInteger2, AtomicInteger paramAtomicInteger3, AtomicInteger paramAtomicInteger4, AtomicInteger paramAtomicInteger5)
  {
    return getRemoteTccSyncCount(this.cppInstance, paramInt, paramAtomicInteger1, paramAtomicInteger2, paramAtomicInteger3, paramAtomicInteger4, paramAtomicInteger5);
  }

  public int makeCheckWapDataPackage(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    return makeCheckWapDataPackage(this.cppInstance, paramString1, paramString2, paramString3, paramString4, paramString5, paramInt);
  }

  public void release()
  {
    if (this.cppInstance != 0)
    {
      deleteTccRemoteSyncCheckUtilInstance(this.cppInstance);
      this.cppInstance = 0;
    }
  }

  public int solveLoginResponsePackage(byte[] paramArrayOfByte, int paramInt)
  {
    return solveLoginResponsePackage(this.cppInstance, paramArrayOfByte, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccsync.TccRemoteSyncCheckUtil
 * JD-Core Version:    0.6.2
 */