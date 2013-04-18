package com.keniu.security.software;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.ijinshan.kpref.t;
import com.keniu.security.malware.bz;

final class x
  implements AdapterView.OnItemClickListener
{
  x(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SoftwareManager2.a(this.a, paramInt);
    if (SoftwareManager2.b(this.a).getAdapter().equals(SoftwareManager2.d(this.a)))
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    while (true)
    {
      return;
      if ((SoftwareManager2.p(this.a) != null) && (SoftwareManager2.q(this.a) != 0))
      {
        SoftwareManager2.r(this.a).setVisibility(8);
        SoftwareManager2.s(this.a).setVisibility(0);
        SoftwareManager2.s(this.a).setText(2131428702);
        SoftwareManager2.b(this.a).setAdapter(SoftwareManager2.p(this.a));
        continue;
        if ((SoftwareManager2.t(this.a) != null) && (SoftwareManager2.u(this.a) != 0))
        {
          SoftwareManager2.r(this.a).setVisibility(8);
          SoftwareManager2.s(this.a).setVisibility(0);
          SoftwareManager2.s(this.a).setText(2131428703);
          SoftwareManager2.b(this.a).setAdapter(SoftwareManager2.t(this.a));
          bz.a();
          if ((bz.b()) && (!bz.a().e()))
            if (!t.b(this.a).getBoolean("hidesoftwareremoverootdialog", false))
            {
              this.a.showDialog(5);
            }
            else
            {
              bz.a().c();
              continue;
              if ((SoftwareManager2.v(this.a) != null) && (SoftwareManager2.w(this.a) != 0))
              {
                SoftwareManager2.r(this.a).setVisibility(8);
                SoftwareManager2.s(this.a).setVisibility(0);
                SoftwareManager2.s(this.a).setText(2131428704);
                SoftwareManager2.b(this.a).setAdapter(SoftwareManager2.v(this.a));
                bz.a();
                if ((bz.b()) && (!bz.a().e()))
                  if (!t.b(this.a).getBoolean("hidesoftwareremoverootdialog", false))
                  {
                    this.a.showDialog(5);
                  }
                  else
                  {
                    bz.a().c();
                    continue;
                    if ((SoftwareManager2.c(this.a) != 0) && ((o)SoftwareManager2.b(this.a).getAdapter().getItem(SoftwareManager2.c(this.a)) != null))
                    {
                      this.a.removeDialog(2);
                      this.a.showDialog(2);
                    }
                  }
              }
            }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.x
 * JD-Core Version:    0.6.2
 */