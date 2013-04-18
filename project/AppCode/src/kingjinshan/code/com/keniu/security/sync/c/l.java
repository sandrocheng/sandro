package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.ijinshan.kinghelper.firewall.a.e;
import com.keniu.security.sync.b.a;
import com.keniu.security.sync.i;
import com.keniu.security.sync.r;
import java.io.File;
import java.util.List;

public final class l extends g
{
  int a = 0;
  private String d;

  public l(Handler paramHandler, Context paramContext)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429601));
    this.d = paramContext.getDatabasePath("firewall_user_rules.db").getAbsolutePath();
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    Integer localInteger;
    if (!new File(r.aH).exists())
      localInteger = Integer.valueOf(-10025);
    List localList1;
    label160: List localList2;
    while (true)
    {
      return localInteger;
      boolean bool1 = r.b(this.d, r.aH);
      a(15);
      if (!bool1)
      {
        localInteger = Integer.valueOf(-1);
      }
      else
      {
        try
        {
          e.a();
          e.a(this.b);
          a(30);
          localList1 = new a(this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml", false).a();
          a(60);
          if (localList1 != null)
            break label160;
          localInteger = Integer.valueOf(10006);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          localInteger = Integer.valueOf(-1);
        }
        continue;
        localList2 = com.keniu.security.sync.l.a(com.keniu.security.sync.l.b(r.aG));
        a(70);
        if ((localList2 != null) && (localList2.size() != 0))
          break;
        localInteger = Integer.valueOf(10005);
      }
    }
    List localList3 = com.keniu.security.sync.l.a(localList1, localList2);
    a(80);
    boolean bool2 = com.keniu.security.sync.l.a(com.keniu.security.sync.l.b(localList3), this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml");
    a(100);
    if (bool2);
    for (int i = 0; ; i = 10008)
    {
      localInteger = Integer.valueOf(i);
      break;
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> settings#" + paramInteger);
    Handler localHandler1 = this.c;
    Handler localHandler2 = this.c;
    if (paramInteger.intValue() != 0);
    for (int i = paramInteger.intValue(); ; i = -10011)
    {
      localHandler1.sendMessage(localHandler2.obtainMessage(24, Integer.valueOf(i)));
      return;
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.l
 * JD-Core Version:    0.6.2
 */