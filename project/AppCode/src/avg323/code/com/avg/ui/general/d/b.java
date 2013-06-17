package com.avg.ui.general.d;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.Toast;
import com.avg.ui.general.n;
import com.avg.ui.general.o;
import java.util.ArrayList;

public class b extends com.avg.ui.general.fragments.a
  implements AdapterView.OnItemClickListener
{
  private boolean Y = true;
  private BroadcastReceiver Z = new c(this);
  private View a = null;
  private ListView b = null;
  private g c;
  private Runnable d = null;
  private Handler e;
  private AlertDialog f = null;
  private ProgressDialog g = null;
  private IntentFilter h = new IntentFilter("inAppIntentFilterScreen");
  private com.avg.toolkit.e.a i = null;

  private void H()
  {
    this.c = new g(this, this.ag, a(this.a.getContext()), this.ag);
    this.b = ((ListView)this.a.findViewById(com.avg.ui.general.d.list));
    this.b.setOnItemClickListener(this);
    this.b.setAdapter(this.c);
  }

  private void I()
  {
    if ((this.e != null) && (this.d != null))
      this.e.removeCallbacks(this.d);
    try
    {
      if (this.Z != null)
        this.ag.unregisterReceiver(this.Z);
      label43: return;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }

  private void J()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_title));
    localBuilder.setIcon(n.b);
    localBuilder.setMessage(this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_message));
    localBuilder.setPositiveButton(this.ag.getString(com.avg.ui.general.g.ok), new f(this));
    this.f = localBuilder.create();
    this.f.setCanceledOnTouchOutside(false);
    this.f.show();
  }

  private String a(String paramString)
  {
    String str;
    if (com.avg.toolkit.e.e.a() != null)
    {
      str = new com.avg.toolkit.UID.a(this.ag).a();
      if (str == null)
        break label71;
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = str;
      arrayOfObject[2] = Integer.valueOf(com.avg.toolkit.e.e.a().o);
      arrayOfObject[3] = Integer.valueOf(com.avg.toolkit.e.e.a().p);
      paramString = String.format("%s?device_sn=%s&varCode=%s&fs=%s", arrayOfObject);
      return paramString;
      label71: str = "";
    }
  }

  private ArrayList a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      PackageInfo localPackageInfo2 = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      localArrayList.add(new com.avg.ui.general.b.c(this.ag.getString(com.avg.ui.general.g.title_help_preference) + " - " + localPackageInfo1.versionName + "." + Integer.toString(localPackageInfo1.versionCode), this.ag.getString(com.avg.ui.general.g.summary_intent_preference), com.avg.ui.general.c.online_help, 0));
      localArrayList.add(new com.avg.ui.general.b.c(this.ag.getString(com.avg.ui.general.g.tos), this.ag.getString(com.avg.ui.general.g.tos_summary), com.avg.ui.general.c.tos, 1));
      localArrayList.add(new com.avg.ui.general.b.c(this.ag.getString(com.avg.ui.general.g.avg_title), this.ag.getString(com.avg.ui.general.g.avg_summary), com.avg.ui.general.c.avg_icon_list, 2));
      localArrayList.add(new com.avg.ui.general.b.c(this.ag.getString(com.avg.ui.general.g.ias_help_contact_header), this.ag.getString(com.avg.ui.general.g.ias_help_contact_body), com.avg.ui.general.c.help_support_email, 3));
      return localArrayList;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        PackageInfo localPackageInfo1 = null;
      }
    }
  }

  public void F()
  {
    this.ag.registerReceiver(this.Z, this.h);
    G();
    this.g = ProgressDialog.show(this.ag, "", this.ag.getString(com.avg.ui.general.g.ias_progress_dialog_title), false, true, new d(this));
    this.g.setCanceledOnTouchOutside(false);
    if (this.e == null)
      this.e = new Handler();
    if (this.d == null)
      this.d = new e(this);
    this.e.postDelayed(this.d, 15000L);
  }

  protected void G()
  {
    h.e(this.ag);
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(com.avg.ui.general.e.listview_fragment, paramViewGroup, false);
    H();
    return this.a;
  }

  public void a()
  {
    this.b.performItemClick(null, 0, 0L);
  }

  public void a(Bundle paramBundle)
  {
    this.i = this.ag.s();
    super.a(paramBundle);
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool = com.avg.toolkit.b.f.a(this.ag);
    this.c.a(paramInt);
    this.c.notifyDataSetChanged();
    switch ((int)paramLong)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      if (!bool)
      {
        Toast.makeText(this.ag, this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_message), 1).show();
      }
      else
      {
        if (o.c())
          this.ag.a(0);
        while (true)
        {
          com.avg.toolkit.c.a.a(this.ag, "help", "online_help", null, 0);
          break;
          Bundle localBundle2 = new Bundle();
          localBundle2.putString("__SAD", a("/help.html"));
          com.avg.toolkit.f.a(this.ag, 7000, 7002, localBundle2);
        }
        if (!bool)
        {
          Toast.makeText(this.ag, this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_message), 1).show();
        }
        else
        {
          if (o.c())
            this.ag.a(1);
          while (this.i == null)
          {
            com.avg.toolkit.c.a.a(this.ag, "help", "terms_of_service", null, 0);
            break;
          }
          Bundle localBundle1 = new Bundle();
          if (this.i.a());
          for (String str = a("/tospro.html"); ; str = a("/tos.html"))
          {
            localBundle1.putString("__SAD", str);
            com.avg.toolkit.f.a(this.ag, 7000, 7002, localBundle1);
            break;
          }
          if (!bool)
          {
            Toast.makeText(this.ag, this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_message), 1).show();
          }
          else
          {
            if (o.c())
              this.ag.a(2);
            while (true)
            {
              com.avg.toolkit.c.a.a(this.ag, "help", "avg", null, 0);
              break;
              Intent localIntent = new Intent("android.intent.action.VIEW");
              localIntent.setData(Uri.parse("http://www.avg.com"));
              a(localIntent);
            }
            if (bool)
              break;
            Toast.makeText(this.ag, this.ag.getString(com.avg.ui.general.g.ias_alert_dialog_message), 1).show();
          }
        }
      }
    }
    if (o.c())
      this.ag.a(3);
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "help", "contact_us", null, 0);
      break;
      F();
    }
  }

  public void r()
  {
    if ((this.Y) && (o.c()))
    {
      a();
      this.Y = false;
    }
    super.r();
  }

  public void t()
  {
    if (this.f != null)
      this.f.dismiss();
    if (this.g != null)
      this.g.dismiss();
    I();
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.d.b
 * JD-Core Version:    0.6.2
 */