package com.avast.android.generic.ui.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.s;

class w
  implements DialogInterface.OnClickListener
{
  w(SelectorRow.SelectorDialog paramSelectorDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Message localMessage = Message.obtain();
    localMessage.what = SelectorRow.SelectorDialog.a(this.a);
    localMessage.arg1 = paramInt;
    ((s)ad.a(this.a.getActivity(), s.class)).a(localMessage);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.w
 * JD-Core Version:    0.6.2
 */