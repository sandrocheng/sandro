package com.avast.android.mobilesecurity.app.webshield;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.widget.Toast;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.account.e;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.ak;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.t;
import com.dolphin.browser.addons.HistoryInfo;
import com.dolphin.browser.addons.aw;
import com.dolphin.browser.addons.bh;
import com.dolphin.browser.addons.bs;
import com.dolphin.browser.addons.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class c extends Handler
{
  private final Context b;
  private final u c;
  private final t d;
  private final e e;
  private String f = null;

  public c(DolphinWebshieldService paramDolphinWebshieldService, Context paramContext, Looper paramLooper)
  {
    super(paramLooper);
    this.b = paramContext;
    this.d = ((t)com.avast.android.generic.ad.a(paramContext, t.class));
    this.c = u.a(paramContext);
    this.e = new e(paramContext);
  }

  private String a(h paramh)
  {
    if (paramh == null)
      m.c("Calling browser is null");
    List localList;
    for (String str = null; ; str = null)
    {
      return str;
      localList = paramh.g.a(null, null);
      if ((localList != null) && (!localList.isEmpty()))
        break;
    }
    Iterator localIterator = localList.iterator();
    Object localObject1 = (HistoryInfo)localList.get(0);
    label64: Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (HistoryInfo)localIterator.next();
      if (((HistoryInfo)localObject2).d <= ((HistoryInfo)localObject1).d)
        break label151;
    }
    while (true)
    {
      localObject1 = localObject2;
      break label64;
      if ((this.f != null) && (((HistoryInfo)localObject1).c.equals(this.f)))
      {
        str = null;
        break;
      }
      this.f = ((HistoryInfo)localObject1).c;
      str = this.f;
      break;
      label151: localObject2 = localObject1;
    }
  }

  private List a(String paramString)
  {
    List localList1 = i.a(this.b, null, paramString);
    ah localah = new ah(ak.d);
    if ((localList1 != null) && (!localList1.isEmpty()))
      localah = (ah)localList1.get(0);
    List localList2 = localList1;
    for (int i = 0; (i < 2) && (localah.a.equals(ak.d)); i++)
    {
      localList2 = i.a(this.b, null, paramString);
      localah = new ah(ak.d);
      if ((localList2 != null) && (!localList2.isEmpty()))
        localah = (ah)localList2.get(0);
    }
    return localList2;
  }

  private void a(y paramy, String paramString, ak paramak)
  {
    this.c.a(paramy, null, paramString, null, null, Long.valueOf(paramak.a()), null);
  }

  private void a(String paramString, ah paramah)
  {
    String str;
    switch (b.a[paramah.a.ordinal()])
    {
    default:
      str = this.a.getString(2131493633);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.e.a(Uri.parse(paramString), str, av.c);
      return;
      str = this.a.getString(2131493631);
      continue;
      str = this.a.getString(2131493632);
      continue;
      str = this.a.getString(2131493634);
    }
  }

  private boolean a(String paramString, ah paramah, h paramh, int paramInt)
  {
    boolean bool1 = false;
    this.d.aA();
    a(y.F, paramString, paramah.a);
    m.c("checkResult.result=" + paramah.a);
    if ((paramah.a.equals(ak.a)) || (paramah.a.equals(ak.d)))
      this.e.a(0, 1, av.c);
    while (true)
    {
      return bool1;
      if (paramah.a.equals(ak.f))
      {
        this.e.a(0, 1, av.c);
        boolean bool4 = this.d.V();
        bool1 = false;
        if (bool4)
        {
          DolphinWebshieldService.a(this.a, paramh, paramInt, "about:blank");
          a(y.G, paramString, paramah.a);
          b(paramString, paramah, paramh, paramInt);
          bool1 = false;
        }
      }
      else if (paramah.a.equals(ak.c))
      {
        boolean bool3 = this.d.T();
        bool1 = false;
        if (!bool3);
      }
      else if ((paramah.a.equals(ak.b)) || (paramah.a.equals(ak.e)))
      {
        boolean bool2 = this.d.U();
        bool1 = false;
        if (!bool2);
      }
      else
      {
        this.e.a(1, 1, av.c);
        a(paramString, paramah);
        a(y.G, paramString, paramah.a);
        DolphinWebshieldService.a(this.a, paramh, paramInt, "about:blank");
        bool1 = true;
      }
    }
  }

  private void b(String paramString, ah paramah, h paramh, int paramInt)
  {
    if (this.d.W());
    try
    {
      DolphinWebshieldService.a(this.a, paramh, paramInt, paramah.c);
      i.a(this.b, null, paramString, paramah, true, true);
      Toast.makeText(this.b, this.a.getString(2131493894, new Object[] { paramString }), 0).show();
      a(y.H, paramah.c, paramah.a);
      while (true)
      {
        label79: return;
        WebshieldService.a(paramah);
        SiteCorrectActivity.call(this.b, Uri.parse(paramString), paramah.b(), n.e, 268435456, paramInt + "");
      }
    }
    catch (RemoteException localRemoteException)
    {
      break label79;
    }
  }

  public void handleMessage(Message paramMessage)
  {
    int i = 0;
    while (true)
    {
      h localh;
      String str1;
      try
      {
        localh = (h)paramMessage.obj;
        str1 = a(localh);
        if (str1 == null)
          break;
        m.c("Newest URL=" + this.f);
        int[] arrayOfInt = localh.h.b();
        aw localaw = localh.h.a();
        if (localaw == null)
          break label394;
        j = localaw.d();
        if (i >= arrayOfInt.length)
          break label386;
        bh localbh = localh.h.a(arrayOfInt[i]).c();
        String str2 = localbh.i();
        String str3 = localbh.h();
        if (((str2 != null) && (str1.equals(str2))) || ((str3 != null) && (str1.equals(str3))))
        {
          k = arrayOfInt[i];
          if (k != -2147483648)
            break label379;
          m.c("Can't infer scanned tab ID, assume current tab");
          if (j != -2147483648)
            break label225;
          m.c("Current tab ID invalid");
        }
      }
      catch (RemoteException localRemoteException)
      {
        m.a("Exception handling URL change", localRemoteException);
      }
      i++;
      continue;
      label225: label379: for (int m = j; ; m = k)
      {
        List localList = a(str1);
        WebshieldService.a(localList);
        if (!a(str1, (ah)localList.get(0), localh, m))
          break;
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
          localArrayList.add(((ah)localIterator.next()).a);
        this.f = "";
        DolphinWebshieldService.a(this.a, localh);
        WebshieldActivity.call(this.b, Uri.parse(str1), localArrayList, n.e, 268435456, m + "");
        break;
      }
      label386: int k = -2147483648;
      continue;
      label394: int j = -2147483648;
      i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.c
 * JD-Core Version:    0.6.2
 */