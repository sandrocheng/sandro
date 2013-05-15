package com.avast.android.mobilesecurity.app.settings;

import com.avast.android.generic.ae;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.account.AccountReportService;
import com.avast.android.mobilesecurity.ui.widget.ReportFrequencyRow;

class b
  implements c
{
  b(SettingsAccountFragment paramSettingsAccountFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    SettingsAccountFragment.b(this.a).d(paramBoolean);
    SettingsAccountFragment.c(this.a).setEnabled(paramBoolean);
    if (paramBoolean)
      AccountReportService.a(this.a.getActivity());
    while (true)
    {
      return;
      AccountReportService.b(this.a.getActivity());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.b
 * JD-Core Version:    0.6.2
 */