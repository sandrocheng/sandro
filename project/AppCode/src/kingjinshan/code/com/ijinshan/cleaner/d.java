package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.List;

final class d
  implements DialogInterface.OnClickListener
{
  d(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (CacheCleanerActivity.c(this.a) != null);
    synchronized (CacheCleanerActivity.c(this.a))
    {
      CacheCleanerActivity.c(this.a).notify();
      CacheCleanerActivity.a(this.a, false);
      CacheCleanerActivity.m(this.a);
      int i = CacheCleanerActivity.e(this.a).size();
      long l = this.a.e();
      CacheCleanerActivity.h(this.a).setText("共扫描到 " + i + " 项缓存数据," + " 总大小" + l);
      CacheCleanerActivity.f(this.a).setVisibility(4);
      if (l > 0L)
      {
        CacheCleanerActivity.j(this.a).setText(this.a.getString(2131427961));
        this.a.g = g.b;
      }
      if (l <= 0L)
      {
        CacheCleanerActivity.j(this.a).setText(this.a.getString(2131427959));
        this.a.g = g.c;
      }
      paramDialogInterface.dismiss();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.d
 * JD-Core Version:    0.6.2
 */