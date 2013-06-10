package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class m
  implements DialogInterface.OnClickListener
{
  m(BatterySaveSettingsActivity paramBatterySaveSettingsActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BatterySaveSettingsActivity.c(this.a, paramInt);
    paramDialogInterface.dismiss();
    ((q)this.a.getListAdapter()).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.m
 * JD-Core Version:    0.6.2
 */