package org.antivirus.ui.scan.results;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.ArrayList;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.ScannerFilesResult;
import org.antivirus.core.scanners.ScannerPackagesResult;

final class g
  implements CompoundButton.OnCheckedChangeListener
{
  g(d paramd, int paramInt1, int paramInt2, j paramj)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    d.a(this.d, this.a);
    d.b(this.d, this.b);
    if ((this.a < d.e(this.d).size()) && (this.b < ((ArrayList)d.e(this.d).get(this.a)).size()))
    {
      ((ArrayList)d.e(this.d).get(this.a)).set(this.b, Boolean.valueOf(paramBoolean));
      if (!paramBoolean)
        break label376;
      if (!(this.c instanceof a))
        break label174;
      org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_checked", "apps");
      String str2 = this.c.d;
      this.d.a.setIgnorePackages(str2);
      d.d(this.d).a.c.a(str2);
      this.d.g();
    }
    while (true)
    {
      return;
      label174: if ((this.c instanceof q))
      {
        org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_checked", "settings");
        r localr2 = ((q)this.c).a;
        d.a(this.d, localr2);
        d locald2 = this.d;
        d.d(this.d).getApplicationContext();
        d.a(locald2, localr2);
      }
      else if ((this.c instanceof b))
      {
        org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_checked", "content");
        b localb2 = (b)this.c;
        switch (h.a[localb2.a.ordinal()])
        {
        case 2:
        default:
          Logger.errorBadAgrument();
          break;
        case 1:
          this.d.a.setIgnoreFile(this.c.d);
          d.d(this.d).a.f.a(this.c.d);
          this.d.g();
          continue;
          label376: if ((this.c instanceof a))
          {
            org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_unchecked", "apps");
            String str1 = this.c.d;
            this.d.a.removeIgnorePackages(str1);
            d.d(this.d).a.c.b(str1);
            this.d.g();
          }
          else if ((this.c instanceof q))
          {
            org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_unchecked", "settings");
            r localr1 = ((q)this.c).a;
            d.a(this.d, localr1);
            d locald1 = this.d;
            d.d(this.d).getApplicationContext();
            d.b(locald1, localr1);
          }
          else if ((this.c instanceof b))
          {
            org.antivirus.ganalytics.a.a(d.d(this.d), "scan_results", "ignore_unchecked", "content");
            b localb1 = (b)this.c;
            switch (h.a[localb1.a.ordinal()])
            {
            case 2:
            default:
              Logger.errorBadAgrument();
              break;
            case 1:
              this.d.a.removeIgnoreFile(this.c.d);
              d.d(this.d).a.f.b(this.c.d);
              this.d.g();
            }
          }
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.g
 * JD-Core Version:    0.6.2
 */