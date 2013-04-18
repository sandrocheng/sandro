package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.a;

final class v
  implements DialogInterface.OnClickListener
{
  v(HistoryCleanerActivity paramHistoryCleanerActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      HistoryCleanerActivity.a(this.b).e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.v
 * JD-Core Version:    0.6.2
 */