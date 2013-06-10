package org.antivirus.ui.main;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.CheckBox;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.ui.license.LicenseEnteringActivity;
import org.antivirus.widget.a.k;

public class ActivationActivity extends Activity
{
  private EngineSettings a;
  private CheckBox b = null;
  private org.antivirus.core.b.a c;
  private boolean d;
  private ServiceConnection e = new a(this);

  private EngineSettings a(Context paramContext)
  {
    if (this.a == null)
      this.a = new EngineSettings(paramContext);
    return this.a;
  }

  public void onBackPressed()
  {
    setResult(0);
    super.onBackPressed();
  }

  public void onClickActivate(View paramView)
  {
    if (this.b.isChecked())
    {
      AVSettings.setPowerSavingMode(true);
      AVSettings.setLastBatteryThreshold(0);
      AVSettings.setPowerSavingThreshold(org.antivirus.tuneup.BatterySaveSettingsActivity.c[1]);
      a(getApplicationContext()).setAutoScanSMS(true);
      AVSettings.setUrlAntiPhishing(true);
      setResult(-1);
      Intent localIntent1 = new Intent(this, AVService.class);
      localIntent1.putExtra("__SAC", 114);
      startService(localIntent1);
      if (this.b.isChecked())
      {
        Intent localIntent2 = new Intent();
        localIntent2.setComponent(AVService.SERVICE_IDENTIFIER);
        localIntent2.putExtra("__SAC", 109);
        localIntent2.putExtra("__SAD", true);
        startService(localIntent2);
      }
      String str = getIntent().getStringExtra("lcc");
      if ((str != null) || ((this.c != null) && (this.c.t)))
      {
        Intent localIntent3 = new Intent(this, LicenseEnteringActivity.class);
        localIntent3.putExtra("title", Strings.getString(2131296382));
        localIntent3.putExtra("firest_edit_text", Strings.getString(2131296383));
        if (str != null)
          localIntent3.putExtra("lcc", str);
        startActivity(localIntent3);
      }
      Parcelable localParcelable = getIntent().getParcelableExtra("ext_a_intent");
      if ((localParcelable instanceof Intent))
        startActivity((Intent)localParcelable);
      if (this.c == null)
        break label323;
    }
    label323: for (Boolean localBoolean = Boolean.valueOf(this.c.a()); ; localBoolean = null)
    {
      k localk = k.a(this);
      if (localk.e())
        localk.b(localBoolean, true);
      finish();
      org.antivirus.ganalytics.a.a(this, "activation", "activate", null);
      return;
      AVSettings.setPowerSavingMode(false);
      a(getApplicationContext()).setAutoScanSMS(false);
      break;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, AVService.class), this.e, 1);
    setContentView(2130903041);
  }

  protected void onDestroy()
  {
    if (this.d)
    {
      unbindService(this.e);
      this.d = false;
    }
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.ActivationActivity
 * JD-Core Version:    0.6.2
 */