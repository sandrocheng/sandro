package com.antivirus.ui.scan.results;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.antivirus.AVService;
import com.antivirus.core.scanners.c;
import com.avg.ui.general.a.a;

class n
  implements DialogInterface.OnClickListener
{
  n(m paramm, Context paramContext)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("__SAD", c.a);
    AVService.a(this.a, 2000, 1, localBundle);
    m.a(this.b).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.n
 * JD-Core Version:    0.6.2
 */