package com.tencent.tmsecure.module.networkload;

import QQPIM.ConnectType;

public class NetworkLoadTask
{
  public static final int STATE_DELETED = 4;
  public static final int STATE_FAILED = 2;
  public static final int STATE_FINISHED = 3;
  public static final int STATE_PAUSED = 1;
  public static final int STATE_PRE = -2;
  public static final int STATE_RUNNING = 0;
  public static final int STATE_WAITING = -1;
  public boolean isOnChangeRetry = false;
  public boolean isSupportRange = false;
  public boolean isWaitingToPaused = false;
  public String mChangeUrl;
  public long mCurrentSize;
  public int mErrorCode = 0;
  public String mErrorMsg = "";
  public int mErrorRssi = -1;
  public String mHostAddress = "";
  public String mName;
  public String mNetworkName = "";
  public ConnectType mNetworkType = ConnectType.CT_NONE;
  public String mParentPath;
  public float mProgress;
  public String mRedirectUrl;
  public long mSize = -1L;
  public int mSpeed;
  public int mState = -2;
  public Thread mThread;
  public String mUrl;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.networkload.NetworkLoadTask
 * JD-Core Version:    0.6.2
 */