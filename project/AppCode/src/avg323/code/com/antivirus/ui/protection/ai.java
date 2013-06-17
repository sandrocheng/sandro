package com.antivirus.ui.protection;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.m;
import com.avg.ui.general.b.c;
import com.avg.ui.general.b.d;
import java.util.ArrayList;

class ai extends com.avg.ui.general.b.b
{
  public ai(r paramr, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }

  protected void a(int paramInt, c paramc, d paramd)
  {
    int i = 2130837648;
    paramd.c.setTextColor(this.a.i().getColor(2131165244));
    super.a(paramInt, paramc, paramd);
    switch (t.a[r.B(this.a)[paramInt].ordinal()])
    {
    case 2:
    case 3:
    default:
    case 1:
      while (true)
      {
        return;
        Context localContext = r.C(this.a).getApplicationContext();
        com.antivirus.core.b localb = new com.antivirus.core.b(localContext);
        try
        {
          PackageInfo localPackageInfo2 = localContext.getPackageManager().getPackageInfo(localContext.getPackageName(), 0);
          localPackageInfo1 = localPackageInfo2;
          paramd.c.setText(m.a(r.D(this.a), 2131296474) + " " + localPackageInfo1.versionName + " - " + localb.u());
        }
        catch (Exception localException)
        {
          while (true)
          {
            com.avg.toolkit.f.a.a(localException);
            PackageInfo localPackageInfo1 = null;
          }
        }
      }
    case 4:
      long l = r.E(this.a).g();
      String str;
      if (86400000L == l)
        str = this.a.i().getStringArray(2131427337)[0];
      while (true)
      {
        paramc.a(str);
        break;
        if (604800000L == l)
          str = this.a.i().getStringArray(2131427337)[1];
        else
          str = this.a.i().getStringArray(2131427337)[2];
      }
    case 5:
      if (r.F(this.a).n())
        paramd.d.setImageResource(i);
      while (true)
      {
        paramd.d.setClickable(false);
        break;
        paramd.d.setImageResource(2130837642);
      }
    case 7:
      if (r.G(this.a).i())
        paramd.d.setImageResource(i);
      while (true)
      {
        paramd.d.setClickable(false);
        break;
        paramd.d.setImageResource(2130837642);
      }
    case 6:
      if (r.H(this.a).v())
        paramd.d.setImageResource(i);
      while (true)
      {
        paramd.d.setClickable(false);
        break;
        paramd.d.setImageResource(2130837642);
      }
    case 8:
    }
    if (r.I(this.a).o());
    while (true)
    {
      paramd.d.setImageResource(i);
      paramd.d.setClickable(false);
      break;
      i = 2130837642;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.ai
 * JD-Core Version:    0.6.2
 */