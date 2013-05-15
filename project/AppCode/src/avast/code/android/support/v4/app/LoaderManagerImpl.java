package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.d.a;
import android.support.v4.d.d;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class LoaderManagerImpl extends LoaderManager
{
  static boolean DEBUG = false;
  static final String TAG = "LoaderManager";
  FragmentActivity mActivity;
  boolean mCreatingLoader;
  final d mInactiveLoaders = new d();
  final d mLoaders = new d();
  boolean mRetaining;
  boolean mRetainingStarted;
  boolean mStarted;
  final String mWho;

  LoaderManagerImpl(String paramString, FragmentActivity paramFragmentActivity, boolean paramBoolean)
  {
    this.mWho = paramString;
    this.mActivity = paramFragmentActivity;
    this.mStarted = paramBoolean;
  }

  private LoaderManagerImpl.LoaderInfo createAndInstallLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    try
    {
      this.mCreatingLoader = true;
      LoaderManagerImpl.LoaderInfo localLoaderInfo = createLoader(paramInt, paramBundle, paramLoaderCallbacks);
      installLoader(localLoaderInfo);
      return localLoaderInfo;
    }
    finally
    {
      this.mCreatingLoader = false;
    }
  }

  private LoaderManagerImpl.LoaderInfo createLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    LoaderManagerImpl.LoaderInfo localLoaderInfo = new LoaderManagerImpl.LoaderInfo(this, paramInt, paramBundle, paramLoaderCallbacks);
    localLoaderInfo.mLoader = paramLoaderCallbacks.onCreateLoader(paramInt, paramBundle);
    return localLoaderInfo;
  }

  public void destroyLoader(int paramInt)
  {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader");
    if (DEBUG)
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt);
    int i = this.mLoaders.g(paramInt);
    if (i >= 0)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo2 = (LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i);
      this.mLoaders.d(i);
      localLoaderInfo2.destroy();
    }
    int j = this.mInactiveLoaders.g(paramInt);
    if (j >= 0)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo1 = (LoaderManagerImpl.LoaderInfo)this.mInactiveLoaders.f(j);
      this.mInactiveLoaders.d(j);
      localLoaderInfo1.destroy();
    }
    if ((this.mActivity != null) && (!hasRunningLoaders()))
      this.mActivity.mFragments.startPendingDeferredFragments();
  }

  void doDestroy()
  {
    if (!this.mRetaining)
    {
      if (DEBUG)
        Log.v("LoaderManager", "Destroying Active in " + this);
      for (int j = -1 + this.mLoaders.a(); j >= 0; j--)
        ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(j)).destroy();
    }
    if (DEBUG)
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    for (int i = -1 + this.mInactiveLoaders.a(); i >= 0; i--)
      ((LoaderManagerImpl.LoaderInfo)this.mInactiveLoaders.f(i)).destroy();
    this.mInactiveLoaders.b();
  }

  void doReportNextStart()
  {
    for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
      ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).mReportNextStart = true;
  }

  void doReportStart()
  {
    for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
      ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).reportStart();
  }

  void doRetain()
  {
    if (DEBUG)
      Log.v("LoaderManager", "Retaining in " + this);
    if (!this.mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.mRetaining = true;
      this.mStarted = false;
      for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
        ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).retain();
    }
  }

  void doStart()
  {
    if (DEBUG)
      Log.v("LoaderManager", "Starting in " + this);
    if (this.mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      this.mStarted = true;
      for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
        ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).start();
    }
  }

  void doStop()
  {
    if (DEBUG)
      Log.v("LoaderManager", "Stopping in " + this);
    if (!this.mStarted)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
    }
    while (true)
    {
      return;
      for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
        ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).stop();
      this.mStarted = false;
    }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    if (this.mLoaders.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      String str2 = paramString + "    ";
      for (int j = 0; j < this.mLoaders.a(); j++)
      {
        LoaderManagerImpl.LoaderInfo localLoaderInfo2 = (LoaderManagerImpl.LoaderInfo)this.mLoaders.f(j);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.mLoaders.e(j));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localLoaderInfo2.toString());
        localLoaderInfo2.dump(str2, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
    }
    if (this.mInactiveLoaders.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      String str1 = paramString + "    ";
      while (i < this.mInactiveLoaders.a())
      {
        LoaderManagerImpl.LoaderInfo localLoaderInfo1 = (LoaderManagerImpl.LoaderInfo)this.mInactiveLoaders.f(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.mInactiveLoaders.e(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localLoaderInfo1.toString());
        localLoaderInfo1.dump(str1, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i++;
      }
    }
  }

  void finishRetain()
  {
    if (this.mRetaining)
    {
      if (DEBUG)
        Log.v("LoaderManager", "Finished Retaining in " + this);
      this.mRetaining = false;
      for (int i = -1 + this.mLoaders.a(); i >= 0; i--)
        ((LoaderManagerImpl.LoaderInfo)this.mLoaders.f(i)).finishRetain();
    }
  }

  public m getLoader(int paramInt)
  {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader");
    LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)this.mLoaders.a(paramInt);
    m localm;
    if (localLoaderInfo != null)
      if (localLoaderInfo.mPendingLoader != null)
        localm = localLoaderInfo.mPendingLoader.mLoader;
    while (true)
    {
      return localm;
      localm = localLoaderInfo.mLoader;
      continue;
      localm = null;
    }
  }

  public boolean hasRunningLoaders()
  {
    int i = this.mLoaders.a();
    int j = 0;
    boolean bool1 = false;
    if (j < i)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)this.mLoaders.f(j);
      if ((localLoaderInfo.mStarted) && (!localLoaderInfo.mDeliveredData));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 |= bool2;
        j++;
        break;
      }
    }
    return bool1;
  }

  public m initLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader");
    LoaderManagerImpl.LoaderInfo localLoaderInfo = (LoaderManagerImpl.LoaderInfo)this.mLoaders.a(paramInt);
    if (DEBUG)
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    if (localLoaderInfo == null)
    {
      localLoaderInfo = createAndInstallLoader(paramInt, paramBundle, paramLoaderCallbacks);
      if (DEBUG)
        Log.v("LoaderManager", "  Created new loader " + localLoaderInfo);
    }
    while (true)
    {
      if ((localLoaderInfo.mHaveData) && (this.mStarted))
        localLoaderInfo.callOnLoadFinished(localLoaderInfo.mLoader, localLoaderInfo.mData);
      return localLoaderInfo.mLoader;
      if (DEBUG)
        Log.v("LoaderManager", "  Re-using existing loader " + localLoaderInfo);
      localLoaderInfo.mCallbacks = paramLoaderCallbacks;
    }
  }

  void installLoader(LoaderManagerImpl.LoaderInfo paramLoaderInfo)
  {
    this.mLoaders.b(paramLoaderInfo.mId, paramLoaderInfo);
    if (this.mStarted)
      paramLoaderInfo.start();
  }

  public m restartLoader(int paramInt, Bundle paramBundle, LoaderManager.LoaderCallbacks paramLoaderCallbacks)
  {
    if (this.mCreatingLoader)
      throw new IllegalStateException("Called while creating a loader");
    LoaderManagerImpl.LoaderInfo localLoaderInfo1 = (LoaderManagerImpl.LoaderInfo)this.mLoaders.a(paramInt);
    if (DEBUG)
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    if (localLoaderInfo1 != null)
    {
      LoaderManagerImpl.LoaderInfo localLoaderInfo2 = (LoaderManagerImpl.LoaderInfo)this.mInactiveLoaders.a(paramInt);
      if (localLoaderInfo2 == null)
        break label317;
      if (!localLoaderInfo1.mHaveData)
        break label179;
      if (DEBUG)
        Log.v("LoaderManager", "  Removing last inactive loader: " + localLoaderInfo1);
      localLoaderInfo2.mDeliveredData = false;
      localLoaderInfo2.destroy();
      localLoaderInfo1.mLoader.r();
      this.mInactiveLoaders.b(paramInt, localLoaderInfo1);
    }
    while (true)
    {
      for (m localm = createAndInstallLoader(paramInt, paramBundle, paramLoaderCallbacks).mLoader; ; localm = localLoaderInfo1.mPendingLoader.mLoader)
      {
        return localm;
        label179: if (!localLoaderInfo1.mStarted)
        {
          if (DEBUG)
            Log.v("LoaderManager", "  Current loader is stopped; replacing");
          this.mLoaders.b(paramInt, null);
          localLoaderInfo1.destroy();
          break;
        }
        if (localLoaderInfo1.mPendingLoader != null)
        {
          if (DEBUG)
            Log.v("LoaderManager", "  Removing pending loader: " + localLoaderInfo1.mPendingLoader);
          localLoaderInfo1.mPendingLoader.destroy();
          localLoaderInfo1.mPendingLoader = null;
        }
        if (DEBUG)
          Log.v("LoaderManager", "  Enqueuing as new pending loader");
        localLoaderInfo1.mPendingLoader = createLoader(paramInt, paramBundle, paramLoaderCallbacks);
      }
      label317: if (DEBUG)
        Log.v("LoaderManager", "  Making last loader inactive: " + localLoaderInfo1);
      localLoaderInfo1.mLoader.r();
      this.mInactiveLoaders.b(paramInt, localLoaderInfo1);
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    a.a(this.mActivity, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }

  void updateActivity(FragmentActivity paramFragmentActivity)
  {
    this.mActivity = paramFragmentActivity;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.LoaderManagerImpl
 * JD-Core Version:    0.6.2
 */