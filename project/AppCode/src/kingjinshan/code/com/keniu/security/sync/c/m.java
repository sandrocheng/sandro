package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.keniu.security.sync.d.d.a.cf;
import com.keniu.security.sync.d.d.a.gj;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import java.io.File;
import java.util.List;

public final class m extends g
{
  private boolean[] a;
  private com.keniu.security.sync.d.c.a d;
  private String e;
  private String f;
  private int[] g = { -11, -11, -11, -11 };

  public m(Handler paramHandler, boolean[] paramArrayOfBoolean, Context paramContext)
  {
    super(paramContext, paramContext.getString(2131429528), paramHandler);
    this.e = paramContext.getDatabasePath("firewall_user_rules.db").getAbsolutePath();
    this.d = new com.keniu.security.sync.d.c.a();
    this.a = paramArrayOfBoolean;
  }

  private int a(String paramString1, String paramString2, int paramInt)
  {
    while (true)
    {
      int i;
      String str1;
      try
      {
        cf localcf1 = this.d.a(this.f, "/ks_program/mosecurity");
        if (localcf1 == null)
        {
          i = 10002;
        }
        else
        {
          str1 = com.keniu.security.sync.d.c.a.a(localcf1, paramString1);
          if (str1 != null)
            break label237;
          com.keniu.security.sync.d.c.a locala = this.d;
          String str2 = this.f;
          if (localcf1 == null)
            break label250;
          gj localgj = localcf1.n();
          if (localgj == null)
            break label250;
          str3 = localgj.k();
          str1 = locala.a(str2, str3, paramString1);
          break label237;
          cf localcf2 = this.d.a(this.f, str1);
          if (localcf2 == null)
          {
            i = 10004;
          }
          else
          {
            List localList = localcf2.p();
            if (localList == null)
            {
              i = -10021;
            }
            else
            {
              if (localList.size() >= 10)
                this.d.b(this.f, ((gj)localList.get(0)).k());
              int j = this.d.a(this.f, str1, new File(paramString2).getAbsolutePath(), paramInt);
              i = j;
            }
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        i = 10002;
      }
      while (true)
      {
        return i;
        label237: if (str1 != null)
          break;
        i = -10019;
      }
      label250: String str3 = null;
    }
  }

  private boolean c(int paramInt)
  {
    int i = 0;
    boolean bool;
    if (i < this.g.length)
      if ((paramInt == 0) && (this.g[i] == 0))
        bool = false;
    while (true)
    {
      return bool;
      if ((paramInt == -11) && (this.g[i] != -11))
      {
        bool = false;
      }
      else
      {
        i++;
        break;
        bool = true;
      }
    }
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    this.f = paramArrayOfString[0];
    int i = Integer.valueOf(paramArrayOfString[1]).intValue();
    int j = Integer.valueOf(paramArrayOfString[2]).intValue();
    if (this.f.startsWith("login"));
    while (true)
    {
      Integer localInteger;
      try
      {
        new com.keniu.security.sync.a.a();
        this.f = com.keniu.security.sync.a.a.a(this.f.substring(1 + this.f.indexOf("#"), this.f.lastIndexOf("#")), this.f.substring(1 + this.f.lastIndexOf("#")), l.c(this.b), "0.0.0.001").n();
        this.c.sendMessage(this.c.obtainMessage(7, this.f));
        if ((this.f.equals("")) || (this.f.startsWith("login")))
        {
          localInteger = Integer.valueOf(10001);
          return localInteger;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localInteger = Integer.valueOf(10002);
        continue;
      }
      if (isCancelled())
      {
        localInteger = Integer.valueOf(-1);
      }
      else
      {
        if ((this.a[0] != 0) && (i > 0))
          this.g[0] = a("contact", r.aC, i);
        if ((this.a[1] != 0) && (j > 0))
          this.g[1] = a("sms", r.aI, j);
        if (this.a[2] != 0)
        {
          this.g[2] = a("mos", this.e, 0);
          if (!r.a(l.a(new com.keniu.security.sync.b.a(this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml", true).a()), r.aF))
          {
            this.g[3] = -10018;
            localInteger = Integer.valueOf(-10018);
          }
          else
          {
            this.g[3] = a("mss", r.aF, 0);
          }
        }
        else
        {
          localInteger = Integer.valueOf(0);
        }
      }
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> " + this.g[0] + "#" + this.g[1] + "#" + this.g[2] + "#" + this.g[3]);
    if ((c(-11)) && (paramInteger.intValue() == 10001))
      this.c.sendMessage(this.c.obtainMessage(10001));
    while (true)
    {
      return;
      if ((this.g[0] == 10002) || (paramInteger.intValue() == 10002))
      {
        com.jxphone.mosecurity.a.a.a(this.b, "synco", "5", "");
        this.c.sendMessage(this.c.obtainMessage(9));
      }
      else if (!c(0))
      {
        this.c.sendMessage(this.c.obtainMessage(14, this.g));
      }
      else
      {
        this.c.sendMessage(this.c.obtainMessage(-15));
      }
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.m
 * JD-Core Version:    0.6.2
 */