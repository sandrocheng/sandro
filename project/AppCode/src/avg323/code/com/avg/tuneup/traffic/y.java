package com.avg.tuneup.traffic;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TableLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.g;
import com.avg.tuneup.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class y extends com.avg.tuneup.h
{
  private com.avg.tuneup.b a;
  private ListView b;
  private TextView c;
  private ArrayList d = null;
  private boolean e;
  private View f;

  private void F()
  {
    this.f.findViewById(e.bottom_action_bar).setVisibility(8);
    this.b.setPadding(0, 0, 0, 0);
    LinearLayout localLinearLayout = (LinearLayout)this.f.findViewById(e.fragment_title).findViewById(e.ll_content);
    String str1 = this.ag.getString(g.on);
    String str2 = this.ag.getString(g.off);
    ab localab = new ab(this);
    if (Build.VERSION.SDK_INT >= 14)
      com.avg.ui.general.c.h.a(this.ag, localLinearLayout, str2, str1, s.e(), localab);
    while (true)
    {
      return;
      ToggleButton localToggleButton = new ToggleButton(this.ag);
      localToggleButton.setTextOff(str2);
      localToggleButton.setTextOn(str1);
      localToggleButton.setChecked(s.e());
      localToggleButton.setOnCheckedChangeListener(localab);
      localLinearLayout.addView(localToggleButton);
    }
  }

  private void G()
  {
    ((ProgressBar)this.f.findViewById(e.apps_progress_bar)).setVisibility(0);
    this.f.findViewById(e.tv_loading).setVisibility(0);
    TableLayout localTableLayout = (TableLayout)this.f.findViewById(e.tableLayout1);
    boolean bool = s.e();
    this.f.findViewById(e.pb_traffic_green).setVisibility(8);
    this.f.findViewById(e.pb_traffic_orange).setVisibility(8);
    this.f.findViewById(e.pb_traffic_red).setVisibility(8);
    localTableLayout.setVisibility(8);
    this.f.findViewById(e.tv_time_until).setVisibility(8);
    this.f.findViewById(e.bottom_traffic_bar).setVisibility(8);
    this.d = null;
    if (this.a != null)
    {
      this.a.a(null);
      this.a.notifyDataSetChanged();
    }
    ((ToggleButton)this.f.findViewById(e.tbtn_data_plan)).setChecked(bool);
    new Thread(new ae(this, bool, localTableLayout)).start();
  }

  private void H()
  {
    if (this.ag == null);
    while (true)
    {
      return;
      PackageManager localPackageManager = this.ag.getPackageManager();
      if (this.d == null)
      {
        this.d = a(localPackageManager);
        if (this.d != null)
          I();
      }
      else if (this.ag != null)
      {
        this.ag.runOnUiThread(new ag(this));
        new Thread(new ah(this, localPackageManager)).start();
      }
    }
  }

  private void I()
  {
    Collections.sort(this.d, new com.avg.tuneup.a(-4));
  }

  private void a(PackageManager paramPackageManager, ArrayList paramArrayList)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        com.avg.ui.general.c.b localb = (com.avg.ui.general.c.b)localIterator.next();
        try
        {
          localb.d = paramPackageManager.getApplicationIcon(localb.c);
        }
        catch (Exception localException)
        {
        }
        if (n())
          localb.d = i().getDrawable(d.general_android_app);
      }
    }
  }

  private void a(CompoundButton paramCompoundButton)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setIcon(d.dialog_icon_warning);
    localBuilder.setTitle(this.ag.getString(g.traffic));
    localBuilder.setMessage(this.ag.getString(g.traffic_data_counter_turn_off_confirmation));
    localBuilder.setPositiveButton(this.ag.getString(g.ok), new ac(this, paramCompoundButton));
    localBuilder.setNegativeButton(this.ag.getString(g.cancel), new ad(this, paramCompoundButton));
    localBuilder.show();
  }

  private void a(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean == j.a());
    while (true)
    {
      return;
      if (!j.a())
        break;
      a(paramCompoundButton);
    }
    if (!this.ag.o())
      paramCompoundButton.setChecked(false);
    j.a(true);
    if (this.ag.o())
      this.ag.a(new a(), e.fragment_content, "DataPlanSettingsFragment");
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "data_usage", "usage_count", "on", 0);
      break;
      Intent localIntent = a();
      localIntent.putExtra("new_activation", true);
      a(localIntent);
    }
  }

  protected Intent a()
  {
    return new Intent(this.ag.getApplicationContext(), DataPlanSettingsActivity.class);
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
    {
      localView = null;
      return localView;
    }
    this.f = paramLayoutInflater.inflate(f.traffic_list, paramViewGroup, false);
    this.c = ((TextView)this.f.findViewById(e.tv_title));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(3, e.ll_separator);
    this.b = ((ListView)this.f.findViewById(e.lv_apps));
    this.b.setCacheColorHint(0);
    this.b.setLayoutParams(localLayoutParams);
    this.b.setOnItemClickListener(new z(this));
    if (this.e)
      if (!this.ag.o())
      {
        ((TrafficMeterActivity)this.ag).l();
        ToggleButton localToggleButton = (ToggleButton)this.f.findViewById(e.tbtn_data_plan);
        localToggleButton.setChecked(s.e());
        localToggleButton.setOnCheckedChangeListener(new aa(this));
      }
    while (true)
    {
      if (this.ag.o())
      {
        a(this.ag.getString(g.traffic), this.f);
        d(true);
      }
      localView = this.f;
      break;
      F();
      continue;
      this.f.findViewById(e.bottom_action_bar).setVisibility(8);
      this.b.setPadding(0, 0, 0, 0);
    }
  }

  public ArrayList a(PackageManager paramPackageManager)
  {
    Context localContext = this.ag.getApplicationContext();
    ArrayList localArrayList = new ArrayList();
    List localList = s.a(localContext).d();
    HashSet localHashSet = new HashSet();
    localHashSet.add(Integer.valueOf(localContext.getApplicationInfo().uid));
    if (localList != null)
    {
      int i = -1 + localList.size();
      if (i >= 0)
      {
        ApplicationInfo localApplicationInfo = (ApplicationInfo)localList.get(i);
        com.avg.ui.general.c.b localb;
        if (!localHashSet.contains(Integer.valueOf(localApplicationInfo.uid)))
        {
          localHashSet.add(Integer.valueOf(localApplicationInfo.uid));
          localb = new com.avg.ui.general.c.b();
          localb.c = localApplicationInfo.packageName;
          localb.b = localApplicationInfo.sourceDir;
          if (!s.e())
            break label272;
        }
        label272: for (long[] arrayOfLong = s.a(localContext).a(3, localApplicationInfo.packageName); ; arrayOfLong = s.a(localContext).a(localApplicationInfo.uid))
        {
          if (arrayOfLong != null)
          {
            localb.h = arrayOfLong[0];
            localb.i = arrayOfLong[1];
          }
          if (((localb.h != -1L) || (localb.i != -1L)) && ((localb.h > 0L) || (localb.i > 0L)))
          {
            localb.a = ((String)paramPackageManager.getApplicationLabel(localApplicationInfo));
            localb.l = localApplicationInfo.uid;
            localArrayList.add(localb);
          }
          i--;
          break;
        }
      }
    }
    return localArrayList;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.e = s.b(this.ag);
  }

  public void a(Menu paramMenu)
  {
    paramMenu.clear();
    if ((this.ag.o()) && (j.a()))
      this.ag.a(paramMenu, 6, d.ab_btn_settings);
    super.a(paramMenu);
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    if (this.ag.o())
      switch (paramMenuItem.getItemId())
      {
      default:
      case 6:
      }
    while (true)
    {
      return true;
      this.ag.a(new a(), e.fragment_content, "DataPlanSettingsFragment");
      com.avg.toolkit.c.a.a(this.ag, "data_usage", "data_usage_settings", null, 0);
    }
  }

  public void r()
  {
    super.r();
    G();
    Intent localIntent = this.ag.getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      com.avg.toolkit.c.a.a(this.ag, "data_usage", "opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.y
 * JD-Core Version:    0.6.2
 */