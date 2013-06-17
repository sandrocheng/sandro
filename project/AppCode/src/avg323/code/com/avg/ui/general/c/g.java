package com.avg.ui.general.c;

import android.view.MenuItem;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;

class g
  implements PopupMenu.OnMenuItemClickListener
{
  g(f paramf, a parama)
  {
  }

  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.b.c.dismiss();
    return this.a.a(paramMenuItem);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.g
 * JD-Core Version:    0.6.2
 */