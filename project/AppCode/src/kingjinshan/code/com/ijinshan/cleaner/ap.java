package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class ap
  implements DialogInterface.OnClickListener
{
  ap(SDcardCleanerActivity paramSDcardCleanerActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.jxphone.mosecurity.a.a.i(this.b, "mg_rub_sdcard_clean_success");
    SDcardCleanerActivity.d(this.b);
    new as(this.b).start();
    if (this.a.isChecked())
      SDcardCleanerActivity.c(this.b).e();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ap
 * JD-Core Version:    0.6.2
 */