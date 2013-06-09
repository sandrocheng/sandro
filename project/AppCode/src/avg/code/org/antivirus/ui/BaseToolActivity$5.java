package org.antivirus.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class BaseToolActivity$5
  implements DialogInterface.OnClickListener
{
  BaseToolActivity$5(BaseToolActivity paramBaseToolActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolActivity.5
 * JD-Core Version:    0.6.2
 */