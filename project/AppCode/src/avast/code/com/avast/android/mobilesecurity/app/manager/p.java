package com.avast.android.mobilesecurity.app.manager;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Button;
import java.util.Iterator;
import java.util.List;

class p
  implements DialogInterface.OnClickListener
{
  p(ManagerPagerFragment paramManagerPagerFragment, int paramInt, ManagerAppFragment paramManagerAppFragment, String[] paramArrayOfString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a == 0);
    for (int i = 4; paramInt < i; i = 2)
    {
      this.d.a("ms-AppManager", "orderChangeByRightButton", "" + ManagerPagerFragment.k(this.d)[paramInt], 0L);
      this.b.a(ManagerPagerFragment.k(this.d)[paramInt]);
      ManagerPagerFragment.j(this.d).setText(this.c[paramInt]);
      Iterator localIterator = ManagerPagerFragment.l(this.d).iterator();
      while (localIterator.hasNext())
      {
        ManagerAppFragment localManagerAppFragment = (ManagerAppFragment)localIterator.next();
        if (localManagerAppFragment != this.b)
          localManagerAppFragment.a(ManagerPagerFragment.k(this.d)[paramInt]);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.p
 * JD-Core Version:    0.6.2
 */