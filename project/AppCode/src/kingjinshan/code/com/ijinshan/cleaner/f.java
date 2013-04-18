package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class f
  implements DialogInterface.OnClickListener
{
  f(CacheCleanerActivity paramCacheCleanerActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.jxphone.mosecurity.a.a.i(this.b, "mg_rub_cache_clean_success");
    if (!CacheCleanerActivity.b(this.b))
    {
      CacheCleanerActivity.b(this.b, true);
      new i(this.b).start();
    }
    if (this.a.isChecked())
      CacheCleanerActivity.a(this.b).e();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.f
 * JD-Core Version:    0.6.2
 */