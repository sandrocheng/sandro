package org.antivirus.ui.privacy;

import android.content.Intent;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import java.util.ArrayList;
import org.antivirus.Strings;
import org.antivirus.applocker.AppLockerActivity;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.backup.apps.BackupRestoreTab;

final class b
  implements AdapterView.OnItemClickListener
{
  b(PrivacyActivity paramPrivacyActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    org.antivirus.ui.performance.b localb = (org.antivirus.ui.performance.b)this.a.a.get(paramInt);
    switch (localb.a)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 3:
    }
    while (true)
    {
      return;
      if (localb.b)
      {
        PrivacyActivity.a(this.a, g.a(this.a, Strings.getString(2131296346), Strings.getString(2131296347), Strings.getString(2131296348), 2130837685, false));
        PrivacyActivity.a(this.a, ((org.antivirus.ui.performance.b)this.a.a.get(paramInt)).a);
      }
      else
      {
        this.a.startActivity(new Intent(this.a, AppLockerActivity.class));
        a.a(this.a, "privacy", "app_locker", "permitted");
        continue;
        if (localb.b)
        {
          PrivacyActivity.a(this.a, g.a(this.a, Strings.getString(2131296713), Strings.getString(2131296714), Strings.getString(2131296715), 2130837684, false));
          PrivacyActivity.a(this.a, ((org.antivirus.ui.performance.b)this.a.a.get(paramInt)).a);
        }
        else if (Integer.parseInt(Build.VERSION.SDK) > 3)
        {
          this.a.startActivity(new Intent(this.a, BackupRestoreTab.class));
          a.a(this.a, "privacy", "app_backup", "permitted");
        }
        else
        {
          Toast.makeText(this.a, Strings.getString(2131296379), 1).show();
          a.a(this.a, "privacy", "app_backup", "forbidden");
          continue;
          PrivacyActivity.d(this.a);
          continue;
          PrivacyActivity.e(this.a);
          continue;
          PrivacyActivity.f(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.b
 * JD-Core Version:    0.6.2
 */