package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.ijinshan.kinghelper.firewall.a.e;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import java.io.File;
import java.util.List;

public final class d extends g
{
  int[] a = { -11, -11, -11, -11 };
  private boolean[] d = { 0, 0, 0 };
  private String e;
  private int f = -1;

  public d(Handler paramHandler, Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, paramContext.getString(2131429529), paramHandler);
    this.d[0] = "contact".equals(paramString);
    this.d[1] = "sms".equals(paramString);
    this.d[2] = false;
    this.f = paramInt;
  }

  public d(Handler paramHandler, boolean[] paramArrayOfBoolean, Context paramContext)
  {
    super(paramContext, paramContext.getString(2131429529), paramHandler);
    this.d = paramArrayOfBoolean;
    this.e = paramContext.getDatabasePath("firewall_user_rules.db").getAbsolutePath();
  }

  private boolean c(int paramInt)
  {
    int i = 0;
    boolean bool;
    if (i < this.a.length)
      if ((paramInt == 10003) && (this.a[i] != -11) && (this.a[i] != 10003) && (this.a[i] != 10005))
        bool = false;
    while (true)
    {
      return bool;
      if ((paramInt == 0) && (this.a[i] == 0))
      {
        bool = false;
      }
      else if ((paramInt == -11) && (this.a[i] != -11))
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
    String str1 = paramArrayOfString[0];
    if (str1.startsWith("login"));
    while (true)
    {
      Integer localInteger;
      try
      {
        new com.keniu.security.sync.a.a();
        str1 = com.keniu.security.sync.a.a.a(str1.substring(1 + str1.indexOf("#"), str1.lastIndexOf("#")), str1.substring(1 + str1.lastIndexOf("#")), l.c(this.b), "0.0.0.001").n();
        this.c.sendMessage(this.c.obtainMessage(7, str1));
        if ((str1.equals("")) || (str1.startsWith("login")))
        {
          localInteger = Integer.valueOf(10001);
          return localInteger;
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        localInteger = Integer.valueOf(10002);
        continue;
      }
      if (this.d[0] != 0)
      {
        int[] arrayOfInt5 = this.a;
        String str5 = r.aC;
        arrayOfInt5[0] = r.a("contact", str5, str1, this.f);
      }
      if (this.a[0] == 10002)
      {
        localInteger = Integer.valueOf(10002);
      }
      else
      {
        if (this.d[1] != 0)
        {
          int[] arrayOfInt4 = this.a;
          String str4 = r.aI;
          arrayOfInt4[1] = r.a("sms", str4, str1, this.f);
        }
        if (this.d[2] != 0)
        {
          i.a(this, ">>>>> restore the setttings");
          int[] arrayOfInt1 = this.a;
          String str2 = this.e;
          arrayOfInt1[2] = r.a("mos", str2, str1, this.f);
          int[] arrayOfInt3;
          try
          {
            if (this.a[2] == 0)
              e.b(this.b);
            int[] arrayOfInt2 = this.a;
            String str3 = r.aF;
            arrayOfInt2[3] = r.a("mss", str3, str1, this.f);
            localList1 = new com.keniu.security.sync.b.a(this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml", false).a();
            if (localList1 == null)
            {
              this.a[3] = 10006;
              localInteger = Integer.valueOf(10006);
            }
          }
          catch (Exception localException1)
          {
            List localList1;
            while (true)
              localException1.printStackTrace();
            List localList2 = l.a(l.b(r.aF));
            if ((localList2 == null) || (localList2.size() == 0))
            {
              this.a[3] = 10005;
              localInteger = Integer.valueOf(10005);
              continue;
            }
            boolean bool = l.a(l.b(l.a(localList1, localList2)), this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml");
            arrayOfInt3 = this.a;
            if (!bool);
          }
          for (int i = 0; ; i = 10008)
          {
            arrayOfInt3[3] = i;
            localInteger = Integer.valueOf(i);
            break;
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
    i.a(this, ">>>>> " + this.a[0] + "#" + this.a[1] + "#" + this.a[2] + "#" + this.a[3]);
    if ((c(-11)) && (paramInteger.intValue() == 10001))
      this.c.sendMessage(this.c.obtainMessage(10001));
    while (true)
    {
      return;
      if ((this.a[0] == 10002) || (paramInteger.intValue() == 10002))
      {
        com.jxphone.mosecurity.a.a.a(this.b, "synco", "6", "");
        this.c.sendMessage(this.c.obtainMessage(9));
      }
      else if ((!c(-11)) && (c(10003)))
      {
        this.c.sendMessage(this.c.obtainMessage(8));
      }
      else if (!c(0))
      {
        this.c.sendMessage(this.c.obtainMessage(10, this.a));
      }
      else
      {
        this.c.sendMessage(this.c.obtainMessage(11));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.d
 * JD-Core Version:    0.6.2
 */