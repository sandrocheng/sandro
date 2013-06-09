package org.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.scanners.c;
import org.antivirus.core.scanners.g;
import org.antivirus.tuneup.at;
import org.antivirus.ui.main.AntivirusMainScreen;
import org.antivirus.ui.scan.results.ScanResultsExpandable;

final class w
  implements AdapterView.OnItemClickListener
{
  w(ProtectionActivity paramProtectionActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    switch ((int)paramLong)
    {
    default:
    case 0:
    case 1:
    case 3:
    case 2:
    case 6:
    case 4:
      while (true)
      {
        return;
        ProtectionActivity.f(this.a);
        org.antivirus.a.a.a(this.a, null);
        org.antivirus.ganalytics.a.a(this.a, "protection", "update_now", null);
        continue;
        if (!ProtectionActivity.g(this.a).a())
        {
          org.antivirus.ganalytics.a.a(this.a, "protection", "scan_now", null);
          Intent localIntent2 = new Intent(this.a, AntivirusMainScreen.class);
          localIntent2.putExtra("avmsStartScan", bool1);
          localIntent2.setFlags(131072);
          this.a.startActivity(localIntent2);
        }
        while (true)
        {
          this.a.finish();
          break;
          Intent localIntent1 = new Intent(this.a, ScanResultsExpandable.class);
          localIntent1.putExtra("ScannerClient", AntivirusMainScreen.a.ordinal());
          this.a.startActivity(localIntent1);
          org.antivirus.ganalytics.a.a(this.a, "app_landing", "view_scan_results", null);
        }
        this.a.startActivity(new Intent(this.a, FileScannerActivity.class));
        org.antivirus.ganalytics.a.a(this.a, "protection", "file_scanner", "permitted");
        continue;
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
        localBuilder.setTitle(Strings.getString(2131296267));
        localBuilder.setIcon(2130837686);
        localBuilder.setSingleChoiceItems(new at(this.a, this.a.d(), Strings.getStringArray(2131361792)), this.a.d(), new x(this));
        AlertDialog localAlertDialog = localBuilder.create();
        localAlertDialog.setCanceledOnTouchOutside(false);
        localAlertDialog.show();
        org.antivirus.ganalytics.a.a(this.a, "protection", "scan_freq", null);
        continue;
        ProtectionActivity.h(this.a);
        ProtectionActivity.i(this.a).notifyDataSetChanged();
        continue;
        ProtectionActivity.j(this.a);
        ProtectionActivity.i(this.a).notifyDataSetChanged();
      }
    case 5:
      if (ProtectionActivity.a(this.a, this.a.getApplicationContext()).isSDScanEnabled())
      {
        ProtectionActivity.b(this.a, this.a.getApplicationContext()).setSDScanEnabled(false);
        org.antivirus.ganalytics.a.a(this.a, "protection", "scan_sd", "off");
      }
      while (true)
      {
        ProtectionActivity.i(this.a).notifyDataSetChanged();
        break;
        ProtectionActivity.c(this.a, this.a.getApplicationContext()).setSDScanEnabled(bool1);
        org.antivirus.ganalytics.a.a(this.a, "protection", "scan_sd", "on");
      }
    case 7:
    }
    boolean bool2 = ProtectionActivity.d(this.a, this.a.getApplicationContext()).isPUPEnabled();
    EngineSettings localEngineSettings = ProtectionActivity.e(this.a, this.a.getApplicationContext());
    label537: ProtectionActivity localProtectionActivity;
    if (!bool2)
    {
      localEngineSettings.setPUPEnabled(bool1);
      localProtectionActivity = this.a;
      if (!bool2)
        break label589;
    }
    label589: for (String str = "off"; ; str = "on")
    {
      org.antivirus.ganalytics.a.a(localProtectionActivity, "protection", "enable_pup", str);
      ProtectionActivity.i(this.a).notifyDataSetChanged();
      break;
      bool1 = false;
      break label537;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.w
 * JD-Core Version:    0.6.2
 */