package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class am
  implements DialogInterface.OnClickListener
{
  am(SDcardCleanerActivity paramSDcardCleanerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (SDcardCleanerActivity.e(this.a) != null);
    synchronized (SDcardCleanerActivity.e(this.a))
    {
      SDcardCleanerActivity.s(this.a);
      SDcardCleanerActivity.e(this.a).notify();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.am
 * JD-Core Version:    0.6.2
 */