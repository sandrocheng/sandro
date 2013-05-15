package com.avast.android.generic.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class PasswordActivity extends BaseActivity
{
  public static void call(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, PasswordActivity.class);
    localIntent.putExtra("callbackHandlerId", paramInt);
    if (!(paramContext instanceof Activity))
      localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    PasswordDialog.a(getSupportFragmentManager(), getIntent().getIntExtra("callbackHandlerId", 0));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.PasswordActivity
 * JD-Core Version:    0.6.2
 */