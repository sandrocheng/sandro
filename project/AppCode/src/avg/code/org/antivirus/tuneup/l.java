package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class l
  implements DialogInterface.OnClickListener
{
  l(BatterySaveSettingsActivity paramBatterySaveSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BatterySaveSettingsActivity.b(this.a, paramInt);
    ((q)this.a.getListAdapter()).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.l
 * JD-Core Version:    0.6.2
 */