package com.avast.android.mobilesecurity.app.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.s;

class a
  implements DialogInterface.OnClickListener
{
  a(AccountReportFrequencyDialog paramAccountReportFrequencyDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int[] arrayOfInt = this.a.getResources().getIntArray(2131623940);
    ((ae)ad.a(this.a.getActivity(), ae.class)).a(arrayOfInt[paramInt]);
    ((s)ad.a(this.a.getActivity(), s.class)).a(2131165229);
    AccountReportService.a(this.a.getActivity());
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.a
 * JD-Core Version:    0.6.2
 */