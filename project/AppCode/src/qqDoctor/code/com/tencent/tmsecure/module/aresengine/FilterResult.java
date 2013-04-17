package com.tencent.tmsecure.module.aresengine;

import java.util.ArrayList;

public final class FilterResult
{
  public boolean isBlocked;
  public TelephonyEntity mData;
  public final ArrayList<Runnable> mDotos = new ArrayList();
  public int mFilterfiled;
  public Object[] mParams;
  public int mState;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.FilterResult
 * JD-Core Version:    0.6.2
 */