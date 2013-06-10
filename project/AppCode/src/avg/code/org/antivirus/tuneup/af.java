package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import java.util.Calendar;
import org.antivirus.Strings;

final class af
  implements DialogInterface.OnClickListener
{
  af(DataPlanSettingsActivity paramDataPlanSettingsActivity, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ba.a(this.d.getApplicationContext()).a(DataPlanSettingsActivity.b(this.d).getTimeInMillis());
    DataPlanSettingsActivity.a(this.d, this.a, DataPlanSettingsActivity.c(this.d), this.b, this.c, DataPlanSettingsActivity.d(this.d));
    paramDialogInterface.dismiss();
    if (DataPlanSettingsActivity.e(this.d))
      Toast.makeText(this.d.getApplicationContext(), Strings.getString(2131296614), 0).show();
    while (true)
    {
      this.d.finish();
      return;
      Toast.makeText(this.d.getApplicationContext(), Strings.getString(2131296603), 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.af
 * JD-Core Version:    0.6.2
 */