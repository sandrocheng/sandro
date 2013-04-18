package com.ijinshan.cleaner;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

final class aj
  implements CompoundButton.OnCheckedChangeListener
{
  aj(MonitorUninstallActivity paramMonitorUninstallActivity, EditText paramEditText)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = this.a.getSelectionStart();
    if (paramBoolean)
      this.a.setInputType(145);
    while (true)
    {
      this.a.setSelection(i);
      return;
      this.a.setInputType(129);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.aj
 * JD-Core Version:    0.6.2
 */