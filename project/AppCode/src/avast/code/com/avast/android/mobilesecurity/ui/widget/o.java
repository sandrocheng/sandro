package com.avast.android.mobilesecurity.ui.widget;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.app.account.AccountReportFrequencyDialog;

class o
  implements View.OnClickListener
{
  o(ReportFrequencyRow paramReportFrequencyRow)
  {
  }

  public void onClick(View paramView)
  {
    if ((this.a.getContext() instanceof FragmentActivity))
      AccountReportFrequencyDialog.a(((FragmentActivity)this.a.getContext()).getSupportFragmentManager());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.o
 * JD-Core Version:    0.6.2
 */