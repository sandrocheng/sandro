package com.keniu.security.rates;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class h
  implements DialogInterface.OnClickListener
{
  h(RatesRequestMainActivity paramRatesRequestMainActivity, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.a));
      this.b.startActivity(localIntent);
      label25: return;
    }
    catch (Exception localException)
    {
      break label25;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.h
 * JD-Core Version:    0.6.2
 */