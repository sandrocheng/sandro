package com.keniu.security.sync.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;

final class r
  implements AdapterView.OnItemClickListener
{
  r(SyncBackupActivity paramSyncBackupActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBox localCheckBox = (CheckBox)paramView.findViewById(2131230898);
    boolean[] arrayOfBoolean = SyncBackupActivity.b(this.a);
    int i;
    if (!localCheckBox.isChecked())
    {
      i = 1;
      arrayOfBoolean[paramInt] = i;
      if (localCheckBox.isChecked())
        break label62;
    }
    label62: for (boolean bool = true; ; bool = false)
    {
      localCheckBox.setChecked(bool);
      return;
      i = 0;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.r
 * JD-Core Version:    0.6.2
 */