package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(DataPlanSettingsActivity paramDataPlanSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DataPlanSettingsActivity.g(this.a, paramInt);
    DataPlanSettingsActivity.a(this.a).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ad
 * JD-Core Version:    0.6.2
 */