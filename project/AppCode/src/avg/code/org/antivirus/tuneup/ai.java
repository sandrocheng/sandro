package org.antivirus.tuneup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(DataPlanSettingsActivity paramDataPlanSettingsActivity, Spinner paramSpinner, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    DataPlanSettingsActivity.b(this.c, this.a.getSelectedItemPosition());
    DataPlanSettingsActivity.c(this.c, -1);
    try
    {
      DataPlanSettingsActivity.c(this.c, Integer.parseInt(this.b.getText().toString()));
      label45: DataPlanSettingsActivity.a(this.c).notifyDataSetChanged();
      return;
    }
    catch (Exception localException)
    {
      break label45;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ai
 * JD-Core Version:    0.6.2
 */