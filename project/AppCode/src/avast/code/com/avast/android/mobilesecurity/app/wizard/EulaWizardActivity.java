package com.avast.android.mobilesecurity.app.wizard;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.mobilesecurity.app.home.AppSetupIntentService;

public class EulaWizardActivity extends com.avast.android.generic.app.wizard.EulaWizardActivity
{
  private boolean a = false;

  protected Fragment d()
  {
    return new EulaFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onStart()
  {
    super.onStart();
    if (!this.a)
    {
      startService(new Intent(this, AppSetupIntentService.class));
      this.a = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.EulaWizardActivity
 * JD-Core Version:    0.6.2
 */