package com.antivirus.ui.callmessagefilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.antivirus.ui.callmessagefilter.fragment.CallMessageTabFragment;

class g
  implements DialogInterface.OnClickListener
{
  g(CallMessageFilterActivity paramCallMessageFilterActivity, CallMessageTabFragment paramCallMessageTabFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.b(paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.g
 * JD-Core Version:    0.6.2
 */