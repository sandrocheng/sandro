package com.avast.android.mobilesecurity.app.wizard;

import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ad;
import com.avast.android.generic.app.wizard.WizardAccountActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.t;

class b
  implements View.OnClickListener
{
  b(AntiTheftOfferFragment paramAntiTheftOfferFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Wizard", "Anti Theft Install Offer", "cancel", 0L);
    if ((!((t)ad.a(this.a.getActivity(), t.class)).u()) && (Build.VERSION.SDK_INT >= 8))
      WizardAccountActivity.call(this.a.getActivity(), false);
    while (true)
    {
      a.a(this.a);
      return;
      ScanWizardActivity.call(this.a.getActivity());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.b
 * JD-Core Version:    0.6.2
 */