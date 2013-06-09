package org.antivirus.tuneup;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TableLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.performance.PerformanceActivity;

public class TrafficMeterActivity extends BaseToolActivity
{
  public int a = -1;
  final ArrayList b = new ArrayList();
  Button c;
  private b d;
  private ListView e;
  private TextView f;
  private ArrayList g = null;

  private void c()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230732);
    localLinearLayout.setVisibility(8);
    if (AVSettings.isTrafficCounterOn())
    {
      localLinearLayout.setVisibility(0);
      findViewById(2131230733).setVisibility(8);
      if (this.c == null)
      {
        this.c = new Button(this, null, 2131099709);
        this.c.setBackgroundResource(2130837508);
        this.c.setOnTouchListener(new bf(this));
        this.c.setOnClickListener(new bg(this));
        localLinearLayout.addView(this.c);
      }
    }
  }

  private void d()
  {
    ((ProgressBar)findViewById(2131230895)).setVisibility(0);
    findViewById(2131230896).setVisibility(0);
    TableLayout localTableLayout = (TableLayout)findViewById(2131230761);
    boolean bool = ba.d();
    findViewById(2131230962).setVisibility(8);
    findViewById(2131230963).setVisibility(8);
    findViewById(2131230964).setVisibility(8);
    localTableLayout.setVisibility(8);
    findViewById(2131230967).setVisibility(8);
    findViewById(2131230958).setVisibility(8);
    ((ToggleButton)findViewById(2131230968)).setChecked(ba.d());
    this.g = null;
    if (this.d != null)
    {
      this.d.a(null);
      this.d.notifyDataSetChanged();
    }
    ((ToggleButton)findViewById(2131230968)).setChecked(bool);
    new Thread(new bh(this, bool, localTableLayout)).start();
  }

  protected final void b()
  {
    finish();
    Intent localIntent = new Intent(this, PerformanceActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(5);
    setContentView(2130903091);
    a(true, 2130837538, 2130837539, Strings.getString(2131296540), false);
    this.f = ((TextView)findViewById(2131230828));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(3, 2131230825);
    this.e = ((ListView)findViewById(2131230897));
    this.e.setCacheColorHint(0);
    this.e.setLayoutParams(localLayoutParams);
    boolean bool = getPackageManager().hasSystemFeature("android.hardware.telephony");
    ToggleButton localToggleButton = (ToggleButton)findViewById(2131230968);
    if (bool)
    {
      c();
      localToggleButton.setChecked(ba.d());
      localToggleButton.setOnCheckedChangeListener(new be(this));
    }
    while (true)
    {
      return;
      findViewById(2131230814).setVisibility(8);
      this.e.setPadding(0, 0, 0, 0);
    }
  }

  protected void onResume()
  {
    super.onResume();
    c();
    d();
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      a.a(this, "data_usage", "opened_from_notification", null);
      localIntent.removeExtra("from_notification");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.TrafficMeterActivity
 * JD-Core Version:    0.6.2
 */