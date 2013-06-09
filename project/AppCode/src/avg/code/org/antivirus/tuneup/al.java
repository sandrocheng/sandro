package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import org.antivirus.AVSettings;
import org.antivirus.ganalytics.a;

final class al
  implements DialogInterface.OnClickListener
{
  al(DataPlanSettingsActivity paramDataPlanSettingsActivity, EditText paramEditText, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    try
    {
      DataPlanSettingsActivity.d(this.c, Integer.parseInt(str1));
      label23: DataPlanSettingsActivity.a(this.c).notifyDataSetChanged();
      boolean bool = this.b.isChecked();
      DataPlanSettingsActivity localDataPlanSettingsActivity;
      if (bool != AVSettings.isQuotaWarningNotificationOn())
      {
        AVSettings.setQuotaWarningNotificationOn(bool);
        localDataPlanSettingsActivity = this.c;
        if (!bool)
          break label82;
      }
      label82: for (String str2 = "on"; ; str2 = "off")
      {
        a.a(localDataPlanSettingsActivity, "data_usage_settings", "notify_about_data_usage", str2);
        return;
      }
    }
    catch (Exception localException)
    {
      break label23;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.al
 * JD-Core Version:    0.6.2
 */