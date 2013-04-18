package com.ijinshan.cleaner;

import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

final class a extends Handler
{
  a(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    case 5:
    default:
    case 2:
    case 4:
    case 3:
    case 6:
    }
    while (true)
    {
      return;
      CacheCleanerActivity.f(this.a).setVisibility(0);
      CacheCleanerActivity.f(this.a).setProgress(CacheCleanerActivity.f(this.a).getProgress() + CacheCleanerActivity.g(this.a));
      CacheCleanerActivity.h(this.a).setText(this.a.getString(2131427967) + (String)paramMessage.obj);
      continue;
      com.ijinshan.cleaner.a.a locala = (com.ijinshan.cleaner.a.a)paramMessage.obj;
      if (!CacheCleanerActivity.e(this.a).contains(locala))
      {
        CacheCleanerActivity.e(this.a).add(locala);
        CacheCleanerActivity.i(this.a).notifyDataSetChanged();
        continue;
        com.jxphone.mosecurity.a.a.i(this.a, "mg_rub_cache_scan");
        CacheCleanerActivity.f(this.a).setProgress(0);
        CacheCleanerActivity.f(this.a).setVisibility(4);
        this.a.a(CacheCleanerActivity.e(this.a));
        long l = this.a.e();
        if (l > 0L)
        {
          String str = CacheCleanerActivity.a(l);
          int i = CacheCleanerActivity.e(this.a).size();
          CacheCleanerActivity.h(this.a).setText("共扫描到 " + i + " 项缓存数据," + " 总大小" + str);
          CacheCleanerActivity.j(this.a).setText(this.a.getString(2131427961));
          this.a.g = g.b;
        }
        if (l <= 0L)
        {
          this.a.a.setVisibility(8);
          this.a.b.setVisibility(0);
          TextView localTextView = CacheCleanerActivity.k(this.a);
          CacheCleanerActivity localCacheCleanerActivity = this.a;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.a.getString(2131427954);
          localTextView.setText(localCacheCleanerActivity.getString(2131427966, arrayOfObject));
          CacheCleanerActivity.j(this.a).setText(this.a.getString(2131427959));
          this.a.g = g.c;
          continue;
          CacheCleanerActivity.l(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.a
 * JD-Core Version:    0.6.2
 */