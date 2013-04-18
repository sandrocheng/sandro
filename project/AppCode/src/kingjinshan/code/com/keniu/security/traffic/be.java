package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.jxphone.mosecurity.a.a;

final class be
  implements DialogInterface.OnClickListener
{
  be(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, TrafficZiFeiSettingActivity2.class);
    if (y.d(this.a))
      localIntent.putExtra("context", "RatesRequest");
    while (true)
    {
      TrafficMainActivity.a(this.a, true);
      a.d(this.a, "9");
      this.a.startActivityForResult(localIntent, 22);
      return;
      localIntent.putExtra("context", "Traffic");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.be
 * JD-Core Version:    0.6.2
 */