package com.avast.android.mobilesecurity.app.scanner;

import android.view.View;
import android.view.View.OnClickListener;

class t
  implements View.OnClickListener
{
  t(ScannerFragment paramScannerFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Scanner", "manual scan", "", 0L);
    ScannerFragment.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.t
 * JD-Core Version:    0.6.2
 */