package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.q;

class s
  implements View.OnClickListener
{
  s(ScannerFragment paramScannerFragment)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(q.a());
    ((BaseActivity)this.a.getActivity()).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.s
 * JD-Core Version:    0.6.2
 */