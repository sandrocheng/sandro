package com.antivirus.applocker;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class d
  implements DialogInterface.OnClickListener
{
  d(AppLockerActivity paramAppLockerActivity, int[] paramArrayOfInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((g)AppLockerActivity.a(this.b)).b(this.a[paramInt]);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.d
 * JD-Core Version:    0.6.2
 */