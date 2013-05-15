package com.avast.android.mobilesecurity.app.campaign.types;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Parcel;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import com.avast.android.mobilesecurity.app.campaign.PopupCampaignEvent;
import com.avast.android.mobilesecurity.app.campaign.e;
import com.avast.android.mobilesecurity.app.campaign.f;
import com.avast.android.mobilesecurity.app.campaign.h;

public class SecureLinePopup extends PopupCampaignEvent
{
  public SecureLinePopup(Parcel paramParcel)
  {
    super(paramParcel);
  }

  public SecureLinePopup(e parame, Bundle paramBundle)
  {
    super(parame, f.a, paramBundle);
  }

  public View a(Context paramContext, h paramh)
  {
    ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(paramContext).inflate(2130903080, null);
    Button localButton1 = (Button)localViewGroup.findViewById(2131165330);
    Button localButton2 = (Button)localViewGroup.findViewById(2131165329);
    CheckBox localCheckBox = (CheckBox)localViewGroup.findViewById(2131165331);
    com.avast.android.mobilesecurity.app.campaign.b localb = new com.avast.android.mobilesecurity.app.campaign.b(paramContext);
    localButton1.setOnClickListener(new a(this, paramContext, paramh, localCheckBox, localb));
    localButton2.setOnClickListener(new b(this, paramh, localCheckBox, localb));
    return localViewGroup;
  }

  public String a(String paramString)
  {
    return paramString + ";" + c().getString("ssid");
  }

  public boolean a(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.avast.android.vpn", 0);
      bool2 = false;
      if (localPackageInfo != null)
        return bool2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        boolean bool1 = paramString.contains(c().getString("ssid"));
        boolean bool2 = false;
        if (!bool1)
          bool2 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.types.SecureLinePopup
 * JD-Core Version:    0.6.2
 */