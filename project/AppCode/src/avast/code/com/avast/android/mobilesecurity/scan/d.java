package com.avast.android.mobilesecurity.scan;

import android.view.View;
import android.view.View.OnClickListener;

class d
  implements View.OnClickListener
{
  d(ScanFragment paramScanFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (ScanFragment.b(this.a))
      this.a.a(true);
    while (true)
    {
      return;
      if ((ScanFragment.c(this.a) != null) && (ScanFragment.d(this.a)))
        ScanFragment.c(this.a).a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.d
 * JD-Core Version:    0.6.2
 */