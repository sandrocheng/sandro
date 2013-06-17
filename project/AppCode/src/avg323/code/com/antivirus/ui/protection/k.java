package com.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.antivirus.AVService;
import com.antivirus.core.scanners.c;

class k
  implements DialogInterface.OnCancelListener
{
  k(a parama)
  {
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("__SAD", c.b);
    AVService.a(a.h(this.a), 2000, 9, localBundle);
    a.a(this.a, true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.k
 * JD-Core Version:    0.6.2
 */