package com.avg.tuneup;

import android.support.v4.app.o;
import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(b paramb, com.avg.ui.general.c.b paramb1, int paramInt)
  {
  }

  public void onClick(View paramView)
  {
    this.c.a(this.a.c);
    ((com.avg.tuneup.storage.b)((com.avg.ui.general.a.a)b.a(this.c)).f().a("StorageFragment")).b = this.b;
    com.avg.toolkit.c.a.a(b.a(this.c), "storage_usage", "show_app_details", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.e
 * JD-Core Version:    0.6.2
 */