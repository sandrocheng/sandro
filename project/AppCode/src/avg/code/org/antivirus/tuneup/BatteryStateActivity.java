package org.antivirus.tuneup;

import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolActivity;

public class BatteryStateActivity extends BaseToolActivity
{
  private final String a = "com.android.settings";
  private final String b = "com.android.settings.fuelgauge.PowerUsageSummary";
  private final String c = "com.android.settings.Settings";
  private final String d = ":android:show_fragment";
  private final int e = 5;
  private final int f = 30;
  private u g;
  private aa h;
  private ListView i;
  private int j;
  private h k;
  private Handler l;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903052);
    a(true, 2130837518, 2130837519, Strings.getString(2131296675), false);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230732);
    localLinearLayout.setVisibility(0);
    findViewById(2131230733).setVisibility(8);
    Button localButton1 = new Button(this, null, 2131099709);
    localButton1.setBackgroundResource(2130837506);
    localButton1.setOnTouchListener(new w(this, localButton1));
    localButton1.setOnClickListener(new x(this));
    localLinearLayout.addView(localButton1);
    Button localButton2 = new Button(this, null, 2131099709);
    localButton2.setBackgroundResource(2130837504);
    localButton2.setOnTouchListener(new y(this, localButton2));
    localButton2.setOnClickListener(new z(this));
    localLinearLayout.addView(localButton2);
    this.i = ((ListView)findViewById(2131230813));
    this.i.setDivider(null);
    this.i.setDividerHeight(0);
    this.j = BitmapFactory.decodeResource(getResources(), 2130837588).getWidth();
    this.k = new h(0);
    if (this.l == null)
      this.l = new v(this);
  }

  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(this.k);
    this.k.a(null);
  }

  public void onResume()
  {
    super.onResume();
    this.k.a(this.l);
    registerReceiver(this.k, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.BatteryStateActivity
 * JD-Core Version:    0.6.2
 */