package com.avast.android.mobilesecurity.scan;

import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.app.LoaderManager;

class b extends ContentObserver
{
  b(ScanFragment paramScanFragment, Handler paramHandler, LoaderManager paramLoaderManager)
  {
    super(paramHandler);
  }

  public void onChange(boolean paramBoolean)
  {
    this.a.restartLoader(10003, null, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.b
 * JD-Core Version:    0.6.2
 */