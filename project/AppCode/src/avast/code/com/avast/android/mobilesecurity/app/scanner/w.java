package com.avast.android.mobilesecurity.app.scanner;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.WeekDaysRow;

class w
  implements View.OnClickListener
{
  w(ScannerFragment paramScannerFragment)
  {
  }

  public void onClick(View paramView)
  {
    if ((ScannerFragment.c(this.a).c()) || (ScannerFragment.d(this.a).c()));
    for (int i = 1; ; i = 0)
    {
      int j = 0;
      if (i != 0)
      {
        boolean bool = ScannerFragment.g(this.a).c();
        j = 0;
        if (bool)
          j = 1;
      }
      if ((j != 0) && (ScannerFragment.e(this.a).c() == 0))
        ScannerFragment.e(this.a).a(1);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.w
 * JD-Core Version:    0.6.2
 */