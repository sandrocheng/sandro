package com.c.a.a;

import android.os.Handler;
import android.os.Message;

final class g extends Handler
{
  g(e parame)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
      while (true)
      {
        return;
        if ((d.d(this.a.b)) && (n.b))
          d.e(this.a.b);
      }
    case 2:
    }
    if ((d.d(this.a.b)) && (r.a(d.b(this.a.b)).b()))
    {
      d.f(this.a.b);
      d.a((short)1000);
    }
    while (true)
    {
      String str1 = d.g(this.a.b);
      String str2 = d.b(str1);
      if (("".equals(str2)) || (str2.equals(d.h(this.a.b))))
        break;
      d.a(this.a.b, str2);
      r.a(d.b(this.a.b)).c();
      break;
      d.a((short)10000);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.g
 * JD-Core Version:    0.6.2
 */