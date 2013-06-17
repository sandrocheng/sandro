package com.antivirus.ui.protection;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import com.antivirus.m;

public class FileScannerActivity extends com.antivirus.ui.a
{
  public com.antivirus.a n;
  private Fragment o = null;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.n = ((com.antivirus.a)paramIBinder);
    this.o = new a();
    a(this.o, 2131230929, "FileScannerFragment");
  }

  public void i()
  {
    finish();
    Intent localIntent = new Intent(this, ProtectionActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    p();
    setContentView(2130903080);
    a(true, 2130837528, 2130837529, m.a(this, 2131296524), false, 2131230769);
  }

  public void onDestroy()
  {
    super.onDestroy();
    q();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.FileScannerActivity
 * JD-Core Version:    0.6.2
 */