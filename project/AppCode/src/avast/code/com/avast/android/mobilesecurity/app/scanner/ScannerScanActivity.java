package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.app.home.StartActivity;
import com.avast.android.mobilesecurity.scan.ScanActivity;
import com.avast.android.mobilesecurity.scan.g;
import com.avast.android.mobilesecurity.t;

public class ScannerScanActivity extends ScanActivity
  implements g
{
  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, ScannerScanActivity.class);
    ((BaseActivity)paramContext).a(localIntent);
  }

  public void b(boolean paramBoolean)
  {
    finish();
  }

  public void c(boolean paramBoolean)
  {
    finish();
  }

  protected Fragment d()
  {
    return new ScannerScanFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!((t)ad.a(this, t.class)).b("eulaDone", false))
    {
      StartActivity.call(this);
      finish();
    }
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerScanActivity
 * JD-Core Version:    0.6.2
 */