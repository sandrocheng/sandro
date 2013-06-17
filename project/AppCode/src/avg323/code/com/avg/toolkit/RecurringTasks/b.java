package com.avg.toolkit.RecurringTasks;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import java.util.Random;

public class b
{
  String a;
  long b;
  int c;
  boolean d;
  boolean e;
  a f;

  public b(Context paramContext, String paramString, long paramLong, boolean paramBoolean1, boolean paramBoolean2, int paramInt, boolean paramBoolean3)
  {
    this.a = paramString;
    this.b = paramLong;
    this.c = paramInt;
    this.d = paramBoolean3;
    this.e = paramBoolean2;
    this.f = new a(new c(this, paramContext));
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("HB", 0);
    long l1 = localSharedPreferences.getLong(this.a + "_re_last_succ", 0L);
    long l2 = System.currentTimeMillis();
    if (l1 == 0L)
      if (!paramBoolean1);
    while (true)
    {
      RecurringTaskAlarmReceiver.a(paramContext, this.a, paramInt, 0, l2, this.b);
      return;
      long l3 = l2 + this.b;
      if (this.e)
        l3 += (this.a.hashCode() + new Random().nextInt()) % 43200000;
      localSharedPreferences.edit().putLong(this.a + "_re_last_succ", l2).commit();
      l2 = l3;
      continue;
      if (l1 < l2)
      {
        l2 = l1 + this.b;
        if (this.e)
          l2 += (this.a.hashCode() + new Random().nextInt()) % 43200000;
      }
    }
  }

  public void a(Context paramContext)
  {
    long l1 = System.currentTimeMillis();
    paramContext.getSharedPreferences("HB", 0).edit().putLong(this.a + "_re_last_succ", l1).commit();
    long l2 = l1 + this.b;
    if (this.e)
      l2 += (this.a.hashCode() + new Random().nextInt()) % 43200000;
    RecurringTaskAlarmReceiver.a(paramContext, this.a, this.c, 0, l2, this.b);
  }

  public boolean a(Context paramContext, Bundle paramBundle)
  {
    boolean bool1 = this.a.equals(paramBundle.getString("__SAD"));
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      if (!this.d)
      {
        bool2 = true;
      }
      else if (a.b(paramContext))
      {
        bool2 = true;
      }
      else
      {
        this.f.a(paramContext);
        bool2 = false;
      }
    }
  }

  public void b(Context paramContext)
  {
    if ((this.f != null) && (this.f.b));
    try
    {
      paramContext.unregisterReceiver(this.f);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.RecurringTasks.b
 * JD-Core Version:    0.6.2
 */