package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class k
  implements DialogInterface.OnClickListener
{
  k(BatterySaveSettingsActivity paramBatterySaveSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BatterySaveSettingsActivity.a(this.a, paramInt);
    ((q)this.a.getListAdapter()).notifyDataSetChanged();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.k
 * JD-Core Version:    0.6.2
 */