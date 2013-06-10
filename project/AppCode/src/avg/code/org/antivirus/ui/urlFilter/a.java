package org.antivirus.ui.urlFilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import org.antivirus.AVService;

final class a
  implements DialogInterface.OnClickListener
{
  a(UrlWarningActivity paramUrlWarningActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.a, AVService.class);
    localIntent.putExtra("__SAC", 122);
    localIntent.putExtra("__SAD", "/mobile/urlfiltering.jsp");
    this.a.startService(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.urlFilter.a
 * JD-Core Version:    0.6.2
 */