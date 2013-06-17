package com.avg.ui.license;

import android.content.Intent;
import android.os.Bundle;
import com.avg.ui.general.c;
import com.avg.ui.general.d;
import com.avg.ui.general.e;

public class EnterLicenseActivity extends com.avg.ui.general.a.a
{
  public void a(int paramInt)
  {
  }

  protected Class j()
  {
    return null;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.fragment_activity);
    Bundle localBundle = getIntent().getExtras();
    String str = "";
    if (localBundle != null)
      str = localBundle.getString("title");
    a(true, c.ab_ic_license, c.ab_ic_license_p, str, false, d.header);
    if (paramBundle == null)
      a(new a(), d.middle_part, "EnterLicenseFragment");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.EnterLicenseActivity
 * JD-Core Version:    0.6.2
 */