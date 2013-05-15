package com.avast.android.mobilesecurity.app.scanner;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

class j
  implements View.OnClickListener
{
  j(ReportDialogFragment paramReportDialogFragment, EditText paramEditText1, EditText paramEditText2)
  {
  }

  public void onClick(View paramView)
  {
    if (TextUtils.isEmpty(this.a.getText().toString()))
    {
      Toast.makeText(this.c.getActivity(), this.c.getText(2131493478), 1).show();
      this.a.requestFocus();
    }
    while (true)
    {
      return;
      ReportService.a(this.c.getActivity(), ReportDialogFragment.b(this.c), "" + ReportDialogFragment.c(this.c), ReportDialogFragment.d(this.c), this.a.getText().toString(), this.b.getText().toString());
      this.c.dismiss();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.j
 * JD-Core Version:    0.6.2
 */