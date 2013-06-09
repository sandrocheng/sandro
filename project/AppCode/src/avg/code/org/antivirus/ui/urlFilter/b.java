package org.antivirus.ui.urlFilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import org.antivirus.core.AVCoreService;

final class b
  implements DialogInterface.OnClickListener
{
  b(UrlWarningActivity paramUrlWarningActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
    localIntent.putExtra("__SAC", 11);
    localIntent.putExtra("__SAD", this.a.getIntent().getExtras().getString("md5sum"));
    this.a.startService(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.urlFilter.b
 * JD-Core Version:    0.6.2
 */