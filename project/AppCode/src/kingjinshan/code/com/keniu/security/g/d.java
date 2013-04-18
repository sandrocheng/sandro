package com.keniu.security.g;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.hoi.widget.q;
import com.keniu.security.f.ab;
import com.keniu.security.f.p;
import com.keniu.security.f.t;
import com.keniu.security.f.v;
import com.keniu.security.f.w;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;

final class d extends Handler
{
  d(a parama)
  {
  }

  private void a(n paramn)
  {
    paramn.a();
    t localt = paramn.a;
    v localv;
    int k;
    if (localt.j() == 0)
    {
      localv = localt.a();
      if ((localv.b == 0) && (localv.e == 0))
        if (!a.c(this.a))
          a.d(this.a);
      while (true)
      {
        return;
        a.e(this.a);
        continue;
        if (a.c(this.a))
          break;
        if ((localv.b != 0) && (localv.e != 0))
          a.a(this.a, localt, localv);
        else if (localv.b != 0)
          a.a(this.a, localv, localt, true);
        else if (localv.e != 0)
          a.b(this.a, localt, localv);
      }
      if ((localv.e == 0) || (localv.i == null))
        break label241;
      int j = localv.h.size();
      k = 0;
      label164: if (k >= j)
        break label241;
      if (!((String)localv.i.get(k)).equals("antivirus.db"));
    }
    label241: for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        a.c(this.a, localt, localv);
        break;
        k++;
        break label164;
      }
      a.e(this.a);
      break;
      a.a(this.a, localt.j());
      break;
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    t localt;
    v localv;
    int k;
    switch (paramMessage.what)
    {
    default:
    case 0:
      while (true)
      {
        return;
        n localn = (n)paramMessage.obj;
        localn.a();
        localt = localn.a;
        if (localt.j() != 0)
          break label295;
        localv = localt.a();
        if ((localv.b == 0) && (localv.e == 0))
        {
          if (!a.c(this.a))
            a.d(this.a);
          else
            a.e(this.a);
        }
        else
        {
          if (a.c(this.a))
            break;
          if ((localv.b != 0) && (localv.e != 0))
            a.a(this.a, localt, localv);
          else if (localv.b != 0)
            a.a(this.a, localv, localt, true);
          else if (localv.e != 0)
            a.b(this.a, localt, localv);
        }
      }
      if ((localv.e != 0) && (localv.i != null))
      {
        int j = localv.h.size();
        k = 0;
        label229: if (k < j)
          if (!((String)localv.i.get(k)).equals("antivirus.db"))
            break;
      }
      break;
    case 1:
    case 2:
    }
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        a.c(this.a, localt, localv);
        break;
        k++;
        break label229;
      }
      a.e(this.a);
      break;
      label295: a.a(this.a, localt.j());
      break;
      i locali = (i)paramMessage.obj;
      if ((a.i(locali.b) != null) && (a.i(locali.b).isShowing()))
        a.i(locali.b).dismiss();
      p localp = locali.a;
      if (localp.j() == 0)
      {
        ab.a().k();
        break;
      }
      a.a(this.a, localp.j());
      break;
      r localr = (r)paramMessage.obj;
      if ((a.a(localr.b) != null) && (a.a(localr.b).isShowing()))
        a.a(localr.b).dismiss();
      w localw = localr.a;
      if (localw.j() == 0)
      {
        if (a.c(this.a))
        {
          a locala2 = this.a;
          aq localaq2 = new aq(locala2.a, (byte)0);
          localaq2.a(2131428361);
          String str2 = ab.a().c("antivirus.db");
          localaq2.b(String.format(locala2.a.getString(2131427911), new Object[] { str2 }));
          localaq2.b(2131427864, null);
          localaq2.c().show();
          break;
        }
        a locala1 = this.a;
        aq localaq1 = new aq(locala1.a, (byte)0);
        localaq1.a(2131428361);
        String str1 = ab.a().n();
        localaq1.b(String.format(locala1.a.getString(2131427911), new Object[] { str1 }));
        localaq1.b(2131427864, null);
        localaq1.c().show();
        break;
      }
      a.a(this.a, localw.j());
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.d
 * JD-Core Version:    0.6.2
 */