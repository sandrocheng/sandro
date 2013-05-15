package com.avast.android.mobilesecurity.app.scanner;

import android.view.View;
import android.view.View.OnClickListener;

class i
  implements View.OnClickListener
{
  i(ReportDialogFragment paramReportDialogFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (ReportDialogFragment.a(this.a) != null)
      ReportDialogFragment.a(this.a).a();
    this.a.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.i
 * JD-Core Version:    0.6.2
 */