package org.antivirus.core.observers;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.scanners.aa;

public class SMSContentObserver extends ContentObserver
{
  private final Uri a = Uri.parse("content://sms/");
  private Context b;

  public SMSContentObserver(Context paramContext)
  {
    super(new Handler());
    this.b = paramContext;
  }

  public void onChange(boolean paramBoolean)
  {
    if (aa.b());
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
      localIntent.putExtra("__SAC", 24);
      this.b.startService(localIntent);
    }
  }

  public void registerSelf()
  {
    this.b.getContentResolver().registerContentObserver(this.a, true, this);
  }

  public void unregisterSelf()
  {
    this.b.getContentResolver().unregisterContentObserver(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.observers.SMSContentObserver
 * JD-Core Version:    0.6.2
 */