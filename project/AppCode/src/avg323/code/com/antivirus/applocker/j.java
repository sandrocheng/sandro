package com.antivirus.applocker;

import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.avg.ui.general.a.a;
import java.util.Comparator;

class j
  implements Comparator
{
  private j(i parami)
  {
  }

  public int a(ResolveInfo paramResolveInfo1, ResolveInfo paramResolveInfo2)
  {
    PackageManager localPackageManager = g.f(this.a.d).getPackageManager();
    return paramResolveInfo1.loadLabel(localPackageManager).toString().compareTo(paramResolveInfo2.loadLabel(localPackageManager).toString());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.j
 * JD-Core Version:    0.6.2
 */