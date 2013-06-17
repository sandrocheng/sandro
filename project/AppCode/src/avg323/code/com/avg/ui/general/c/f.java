package com.avg.ui.general.c;

import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.PopupMenu;

public class f
{
  Activity a = null;
  View b = null;
  PopupMenu c = null;

  public f(a parama, View paramView)
  {
    if (!(parama instanceof Activity));
    while (true)
    {
      return;
      this.a = ((Activity)parama);
      this.b = paramView;
      this.c = new PopupMenu(this.a, this.b);
      this.c.setOnMenuItemClickListener(new g(this, parama));
    }
  }

  public void a()
  {
    this.c.show();
  }

  public void a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    this.c.getMenu().add(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.f
 * JD-Core Version:    0.6.2
 */