package com.avast.android.mobilesecurity.app.filter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.support.v4.app.FragmentActivity;

class ac
  implements DialogInterface.OnCancelListener
{
  ac(SmsBlockOfferActivity.GroupSelectDialog paramGroupSelectDialog)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.getActivity().finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.ac
 * JD-Core Version:    0.6.2
 */