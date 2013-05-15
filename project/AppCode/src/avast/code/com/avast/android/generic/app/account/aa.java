package com.avast.android.generic.app.account;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.TextView;
import com.avast.a.a.a.c;
import com.avast.android.generic.ae;
import com.avast.android.generic.internet.b;
import com.avast.android.generic.s;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.ah;
import com.avast.android.generic.util.an;

class aa extends an
{
  boolean a = false;
  boolean b = false;
  boolean c = false;
  String d = "";
  boolean e = false;
  boolean f = false;
  boolean g = true;
  boolean h = true;
  boolean i = true;
  boolean j = false;
  boolean k = false;
  boolean l = false;
  boolean m = false;
  boolean n = false;
  u o = new u(v.a, "");
  c p = c.a;
  private Context s;

  aa(ConnectionCheckFragment paramConnectionCheckFragment, int paramInt)
  {
  }

  public Void a(Void[] paramArrayOfVoid)
  {
    if (!this.r.isAdded())
      return null;
    while (true)
    {
      try
      {
        Thread.sleep(1000L);
        if ((!this.r.isAdded()) || (this.s == null))
          break;
        switch (this.q)
        {
        case 6:
        default:
          this.c = false;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        }
      }
      catch (Exception localException1)
      {
      }
      if (!this.r.isAdded())
        break;
      this.a = true;
      this.c = true;
      ConnectionCheckFragment localConnectionCheckFragment = this.r;
      int i1 = com.avast.android.generic.z.bg;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = com.avast.android.generic.util.q.a(this.s, localException1);
      this.d = localConnectionCheckFragment.getString(i1, arrayOfObject);
      break;
      this.j = ConnectionCheckFragment.d(this.r).b("system", false);
      continue;
      if (com.avast.android.generic.util.z.j(this.s))
        this.l = true;
      if ((com.avast.android.generic.util.z.a(this.s)) && (!com.avast.android.generic.util.z.a(this.s, 4586)))
        this.k = true;
      if ((!this.k) && (com.avast.android.generic.util.z.b(this.s) != null) && (com.avast.android.generic.util.z.b(this.s, 4586) == null))
        this.m = true;
      if ((this.m) || (!com.avast.android.generic.util.z.c(this.s)) || (com.avast.android.generic.util.z.c(this.s, 4586)))
        continue;
      this.n = true;
      continue;
      try
      {
        if (Integer.parseInt(Settings.Secure.getString(this.s.getContentResolver(), "background_data")) > 0)
        {
          bool2 = true;
          this.g = bool2;
          NetworkInfo localNetworkInfo = ((ConnectivityManager)this.s.getSystemService("connectivity")).getActiveNetworkInfo();
          if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
            break label612;
          bool1 = true;
          this.h = bool1;
          this.i = ah.a(this.s);
          continue;
          String str1 = ConnectionCheckFragment.d(this.r).x();
          String str2 = ConnectionCheckFragment.d(this.r).z();
          String str3 = ConnectionCheckFragment.e(this.r).F();
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
            this.e = true;
          if (!TextUtils.isEmpty(str3))
            this.f = true;
          if ((this.e) && (this.f) && (ConnectionCheckFragment.f(this.r)) && (ConnectionCheckFragment.g(this.r)))
          {
            this.o = t.a(this.s, ConnectionCheckFragment.d(this.r));
            continue;
          }
          this.o = new u(v.a, "");
          continue;
          ConnectionCheckFragment.h(this.r);
          ConnectionCheckFragment.a(this.r, false);
          ConnectionCheckFragment.i(this.r);
          try
          {
            this.p = b.a(this.s, ConnectionCheckFragment.d(this.r).x(), ConnectionCheckFragment.d(this.r).z(), ConnectionCheckFragment.j(this.r));
            if (this.p == c.a)
              continue;
            ConnectionCheckFragment.h(this.r);
          }
          catch (Exception localException2)
          {
            ConnectionCheckFragment.h(this.r);
            throw localException2;
          }
        }
      }
      catch (Exception localException3)
      {
        while (true)
        {
          continue;
          boolean bool2 = false;
          continue;
          label612: boolean bool1 = false;
        }
      }
    }
  }

  public void a()
  {
    if (!this.r.isAdded());
    while (true)
    {
      return;
      this.s = this.r.getActivity();
      ConnectionCheckFragment.a(this.r).setTextColor(this.r.getResources().getColor(com.avast.android.generic.q.a));
      ConnectionCheckFragment.b(this.r).setOnClickListener(null);
      ConnectionCheckFragment.b(this.r).setEnabled(false);
      ConnectionCheckFragment.b(this.r).setBackgroundResource(s.g);
      ConnectionCheckFragment.c(this.r).setEnabled(false);
      switch (this.q)
      {
      default:
        break;
      case 1:
        ConnectionCheckFragment.a(this.r).setText(com.avast.android.generic.z.cr);
        break;
      case 2:
        ConnectionCheckFragment.a(this.r).setText(com.avast.android.generic.z.bb);
        break;
      case 3:
        ConnectionCheckFragment.a(this.r).setText(com.avast.android.generic.z.bS);
        break;
      case 4:
        ConnectionCheckFragment.a(this.r).setText(com.avast.android.generic.z.bj);
        break;
      case 5:
        ConnectionCheckFragment.a(this.r).setText(com.avast.android.generic.z.aF);
        break;
      case 6:
        TextView localTextView = ConnectionCheckFragment.a(this.r);
        ConnectionCheckFragment localConnectionCheckFragment = this.r;
        int i1 = com.avast.android.generic.z.bY;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(20);
        localTextView.setText(localConnectionCheckFragment.getString(i1, arrayOfObject));
      }
    }
  }

  public void a(Void paramVoid)
  {
    if (!this.r.isAdded());
    while (true)
    {
      return;
      this.b = false;
      a.a(this.r, new ab(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.aa
 * JD-Core Version:    0.6.2
 */