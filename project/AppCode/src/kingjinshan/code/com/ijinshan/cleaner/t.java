package com.ijinshan.cleaner;

import android.content.pm.PackageStats;
import android.content.pm.e;
import android.os.Handler;
import com.ijinshan.cleaner.a.a;
import java.util.List;

final class t extends e
{
  private a c = null;
  private boolean d = false;
  private Handler e;

  t(o paramo, a parama, boolean paramBoolean, float paramFloat, Handler paramHandler)
  {
    this.c = parama;
    this.d = paramBoolean;
    o.a(paramo, paramFloat);
    this.e = paramHandler;
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
  {
    o.e(this.b);
    o.d(this.b);
    this.c.c();
    if (paramPackageStats.cacheSize > 0L)
    {
      this.c.a(paramPackageStats.cacheSize);
      u localu = new u(this.b);
      localu.a = o.a;
      localu.b = this.c;
      o.f(this.b).add(this.c);
      o.e(this.b).a(localu);
    }
    if (this.d)
      o.a(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.t
 * JD-Core Version:    0.6.2
 */