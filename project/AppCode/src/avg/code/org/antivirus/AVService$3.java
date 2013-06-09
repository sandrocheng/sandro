package org.antivirus;

import android.content.Intent;
import java.util.ArrayList;
import org.antivirus.core.scanners.ScannerPackagesResult;
import org.antivirus.core.scanners.c;
import org.antivirus.core.scanners.g;
import org.antivirus.core.scanners.i;
import org.antivirus.ui.Tools;
import org.antivirus.ui.scan.UnInstall;

class AVService$3
  implements i
{
  AVService$3(AVService paramAVService)
  {
  }

  public void onScanDone(g paramg, c paramc)
  {
    AVService.a(this.a, paramg, paramc);
    if (!paramg.c.a)
    {
      String str1 = (String)paramg.c.c.get(0);
      String str2 = Tools.getAppName(this.a, str1);
      String str3 = Tools.getPackageCategory(paramg, str1);
      Intent localIntent = new Intent(this.a, UnInstall.class);
      localIntent.putExtra("categtory", str3);
      localIntent.putExtra("appName", str2);
      localIntent.setFlags(402653184);
      localIntent.putExtra("suspicious", str1);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVService.3
 * JD-Core Version:    0.6.2
 */