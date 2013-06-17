package com.antivirus.ui.scan.results;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Toast;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.core.scanners.h;
import com.antivirus.widget.protection.ProtectionWidgetPlugin;
import java.util.ArrayList;

class g
  implements CompoundButton.OnCheckedChangeListener
{
  g(d paramd, int paramInt1, int paramInt2, k paramk)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    d.a(this.d, this.a);
    d.b(this.d, this.b);
    if ((this.a < d.d(this.d).size()) && (this.b < ((ArrayList)d.d(this.d).get(this.a)).size()))
    {
      ((ArrayList)d.d(this.d).get(this.a)).set(this.b, Boolean.valueOf(paramBoolean));
      if (!paramBoolean)
        break label426;
      Toast.makeText(d.e(this.d), com.antivirus.m.a(d.e(this.d), 2131296824), 1).show();
      if (!(this.c instanceof a))
        break label218;
      com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_checked", "label_apps", 0);
      String str2 = this.c.f();
      this.d.a.c(str2);
      d.c(this.d).a.c.a(str2);
      AVService.a(d.c(this.d).h(), 25000, 8, ProtectionWidgetPlugin.k());
    }
    label426: 
    while (true)
    {
      return;
      label218: if ((this.c instanceof r))
      {
        com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_checked", "label_settings", 0);
        s locals2 = ((r)this.c).a();
        d.a(this.d, locals2);
        d.a(this.d, locals2);
      }
      else if ((this.c instanceof b))
      {
        com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_checked", "label_content", 0);
        b localb2 = (b)this.c;
        switch (h.a[localb2.b().ordinal()])
        {
        case 2:
        default:
          com.avg.toolkit.f.a.a();
          break;
        case 1:
          this.d.a.e(this.c.f());
          d.c(this.d).a.f.a(this.c.f());
          AVService.a(d.c(this.d).h(), 25000, 8, ProtectionWidgetPlugin.k());
          continue;
          if ((this.c instanceof a))
          {
            com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_unchecked", "label_apps", 0);
            String str1 = this.c.f();
            this.d.a.d(str1);
            d.c(this.d).a.c.b(str1);
            AVService.a(d.c(this.d).h(), 25000, 8, ProtectionWidgetPlugin.k());
          }
          else if ((this.c instanceof r))
          {
            com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_unchecked", "label_settings", 0);
            s locals1 = ((r)this.c).a();
            d.a(this.d, locals1);
            d.b(this.d, locals1);
          }
          else if ((this.c instanceof b))
          {
            com.avg.toolkit.c.a.a(d.c(this.d).h(), "category_scan_results", "action_ignore_unchecked", "label_content", 0);
            b localb1 = (b)this.c;
            switch (h.a[localb1.b().ordinal()])
            {
            case 2:
            default:
              com.avg.toolkit.f.a.a();
              break;
            case 1:
              this.d.a.f(this.c.f());
              d.c(this.d).a.f.b(this.c.f());
              AVService.a(d.c(this.d).h(), 25000, 8, ProtectionWidgetPlugin.k());
            }
          }
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.g
 * JD-Core Version:    0.6.2
 */