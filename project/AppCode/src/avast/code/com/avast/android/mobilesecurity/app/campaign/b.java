package com.avast.android.mobilesecurity.app.campaign;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.avast.android.generic.util.m;

public class b
{
  private Context a;
  private SharedPreferences b;

  public b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = this.a.getSharedPreferences("prefs_campaigns", 0);
  }

  private boolean b(CampaignEvent paramCampaignEvent)
  {
    return paramCampaignEvent.a(this.a, this.b.getString(c(paramCampaignEvent), ""));
  }

  private String c(CampaignEvent paramCampaignEvent)
  {
    return "dont_show_" + paramCampaignEvent.a().a() + "_" + paramCampaignEvent.b().toString();
  }

  public void a()
  {
    new d(this, null).execute(new Void[0]);
  }

  public void a(CampaignEvent paramCampaignEvent)
  {
    try
    {
      m.c("CampaignEventHandler: dont show anymore event: " + paramCampaignEvent.toString());
      if (paramCampaignEvent.b() == f.a)
      {
        String str1 = c(paramCampaignEvent);
        String str2 = this.b.getString(str1, "");
        this.b.edit().putString(str1, paramCampaignEvent.a(str2)).commit();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.b
 * JD-Core Version:    0.6.2
 */