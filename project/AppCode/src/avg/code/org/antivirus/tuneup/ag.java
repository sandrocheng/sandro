package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import org.antivirus.Strings;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(DataPlanSettingsActivity paramDataPlanSettingsActivity, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
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
 * Qualified Name:     org.antivirus.tuneup.ag
 * JD-Core Version:    0.6.2
 */