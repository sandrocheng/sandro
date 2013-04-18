package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.a;

final class e
  implements DialogInterface.OnClickListener
{
  e(CacheCleanerActivity paramCacheCleanerActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a.isChecked())
      CacheCleanerActivity.a(this.b).e();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.e
 * JD-Core Version:    0.6.2
 */