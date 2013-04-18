package com.jxphone.mosecurity.listener;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.text.TextUtils;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.b.e;
import com.keniu.security.b.u;
import com.keniu.security.monitor.a;

public final class f extends ContentObserver
{
  private final Context a;

  public f(Context paramContext, Handler paramHandler)
  {
    super(paramHandler);
    this.a = paramContext;
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    if (paramBoolean);
    label199: 
    while (true)
    {
      return;
      l locall = e.f(this.a).b();
      if ((locall != null) && (locall.b() != null) && (locall.b().length() != 0) && (!TextUtils.isEmpty(locall.c())))
        if ((com.jxphone.mosecurity.d.f.a != null) && (com.jxphone.mosecurity.d.f.a.equals(locall.b())))
        {
          com.jxphone.mosecurity.d.f.a = null;
        }
        else if (locall.f() != 1)
        {
          h.a(this.a).a(locall);
        }
        else if (locall.f() == 1)
        {
          String str1 = locall.b();
          String str2 = locall.c();
          int i;
          if ((TextUtils.isEmpty(com.jxphone.mosecurity.d.f.b)) || (TextUtils.isEmpty(com.jxphone.mosecurity.d.f.c)))
            i = 0;
          while (true)
          {
            if (i != 0)
              break label199;
            a.a().a(a.s, locall, this.a);
            break;
            if ((com.jxphone.mosecurity.d.f.b.equalsIgnoreCase(str1)) && (com.jxphone.mosecurity.d.f.c.equalsIgnoreCase(str2)))
              i = 1;
            else
              i = 0;
          }
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.f
 * JD-Core Version:    0.6.2
 */