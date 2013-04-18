package com.ijinshan.software.recommand;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.keniu.security.util.at;
import java.util.LinkedList;

public class NecessaryInstalledActivity extends Activity
{
  private j a;
  private LinkedList b;
  private ListView c;
  private RelativeLayout d;
  private RelativeLayout e;
  private PackageManager f;
  private Button g;
  private String h = "http://ex.mobmore.com/api/xpromo/wap_data?app_key=4f3a1e6952701531b9000025&request_count=20&autofill=0&sdk_version=4";

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903289);
    this.c = ((ListView)findViewById(2131231610));
    this.d = ((RelativeLayout)findViewById(2131231606));
    this.e = ((RelativeLayout)findViewById(2131231603));
    this.g = ((Button)findViewById(2131231609));
    this.g.setOnClickListener(new i(this));
    this.f = getPackageManager();
    if (at.c(this))
      new l(this).execute(new Void[] { null, null, null });
    while (true)
    {
      return;
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      this.d.setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.NecessaryInstalledActivity
 * JD-Core Version:    0.6.2
 */