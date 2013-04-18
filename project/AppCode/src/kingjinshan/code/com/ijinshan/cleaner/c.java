package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class c
  implements DialogInterface.OnClickListener
{
  c(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (CacheCleanerActivity.c(this.a) != null);
    synchronized (CacheCleanerActivity.c(this.a))
    {
      CacheCleanerActivity.a(this.a, false);
      CacheCleanerActivity.c(this.a).notify();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.c
 * JD-Core Version:    0.6.2
 */