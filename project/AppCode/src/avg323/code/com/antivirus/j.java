package com.antivirus;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.core.scanners.c;
import com.antivirus.core.scanners.h;
import com.antivirus.ui.scan.UnInstall;
import com.avg.toolkit.f.a;
import java.util.ArrayList;

class j
  implements com.antivirus.core.scanners.j
{
  j(g paramg)
  {
  }

  public void a(h paramh, c paramc)
  {
    this.a.a(paramh, paramc);
    String str1;
    if (!paramh.c.a)
      str1 = (String)paramh.c.c.get(0);
    try
    {
      String str4 = ScannerPackagesResult.a(g.a(this.a), str1);
      str2 = str4;
      String str3 = paramh.c.a(g.a(g.b(this.a)), str1);
      Intent localIntent = new Intent(g.c(this.a), UnInstall.class);
      localIntent.putExtra("categtory", str3);
      localIntent.putExtra("appName", str2);
      localIntent.setFlags(402653184);
      localIntent.putExtra("suspicious", str1);
      g.d(this.a).startActivity(localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        String str2 = "";
        a.a(localNameNotFoundException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.j
 * JD-Core Version:    0.6.2
 */