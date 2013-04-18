package com.ijinshan.cleaner;

import android.view.View;
import android.view.View.OnClickListener;

final class h
  implements View.OnClickListener
{
  h(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.g == g.a)
    {
      CacheCleanerActivity.a(this.a, true);
      this.a.b();
    }
    while (true)
    {
      return;
      if (this.a.g == g.b)
      {
        com.jxphone.mosecurity.a.a.i(this.a, "mg_rub_cache_clean");
        if (CacheCleanerActivity.a(this.a).d())
        {
          this.a.c();
        }
        else
        {
          com.jxphone.mosecurity.a.a.i(this.a, "mg_rub_cache_clean_success");
          if (!CacheCleanerActivity.b(this.a))
          {
            CacheCleanerActivity.b(this.a, true);
            new i(this.a).start();
          }
        }
      }
      else if (this.a.g == g.c)
      {
        if (CacheCleanerActivity.c(this.a) == null)
        {
          CacheCleanerActivity.a(this.a, new k(this.a));
          CacheCleanerActivity.c(this.a).start();
        }
        this.a.a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.h
 * JD-Core Version:    0.6.2
 */