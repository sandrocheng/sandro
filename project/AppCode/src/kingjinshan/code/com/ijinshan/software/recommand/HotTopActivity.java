package com.ijinshan.software.recommand;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.keniu.security.util.at;
import java.util.LinkedList;

public class HotTopActivity extends Activity
{
  private e a;
  private LinkedList b;
  private ListView c;
  private RelativeLayout d;
  private RelativeLayout e;
  private PackageManager f;
  private Button g;
  private String h = "http://ex.mobmore.com/api/xpromo/wap_data?app_key=4ef03f1f527015677f00001d&request_count=20";

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903288);
    this.c = ((ListView)findViewById(2131231601));
    this.d = ((RelativeLayout)findViewById(2131231597));
    this.e = ((RelativeLayout)findViewById(2131231594));
    this.g = ((Button)findViewById(2131231600));
    this.g.setOnClickListener(new d(this));
    this.f = getPackageManager();
    if (at.c(this))
      new g(this).execute(new Void[] { null, null, null });
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
 * Qualified Name:     com.ijinshan.software.recommand.HotTopActivity
 * JD-Core Version:    0.6.2
 */