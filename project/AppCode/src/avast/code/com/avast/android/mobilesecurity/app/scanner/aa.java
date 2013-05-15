package com.avast.android.mobilesecurity.app.scanner;

import android.view.View;
import android.widget.ListView;

class aa
  implements Runnable
{
  aa(ScannerLogFragment paramScannerLogFragment)
  {
  }

  public void run()
  {
    ScannerLogFragment.e(this.a).setVisibility(0);
    if (this.a.getView() != null)
      this.a.getListView().setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.aa
 * JD-Core Version:    0.6.2
 */