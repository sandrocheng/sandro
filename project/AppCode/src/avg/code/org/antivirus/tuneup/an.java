package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

final class an
  implements DialogInterface.OnClickListener
{
  an(DataPlanSettingsActivity paramDataPlanSettingsActivity, EditText paramEditText, Spinner paramSpinner)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DataPlanSettingsActivity.e(this.c, -1);
    try
    {
      DataPlanSettingsActivity.e(this.c, Integer.parseInt(this.a.getText().toString()));
      label30: DataPlanSettingsActivity.f(this.c, this.b.getSelectedItemPosition());
      DataPlanSettingsActivity.a(this.c).notifyDataSetChanged();
      return;
    }
    catch (Exception localException)
    {
      break label30;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.an
 * JD-Core Version:    0.6.2
 */