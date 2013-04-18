package com.keniu.security.sync.c;

import android.content.Context;
import android.os.Handler;
import com.keniu.security.sync.b.a;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import java.io.File;
import java.util.List;
import org.json.JSONArray;

public final class k extends g
{
  int a = 0;
  private String d;

  public k(Handler paramHandler, Context paramContext)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429600));
    this.d = paramContext.getDatabasePath("firewall_user_rules.db").getAbsolutePath();
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    if (!r.b(this.d, r.aH));
    for (Integer localInteger = Integer.valueOf(-1); ; localInteger = Integer.valueOf(0))
    {
      return localInteger;
      a(20);
      List localList = new a(this.b.getFilesDir() + "/../" + "shared_prefs/com.ijinshan.mguard_preferences.xml", true).a();
      a(60);
      JSONArray localJSONArray = l.a(localList);
      a(80);
      r.a(localJSONArray, r.aG);
      a(100);
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> setting#" + paramInteger);
    this.c.sendMessage(this.c.obtainMessage(21, paramInteger));
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.k
 * JD-Core Version:    0.6.2
 */