package com.antivirus.ui.scan.results;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.core.scanners.ScannerSmsResult;
import com.antivirus.core.scanners.ad;
import com.antivirus.core.scanners.af;
import com.antivirus.core.scanners.ag;
import com.antivirus.core.scanners.h;
import com.antivirus.g;
import com.antivirus.ui.callmessagefilter.CallMessageFilterActivity;
import com.antivirus.ui.callmessagefilter.fragment.ah;
import com.antivirus.ui.main.HandheldMainActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.ui.tablet.e;
import com.antivirus.widget.protection.ProtectionWidgetPlugin;
import com.avg.ui.general.c.f;
import com.avg.ui.general.q;
import java.util.ArrayList;
import java.util.Iterator;

public class m extends com.antivirus.ui.a.a.a
{
  public h a = null;
  private d b = null;
  private AlertDialog c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private View i;

  private View H()
  {
    LinearLayout localLinearLayout1 = (LinearLayout)this.i.findViewById(2131230990);
    if (localLinearLayout1 == null);
    for (LinearLayout localLinearLayout2 = (LinearLayout)this.ag.getLayoutInflater().inflate(2130903095, null); ; localLinearLayout2 = localLinearLayout1)
    {
      if (localLinearLayout2 == null)
        com.avg.toolkit.f.a.a("Can't create Header View");
      for (Object localObject = null; ; localObject = localLinearLayout2)
      {
        return localObject;
        TextView localTextView1 = (TextView)localLinearLayout2.findViewById(2131230991);
        TextView localTextView2 = (TextView)localLinearLayout2.findViewById(2131230992);
        float f1 = localTextView1.getTextSize();
        localTextView1.setPadding((int)f1 / 2, (int)f1 / 2, (int)f1 / 2, 0);
        localTextView2.setPadding((int)f1 / 2, 0, (int)f1 / 2, (int)f1 / 2);
      }
    }
  }

  private void I()
  {
    if (this.a.f != null)
    {
      this.d = Integer.toString(this.a.f.b);
      this.e = Integer.toString(this.a.f.c.size());
    }
    if (this.a.c != null)
    {
      this.f = Integer.toString(this.a.c.b);
      this.g = Integer.toString(this.a.c.c.size());
    }
    if (this.a.g != null)
      this.h = String.valueOf(this.a.g.b.size());
  }

  private Drawable a(String paramString)
  {
    try
    {
      localDrawable = this.ag.getPackageManager().getApplicationIcon(paramString);
      localDrawable.setBounds(0, localDrawable.getMinimumHeight(), 0, localDrawable.getMinimumWidth());
      return localDrawable;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        Drawable localDrawable = null;
    }
  }

  public static boolean b(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      if (paramContext.getPackageManager().getPackageInfo(paramString, 4111) == null)
        com.avg.toolkit.f.a.a("The app: " + paramString + " is not installed");
      while (true)
      {
        return bool;
        bool = true;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        bool = false;
    }
  }

  public void F()
  {
    G();
  }

  public void G()
  {
    com.antivirus.a locala;
    if (!this.ag.o())
    {
      locala = ((ScanResultsActivity)this.ag).n;
      if (locala != null)
        break label45;
      com.avg.toolkit.f.a.a("Service is null");
    }
    label45: label316: label325: label377: b localb1;
    while (true)
    {
      return;
      locala = ((DualPaneActivity)this.ag).o;
      break;
      if (this.b == null)
      {
        com.avg.toolkit.f.a.a(" mAdapter is null");
      }
      else
      {
        h localh = locala.a(com.antivirus.core.scanners.c.a);
        if (localh != null)
        {
          localh.a();
          this.a = localh;
        }
        if (this.a == null)
        {
          com.avg.toolkit.f.a.a("ScanResults is null");
          a(this.ag);
        }
        else
        {
          I();
          TextView localTextView1 = (TextView)this.i.findViewById(2131230991);
          if (localTextView1 == null)
          {
            com.avg.toolkit.f.a.a("Can't get headerTop in Header View");
          }
          else
          {
            TextView localTextView2 = (TextView)this.i.findViewById(2131230992);
            if (localTextView2 == null)
            {
              com.avg.toolkit.f.a.a("Can't get headerBottom in Header View");
            }
            else
            {
              String str10;
              if (this.a.d())
              {
                localTextView1.setTextColor(i().getColor(2131165241));
                str10 = com.antivirus.m.a(this.ag, 2131296647);
                localTextView2.setText(com.antivirus.m.a(this.ag, 2131296648));
                localTextView2.setVisibility(0);
              }
              a locala3;
              String str1;
              for (Object localObject = str10; ; localObject = str1)
              {
                localTextView1.setText((CharSequence)localObject);
                if (this.a.c == null)
                  break label325;
                if (!this.a.c.a)
                  break label377;
                locala3 = (a)this.b.b(i.a);
                if (locala3 != null)
                  break label316;
                com.avg.toolkit.f.a.a("null AppsResultsData");
                break;
                localTextView1.setTextColor(i().getColor(2131165242));
                str1 = com.antivirus.m.a(this.ag, 2131296658);
                localTextView2.setVisibility(8);
              }
              this.b.a(locala3);
              while (true)
                if (this.a.d != null)
                {
                  if (!this.a.d.a)
                    break label664;
                  r localr = (r)this.b.b(i.b);
                  if (localr == null)
                  {
                    com.avg.toolkit.f.a.a("null SettingsResultsData");
                    break;
                    Iterator localIterator = this.a.c.c.iterator();
                    while (localIterator.hasNext())
                    {
                      String str8 = (String)localIterator.next();
                      try
                      {
                        String str9 = ScannerPackagesResult.a(this.ag, str8);
                        a locala2 = new a(this.ag, str8, str9);
                        locala2.a(this.a.c.a(g.a(this.ag), str8));
                        locala2.a(a(str8));
                        this.b.a(locala2);
                      }
                      catch (PackageManager.NameNotFoundException localNameNotFoundException)
                      {
                        com.avg.toolkit.f.a.a(localNameNotFoundException);
                        a locala1 = new a(this.ag, str8, str8);
                        locala1.a(this.a.c.a(g.a(this.ag), str8));
                        locala1.a(a(str8));
                        this.b.a(locala1);
                      }
                    }
                    continue;
                  }
                  this.b.a(localr);
                }
              if ((this.a.f == null) && (this.a.g == null))
                break label844;
              if (((this.a.f != null) && (!this.a.f.a)) || ((this.a.g != null) && (!this.a.g.a)))
                break label851;
              localb1 = (b)this.b.b(i.c);
              if (localb1 != null)
                break label835;
              com.avg.toolkit.f.a.a("null ContentResultsData");
            }
          }
        }
      }
    }
    label664: if (this.a.d.d())
      if (com.avg.ui.general.o.a != q.c)
        break label820;
    label820: for (String str7 = com.antivirus.m.a(this.ag, 2131296654); ; str7 = com.antivirus.m.a(this.ag, 2131296655))
    {
      this.b.a(new r(this.ag, str7, s.a));
      if (this.a.d.c())
      {
        String str6 = com.antivirus.m.a(this.ag, 2131296656);
        this.b.a(new r(this.ag, str6, s.b));
      }
      if (!this.a.d.b())
        break;
      String str5 = com.antivirus.m.a(this.ag, 2131296502);
      this.b.a(new r(this.ag, str5, s.c));
      break;
    }
    label835: this.b.a(localb1);
    while (true)
    {
      label844: r();
      break;
      label851: if (this.a.f != null)
      {
        ArrayList localArrayList = this.a.f.c;
        if (localArrayList != null)
          for (int k = 0; k < localArrayList.size(); k++)
          {
            String str4 = (String)localArrayList.get(k);
            b localb2 = new b(this.ag, str4, c.a, str4, null);
            localb2.a(this.a.f.a(g.a(this.ag), str4));
            this.b.a(localb2);
          }
      }
      if ((this.a.g != null) && (this.a.g.b != null))
      {
        int j = this.a.g.b.size();
        if (1 == j)
        {
          String str3 = Integer.toString(j) + " " + com.antivirus.m.a(this.ag, 2131296494);
          this.b.a(new b(this.ag, str3, c.b, "", this.a.g.b));
        }
        else if (j > 1)
        {
          String str2 = Integer.toString(j) + " " + com.antivirus.m.a(this.ag, 2131296495);
          this.b.a(new b(this.ag, str2, c.b, "", this.a.g.b));
        }
      }
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
      localView = null;
    while (true)
    {
      return localView;
      this.i = paramLayoutInflater.inflate(2130903094, paramViewGroup, false);
      ExpandableListView localExpandableListView = (ExpandableListView)this.i.findViewById(2131230989);
      localExpandableListView.addHeaderView((LinearLayout)H());
      localExpandableListView.setAdapter(this.b);
      G();
      try
      {
        d(true);
        localView = this.i;
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof ContextMenu))
    {
      ((ContextMenu)paramObject).add(0, 15, 0, com.antivirus.m.a(this.ag, 2131296644));
      ((ContextMenu)paramObject).add(0, 16, 0, com.antivirus.m.a(this.ag, 2131296645));
    }
    while (true)
    {
      return null;
      if ((paramObject instanceof Menu))
      {
        ((Menu)paramObject).add(0, 15, 0, com.antivirus.m.a(this.ag, 2131296644));
        ((Menu)paramObject).add(0, 16, 0, com.antivirus.m.a(this.ag, 2131296645));
      }
      else if ((paramObject instanceof f))
      {
        ((f)paramObject).a(0, 15, 0, com.antivirus.m.a(this.ag, 2131296644));
        ((f)paramObject).a(0, 16, 0, com.antivirus.m.a(this.ag, 2131296645));
      }
    }
  }

  public void a()
  {
    Intent localIntent = new Intent(h(), CallMessageFilterActivity.class);
    localIntent.putExtra("default_tab_name", com.antivirus.ui.callmessagefilter.fragment.n.b);
    localIntent.putExtra("default_filter_option", ah.b.a());
    localIntent.addFlags(268435456);
    h().startActivity(localIntent);
    ad.a(true);
    com.avg.toolkit.c.a.a(this.ag, "category_call_message_blocker", "action_call_message_blocker_scan_results", null, 0);
  }

  void a(Context paramContext)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(com.antivirus.m.a(this.ag, 2131296693));
    localBuilder.setMessage(com.antivirus.m.a(this.ag, 2131296694));
    localBuilder.setPositiveButton(com.antivirus.m.a(this.ag, 2131296481), new n(this, paramContext));
    localBuilder.setOnCancelListener(new o(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.ag.getIntent().getExtras() == null)
      com.avg.toolkit.f.a.a("null == extra");
    this.b = new d(this, this.af, new ArrayList(), new ArrayList());
  }

  public void a(Menu paramMenu)
  {
    if (this.ag.o())
    {
      paramMenu.clear();
      a(paramMenu);
    }
    super.a(paramMenu);
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    return b(paramMenuItem.getItemId());
  }

  public void b(Intent paramIntent)
  {
    if (this.b == null)
      com.avg.toolkit.f.a.a();
    while (true)
    {
      return;
      this.b.d();
      ExpandableListView localExpandableListView = (ExpandableListView)this.i.findViewById(2131230989);
      if (localExpandableListView == null)
      {
        com.avg.toolkit.f.a.a();
      }
      else
      {
        this.b.a(localExpandableListView);
        if (paramIntent.getExtras() == null)
          com.avg.toolkit.f.a.a();
        G();
      }
    }
  }

  public boolean b(int paramInt)
  {
    Dialog localDialog;
    int j;
    TextView localTextView;
    if (15 == paramInt)
    {
      com.avg.toolkit.c.a.a(this.ag, "category_scan_results", "action_log", null, 0);
      localDialog = new Dialog(this.ag);
      localDialog.requestWindowFeature(3);
      localDialog.setContentView(2130903101);
      localDialog.setTitle(com.antivirus.m.a(this.ag, 2131296644));
      localDialog.setFeatureDrawableResource(3, 2130837735);
      ((TextView)localDialog.findViewById(2131231011)).setText(com.antivirus.m.a(this.ag, 2131296659));
      ((TextView)localDialog.findViewById(2131231012)).setText(this.d);
      ((TextView)localDialog.findViewById(2131231013)).setText(com.antivirus.m.a(this.ag, 2131296661));
      ((TextView)localDialog.findViewById(2131231014)).setText(this.e);
      ((TextView)localDialog.findViewById(2131231015)).setText(com.antivirus.m.a(this.ag, 2131296660));
      ((TextView)localDialog.findViewById(2131231016)).setText(this.f);
      ((TextView)localDialog.findViewById(2131231017)).setText(com.antivirus.m.a(this.ag, 2131296662));
      ((TextView)localDialog.findViewById(2131231018)).setText(this.g);
      ((TextView)localDialog.findViewById(2131231020)).setText(com.antivirus.m.a(this.ag, 2131296663));
      ((TextView)localDialog.findViewById(2131231021)).setText(this.h);
      if (com.avg.ui.general.c.i.b(this.ag))
      {
        j = 8;
        localDialog.findViewById(2131231019).setVisibility(j);
        localTextView = (TextView)localDialog.findViewById(2131231022);
      }
    }
    while (true)
    {
      try
      {
        PackageInfo localPackageInfo2 = this.ag.getPackageManager().getPackageInfo(this.ag.getPackageName(), 0);
        localPackageInfo1 = localPackageInfo2;
        localTextView.setText(localPackageInfo1.versionName + "-" + localPackageInfo1.versionCode + "\n");
        Button localButton = (Button)localDialog.findViewById(2131231023);
        localButton.setText(com.antivirus.m.a(this.ag, 2131296642));
        localButton.setOnClickListener(new p(this, localDialog));
        localDialog.show();
        bool = true;
        return bool;
        j = 0;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        PackageInfo localPackageInfo1 = null;
        continue;
      }
      boolean bool = false;
      if (16 == paramInt)
      {
        if (this.a != null)
          this.a.b();
        if (this.ag.o())
        {
          ((DualPaneActivity)this.ag).p = true;
          ((DualPaneActivity)this.ag).i();
          ((DualPaneActivity)this.ag).a(e.d);
          bool = false;
        }
        else
        {
          Intent localIntent = new Intent(this.ag, HandheldMainActivity.class);
          localIntent.putExtra("avmsStartScan", true);
          localIntent.setFlags(872415232);
          a(localIntent);
          bool = false;
        }
      }
    }
  }

  public void e()
  {
    super.e();
    a(this.i);
    System.gc();
  }

  public void r()
  {
    super.r();
    Intent localIntent = this.ag.getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      com.avg.toolkit.c.a.a(this.ag, "category_scan_results", "action_opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
    if ((this.b == null) || (this.a == null));
    while (true)
    {
      return;
      i locali = this.b.a();
      if (locali != null)
        switch (q.b[locali.ordinal()])
        {
        default:
          com.avg.toolkit.f.a.a();
          break;
        case 1:
          String str = this.b.b().toString();
          if ((this.b.e()) && (str != null))
          {
            if (!b(this.ag.getApplicationContext(), str))
            {
              this.b.c();
              this.a.c.a(str);
            }
            this.b.a(false);
          }
          break;
        case 2:
          s locals = (s)this.b.b();
          if ((this.b.e()) && (locals != null))
          {
            boolean bool;
            switch (q.a[locals.ordinal()])
            {
            default:
              bool = false;
            case 1:
            case 2:
            }
            while (true)
            {
              if (!bool)
                this.b.c();
              this.b.a(false);
              break;
              bool = new af(this.af, null, 4).b(this.ag);
              this.a.d.c(bool);
              continue;
              bool = new af(this.af, null, 2).a(this.ag);
              this.a.d.b(bool);
            }
          }
          break;
        case 3:
          this.b.f();
        }
    }
  }

  public void s()
  {
    if (this.c != null)
    {
      this.c.dismiss();
      this.c = null;
    }
    if (this.a != null)
    {
      this.a.b(this.ag);
      if ((this.a.e() == 0) && (com.avg.ui.general.o.c()))
        ((DualPaneActivity)this.ag).a(e.b);
    }
    AVService.a(this.ag, 25000, 8, ProtectionWidgetPlugin.k());
    super.s();
  }

  public void t()
  {
    if (this.a != null)
      this.a.b();
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.m
 * JD-Core Version:    0.6.2
 */