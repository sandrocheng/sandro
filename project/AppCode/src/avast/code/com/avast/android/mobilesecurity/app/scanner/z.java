package com.avast.android.mobilesecurity.app.scanner;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

class z
  implements View.OnClickListener
{
  z(ScannerLogFragment paramScannerLogFragment)
  {
  }

  public void onClick(View paramView)
  {
    ConfirmResolveAllFragment localConfirmResolveAllFragment = new ConfirmResolveAllFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("com.avast.android.mobilesecurity.app.scanner.APPS", ScannerLogFragment.b(this.a));
    localBundle.putInt("com.avast.android.mobilesecurity.app.scanner.FILES", ScannerLogFragment.c(this.a));
    localBundle.putInt("com.avast.android.mobilesecurity.app.scanner.IGNORE", ScannerLogFragment.d(this.a));
    localConfirmResolveAllFragment.setArguments(localBundle);
    localConfirmResolveAllFragment.setTargetFragment(this.a, 1);
    localConfirmResolveAllFragment.show(this.a.getFragmentManager(), "confirmResolveAllFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.z
 * JD-Core Version:    0.6.2
 */