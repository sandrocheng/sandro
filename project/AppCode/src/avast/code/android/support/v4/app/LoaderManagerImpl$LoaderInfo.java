package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.a.o;
import android.support.v4.d.a;
import android.support.v4.d.d;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class LoaderManagerImpl$LoaderInfo
  implements o
{
  final Bundle mArgs;
  LoaderManager.LoaderCallbacks mCallbacks;
  Object mData;
  boolean mDeliveredData;
  boolean mDestroyed;
  boolean mHaveData;
  final int mId;
  boolean mListenerRegistered;
  m mLoader;
  LoaderInfo mPendingLoader;
  boolean mReportNextStart;
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;

  public LoaderManagerImpl$LoaderInfo(LoaderManagerImpl paramLoaderManagerImpl, int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    this.mId = paramInt;
    this.mArgs = paramBundle;
    this.mCallbacks = paramLoaderCallbacks;
  }

  void callOnLoadFinished(m paramm, Object paramObject)
  {
    String str2;
    if (this.mCallbacks != null)
    {
      if (this.this$0.mActivity == null)
        break label164;
      str2 = this.this$0.mActivity.mFragments.mNoTransactionsBecause;
      this.this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
    }
    label164: for (String str1 = str2; ; str1 = null)
      try
      {
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  onLoadFinished in " + paramm + ": " + paramm.c(paramObject));
        this.mCallbacks.onLoadFinished(paramm, paramObject);
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
        this.mDeliveredData = true;
        return;
      }
      finally
      {
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
      }
  }

  void destroy()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Destroying: " + this);
    this.mDestroyed = true;
    boolean bool = this.mDeliveredData;
    this.mDeliveredData = false;
    String str2;
    if ((this.mCallbacks != null) && (this.mLoader != null) && (this.mHaveData) && (bool))
    {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Reseting: " + this);
      if (this.this$0.mActivity == null)
        break label273;
      str2 = this.this$0.mActivity.mFragments.mNoTransactionsBecause;
      this.this$0.mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
    }
    label273: for (String str1 = str2; ; str1 = null)
      try
      {
        this.mCallbacks.onLoaderReset(this.mLoader);
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
        this.mCallbacks = null;
        this.mData = null;
        this.mHaveData = false;
        if (this.mLoader != null)
        {
          if (this.mListenerRegistered)
          {
            this.mListenerRegistered = false;
            this.mLoader.a(this);
          }
          this.mLoader.t();
        }
        if (this.mPendingLoader != null)
          this.mPendingLoader.destroy();
        return;
      }
      finally
      {
        if (this.this$0.mActivity != null)
          this.this$0.mActivity.mFragments.mNoTransactionsBecause = str1;
      }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.mId);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(this.mArgs);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(this.mCallbacks);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(this.mLoader);
    if (this.mLoader != null)
      this.mLoader.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if ((this.mHaveData) || (this.mDeliveredData))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(this.mHaveData);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(this.mDeliveredData);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(this.mData);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.mStarted);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(this.mReportNextStart);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.mDestroyed);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(this.mRetaining);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(this.mRetainingStarted);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(this.mListenerRegistered);
    if (this.mPendingLoader != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.mPendingLoader);
      paramPrintWriter.println(":");
      this.mPendingLoader.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }

  void finishRetain()
  {
    if (this.mRetaining)
    {
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      this.mRetaining = false;
      if ((this.mStarted != this.mRetainingStarted) && (!this.mStarted))
        stop();
    }
    if ((this.mStarted) && (this.mHaveData) && (!this.mReportNextStart))
      callOnLoadFinished(this.mLoader, this.mData);
  }

  public void onLoadComplete(m paramm, Object paramObject)
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "onLoadComplete: " + this);
    if (this.mDestroyed)
      if (LoaderManagerImpl.DEBUG)
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
    while (true)
    {
      return;
      if (this.this$0.mLoaders.a(this.mId) != this)
      {
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  Ignoring load complete -- not active");
      }
      else
      {
        LoaderInfo localLoaderInfo1 = this.mPendingLoader;
        if (localLoaderInfo1 != null)
        {
          if (LoaderManagerImpl.DEBUG)
            Log.v("LoaderManager", "  Switching to pending loader: " + localLoaderInfo1);
          this.mPendingLoader = null;
          this.this$0.mLoaders.b(this.mId, null);
          destroy();
          this.this$0.installLoader(localLoaderInfo1);
        }
        else
        {
          if ((this.mData != paramObject) || (!this.mHaveData))
          {
            this.mData = paramObject;
            this.mHaveData = true;
            if (this.mStarted)
              callOnLoadFinished(paramm, paramObject);
          }
          LoaderInfo localLoaderInfo2 = (LoaderInfo)this.this$0.mInactiveLoaders.a(this.mId);
          if ((localLoaderInfo2 != null) && (localLoaderInfo2 != this))
          {
            localLoaderInfo2.mDeliveredData = false;
            localLoaderInfo2.destroy();
            this.this$0.mInactiveLoaders.c(this.mId);
          }
          if ((this.this$0.mActivity != null) && (!this.this$0.hasRunningLoaders()))
            this.this$0.mActivity.mFragments.startPendingDeferredFragments();
        }
      }
    }
  }

  void reportStart()
  {
    if ((this.mStarted) && (this.mReportNextStart))
    {
      this.mReportNextStart = false;
      if (this.mHaveData)
        callOnLoadFinished(this.mLoader, this.mData);
    }
  }

  void retain()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Retaining: " + this);
    this.mRetaining = true;
    this.mRetainingStarted = this.mStarted;
    this.mStarted = false;
    this.mCallbacks = null;
  }

  void start()
  {
    if ((this.mRetaining) && (this.mRetainingStarted))
      this.mStarted = true;
    while (true)
    {
      return;
      if (!this.mStarted)
      {
        this.mStarted = true;
        if (LoaderManagerImpl.DEBUG)
          Log.v("LoaderManager", "  Starting: " + this);
        if ((this.mLoader == null) && (this.mCallbacks != null))
          this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
        if (this.mLoader != null)
        {
          if ((this.mLoader.getClass().isMemberClass()) && (!Modifier.isStatic(this.mLoader.getClass().getModifiers())))
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
          if (!this.mListenerRegistered)
          {
            this.mLoader.a(this.mId, this);
            this.mListenerRegistered = true;
          }
          this.mLoader.o();
        }
      }
    }
  }

  void stop()
  {
    if (LoaderManagerImpl.DEBUG)
      Log.v("LoaderManager", "  Stopping: " + this);
    this.mStarted = false;
    if ((!this.mRetaining) && (this.mLoader != null) && (this.mListenerRegistered))
    {
      this.mListenerRegistered = false;
      this.mLoader.a(this);
      this.mLoader.q();
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.mId);
    localStringBuilder.append(" : ");
    a.a(this.mLoader, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl.LoaderInfo
 * JD-Core Version:    0.6.2
 */