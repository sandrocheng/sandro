package com.avg.tuneup.storage;

import android.content.pm.PackageManager;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avg.ui.general.a.a;

class d
  implements Runnable
{
  d(c paramc, PackageManager paramPackageManager)
  {
  }

  public void run()
  {
    if ((!this.b.a.n()) || (b.f(this.b.a) == null));
    while (true)
    {
      return;
      if (b.g(this.b.a).getAdapter() == null)
      {
        b.a(this.b.a, new com.avg.tuneup.b(b.h(this.b.a), 0, b.b(this.b.a)));
        b.g(this.b.a).setAdapter(b.i(this.b.a));
      }
      ((TextView)b.j(this.b.a).findViewById(com.avg.a.e.tv_loading)).setVisibility(8);
      ((ProgressBar)b.k(this.b.a).findViewById(com.avg.a.e.apps_progress_bar)).setVisibility(8);
      b.i(this.b.a).notifyDataSetChanged();
      new Thread(new e(this)).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.d
 * JD-Core Version:    0.6.2
 */