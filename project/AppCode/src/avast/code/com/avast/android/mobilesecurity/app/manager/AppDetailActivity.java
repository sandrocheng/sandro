package com.avast.android.mobilesecurity.app.manager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Window;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;

public class AppDetailActivity extends BaseSinglePaneActivity
{
  public static void call(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent(paramContext, AppDetailActivity.class);
    localIntent.putExtra("packageName", paramString);
    localIntent.putExtra("pid", paramInt1);
    localIntent.putExtra("expandBlock", paramInt2);
    if ((paramContext instanceof BaseActivity))
      ((BaseActivity)paramContext).a(localIntent);
    while (true)
    {
      return;
      paramContext.startActivity(localIntent);
    }
  }

  protected Fragment d()
  {
    AppDetailFragment localAppDetailFragment = new AppDetailFragment();
    localAppDetailFragment.setArguments(getIntent().getExtras());
    return localAppDetailFragment;
  }

  protected void onCreate(Bundle paramBundle)
  {
    getWindow().requestFeature(5);
    super.onCreate(paramBundle);
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.AppDetailActivity
 * JD-Core Version:    0.6.2
 */