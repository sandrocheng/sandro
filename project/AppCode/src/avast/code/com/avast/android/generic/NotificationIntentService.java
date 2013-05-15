package com.avast.android.generic;

import android.app.IntentService;
import android.content.Intent;
import android.os.Handler;
import com.avast.android.generic.notification.a;
import com.avast.android.generic.notification.j;

public abstract class NotificationIntentService extends IntentService
{
  private Handler a;
  private j b;

  public NotificationIntentService(String paramString)
  {
    super(paramString);
  }

  protected abstract a a(Intent paramIntent);

  protected abstract void b(Intent paramIntent);

  public void onCreate()
  {
    super.onCreate();
    this.a = new Handler();
    this.b = ((j)ad.a(this, j.class));
  }

  protected final void onHandleIntent(Intent paramIntent)
  {
    a locala = a(paramIntent);
    this.a.post(new h(this, locala));
    try
    {
      b(paramIntent);
      return;
    }
    finally
    {
      this.a.post(new i(this, locala));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.NotificationIntentService
 * JD-Core Version:    0.6.2
 */