package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ad;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.ui.widget.SelectorRow;
import com.avast.android.generic.ui.widget.u;
import com.avast.android.mobilesecurity.app.webshield.WebshieldService;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.YesNoDialogFragment;

class i
  implements u
{
  i(SettingsFragment paramSettingsFragment, t paramt)
  {
  }

  public void a(SelectorRow paramSelectorRow, int paramInt1, int paramInt2)
  {
    if (paramInt2 == SettingsFragment.h(this.b));
    while (true)
    {
      return;
      if (paramInt2 == 0)
      {
        YesNoDialogFragment localYesNoDialogFragment = new YesNoDialogFragment();
        localYesNoDialogFragment.setTargetFragment(this.b, 0);
        localYesNoDialogFragment.a(this.b.getText(2131493344));
        localYesNoDialogFragment.b(this.b.getText(2131493814));
        localYesNoDialogFragment.show(this.b.getFragmentManager(), "yesNoDialogFragment");
      }
      else
      {
        this.a.e(true);
        this.b.a("ms-Settings", "notificationAlwaysType", null, paramInt2);
        ((j)ad.a(this.b.getActivity(), j.class)).b();
        WebshieldService.a(this.b.getActivity());
        SettingsFragment.a(this.b, paramInt2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.i
 * JD-Core Version:    0.6.2
 */