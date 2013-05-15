package com.avast.android.mobilesecurity.scan;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;

public class ScanActivity extends BaseSinglePaneActivity
  implements g
{
  public static void call(Context paramContext, Class paramClass, Uri paramUri, String paramString)
  {
    Intent localIntent = new Intent(paramContext, ScanActivity.class);
    localIntent.putExtra("serviceClass", paramClass);
    if (paramUri != null)
      localIntent.putExtra("logUri", paramUri);
    while (true)
    {
      localIntent.putExtra("titleResourceId", paramString);
      ((BaseActivity)paramContext).a(localIntent);
      return;
      localIntent.putExtra("logInvisible", true);
    }
  }

  public void b(boolean paramBoolean)
  {
    finish();
  }

  public void c(boolean paramBoolean)
  {
  }

  protected Fragment d()
  {
    ScanFragment localScanFragment = new ScanFragment();
    localScanFragment.setArguments(b(getIntent()));
    return localScanFragment;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.ScanActivity
 * JD-Core Version:    0.6.2
 */