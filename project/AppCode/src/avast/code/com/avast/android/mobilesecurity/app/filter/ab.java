package com.avast.android.mobilesecurity.app.filter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.s;

class ab
  implements DialogInterface.OnClickListener
{
  ab(SmsBlockOfferActivity.GroupSelectDialog paramGroupSelectDialog, int[] paramArrayOfInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Message localMessage = Message.obtain();
    localMessage.what = 2131165231;
    localMessage.arg1 = this.a[paramInt];
    ((s)ad.a(this.b.getActivity(), s.class)).a(localMessage);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.ab
 * JD-Core Version:    0.6.2
 */