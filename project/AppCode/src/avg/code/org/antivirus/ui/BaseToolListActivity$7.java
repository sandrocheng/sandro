package org.antivirus.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class BaseToolListActivity$7
  implements DialogInterface.OnClickListener
{
  BaseToolListActivity$7(BaseToolListActivity paramBaseToolListActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(paramInt + 1);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseToolListActivity.7
 * JD-Core Version:    0.6.2
 */