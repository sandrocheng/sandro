package org.antivirus.tuneup;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

final class ak
  implements CompoundButton.OnCheckedChangeListener
{
  ak(DataPlanSettingsActivity paramDataPlanSettingsActivity, EditText paramEditText)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.setEnabled(false);
    if (paramBoolean)
      this.a.setEnabled(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ak
 * JD-Core Version:    0.6.2
 */