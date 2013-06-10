package org.antivirus.ui;

import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;

public class PopupMenuHoneycomb
{
  Activity a = null;
  View b = null;
  PopupMenu c = null;

  public PopupMenuHoneycomb(IhandleMenuItem paramIhandleMenuItem, View paramView)
  {
    if (!(paramIhandleMenuItem instanceof Activity));
    while (true)
    {
      return;
      this.a = ((Activity)paramIhandleMenuItem);
      this.b = paramView;
      this.c = new PopupMenu(this.a, this.b);
      this.c.setOnMenuItemClickListener(new PopupMenuHoneycomb.1(this, paramIhandleMenuItem));
    }
  }

  public void add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    this.c.getMenu().add(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }

  public void setMenuItemClickListener(PopupMenu.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.c.setOnMenuItemClickListener(paramOnMenuItemClickListener);
  }

  public void show()
  {
    this.c.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.PopupMenuHoneycomb
 * JD-Core Version:    0.6.2
 */