package com.ijinshan.cleaner;

import android.view.View;
import android.view.View.OnClickListener;
import com.ijinshan.cleaner.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ar
  implements View.OnClickListener
{
  ar(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.d == aq.a)
      this.a.c();
    while (true)
    {
      return;
      if (this.a.d == aq.b)
      {
        SDcardCleanerActivity.a(this.a, new ArrayList());
        Iterator localIterator = SDcardCleanerActivity.a(this.a).iterator();
        while (localIterator.hasNext())
        {
          c localc = (c)localIterator.next();
          if (localc.c())
            for (String str : localc.d().split("#"))
              SDcardCleanerActivity.b(this.a).add(str.trim());
        }
        com.jxphone.mosecurity.a.a.i(this.a, "mg_rub_sdcard_clean");
        if (SDcardCleanerActivity.c(this.a).d())
        {
          this.a.f();
        }
        else if (SDcardCleanerActivity.b(this.a).size() != 0)
        {
          com.jxphone.mosecurity.a.a.i(this.a, "mg_rub_sdcard_clean_success");
          SDcardCleanerActivity.d(this.a);
          new as(this.a).start();
        }
        else
        {
          this.a.f();
        }
      }
      else if (this.a.d == aq.c)
      {
        this.a.b();
        if (SDcardCleanerActivity.e(this.a) == null)
        {
          SDcardCleanerActivity.a(this.a, new at(this.a));
          SDcardCleanerActivity.e(this.a).start();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ar
 * JD-Core Version:    0.6.2
 */