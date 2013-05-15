package com.avast.android.generic.util.ga;

import android.app.Activity;
import android.content.Context;
import com.avast.android.generic.util.m;
import com.google.analytics.tracking.android.bo;
import com.google.analytics.tracking.android.p;

public class a
{
  private static a a;
  private c b;
  private boolean c = true;

  public static bo a()
  {
    a locala = b();
    if (locala.b == null)
      throw new IllegalStateException("You must call EasyTrackerAdapter.getInstance().setContext(context) or activityStart(Activity) before calling getTracker()");
    return locala.b;
  }

  public static a b()
  {
    try
    {
      if (a == null)
        a = new a();
      a locala = a;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(Activity paramActivity)
  {
    a(paramActivity);
    if (this.c)
      p.a().a(paramActivity);
  }

  public void a(Context paramContext)
  {
    p.a().a(paramContext);
    if (this.b == null)
      this.b = new c(this, p.b(), null);
  }

  public void a(boolean paramBoolean)
  {
    m.c("GA tracking enabled: " + paramBoolean);
    this.c = paramBoolean;
  }

  public void b(Activity paramActivity)
  {
    if (this.c)
      p.a().b(paramActivity);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ga.a
 * JD-Core Version:    0.6.2
 */