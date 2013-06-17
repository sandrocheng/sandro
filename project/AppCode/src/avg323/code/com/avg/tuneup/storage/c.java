package com.avg.tuneup.storage;

import android.content.pm.PackageManager;
import com.avg.ui.general.a.a;

class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public void run()
  {
    PackageManager localPackageManager = b.a(this.a).getPackageManager();
    if (b.b(this.a) == null)
    {
      b.a(this.a, b.a(this.a, localPackageManager, 0));
      if (b.b(this.a) != null);
    }
    while (true)
    {
      return;
      b.c(this.a);
      b.d(this.a);
      if (b.e(this.a) != null)
        b.n(this.a).runOnUiThread(new d(this, localPackageManager));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.c
 * JD-Core Version:    0.6.2
 */