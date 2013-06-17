package com.avg.tuneup.traffic;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.h;
import com.avg.toolkit.f.a;
import com.avg.tuneup.j;

public class TrafficMeterActivity extends com.avg.tuneup.g
{
  private Button n;

  protected void b(int paramInt)
  {
  }

  public void i()
  {
    finish();
    finish();
    try
    {
      Intent localIntent = new Intent(this, Class.forName(j.s()));
      localIntent.setFlags(608305152);
      startActivity(localIntent);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        a.a("Unable to find top performance class");
    }
  }

  protected y k()
  {
    return new y();
  }

  public void l()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(e.buttons);
    localLinearLayout.setVisibility(8);
    if (j.a())
    {
      localLinearLayout.setVisibility(0);
      findViewById(e.options).setVisibility(8);
      if (this.n == null)
      {
        this.n = new Button(this, null, h.ImageButtonHolo);
        this.n.setBackgroundResource(d.ab_btn_settings);
        this.n.setOnTouchListener(new w(this));
        this.n.setOnClickListener(new x(this));
        localLinearLayout.addView(this.n);
      }
    }
  }

  protected void m()
  {
    startActivity(new Intent(getApplicationContext(), DataPlanSettingsActivity.class));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(f.fragment_activity);
    a(true, d.ab_ic_traffic, d.ab_ic_traffic_p, getString(com.avg.a.g.traffic), false, e.header);
    if (paramBundle == null)
      a(k(), e.middle_part, "TrafficMeterFragment");
  }

  protected void onResume()
  {
    super.onResume();
    l();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.TrafficMeterActivity
 * JD-Core Version:    0.6.2
 */