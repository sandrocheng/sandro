package com.avg.tuneup;

import android.support.v4.app.o;
import android.view.View;
import android.view.View.OnClickListener;

class d
  implements View.OnClickListener
{
  d(b paramb, com.avg.ui.general.c.b paramb1, int paramInt)
  {
  }

  public void onClick(View paramView)
  {
    b.a(this.c, this.a.c);
    ((com.avg.tuneup.storage.b)((com.avg.ui.general.a.a)b.a(this.c)).f().a("StorageFragment")).a = this.b;
    com.avg.toolkit.c.a.a(b.a(this.c), "storage_usage", "uninstall_app", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.d
 * JD-Core Version:    0.6.2
 */