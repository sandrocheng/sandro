package org.antivirus.ui.scan.results;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import org.antivirus.AVService;
import org.antivirus.core.scanners.c;

final class n
  implements DialogInterface.OnClickListener
{
  n(ScanResultsExpandable paramScanResultsExpandable)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.a, AVService.class);
    localIntent.putExtra("__SAC", 22);
    localIntent.putExtra("__SAD", c.a);
    this.a.startService(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.n
 * JD-Core Version:    0.6.2
 */