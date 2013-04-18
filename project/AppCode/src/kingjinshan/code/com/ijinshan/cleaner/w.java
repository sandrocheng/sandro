package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class w
  implements DialogInterface.OnClickListener
{
  w(HistoryCleanerActivity paramHistoryCleanerActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.jxphone.mosecurity.a.a.i(this.b, "mg_rub_history_clean_success");
    if (this.a.isChecked())
      HistoryCleanerActivity.a(this.b).e();
    HistoryCleanerActivity.b(this.b);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.w
 * JD-Core Version:    0.6.2
 */