package com.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.antivirus.AVService;

public class GCMIntentService extends com.google.android.a.a
{
  public GCMIntentService()
  {
    super(new String[] { "804293759086" });
  }

  protected void a(Context paramContext, Intent paramIntent)
  {
    try
    {
      a.a(paramContext);
      AVService.a(paramContext, 9000, 9001, paramIntent.getExtras());
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  protected void a(Context paramContext, String paramString)
  {
  }

  protected void b(Context paramContext, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("registration_id", paramString);
    AVService.a(paramContext, 4000, 9006, localBundle);
  }

  protected void c(Context paramContext, String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.GCMIntentService
 * JD-Core Version:    0.6.2
 */