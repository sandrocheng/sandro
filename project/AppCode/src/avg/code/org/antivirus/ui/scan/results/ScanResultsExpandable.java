package org.antivirus.ui.scan.results;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import org.antivirus.AVService;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.ScannerFilesResult;
import org.antivirus.core.scanners.ScannerPackagesResult;
import org.antivirus.core.scanners.ScannerSmsResult;
import org.antivirus.core.scanners.ac;
import org.antivirus.core.scanners.ad;
import org.antivirus.core.scanners.g;
import org.antivirus.tuneup.at;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.IhandleMenuItem;
import org.antivirus.ui.PopupMenuHoneycomb;
import org.antivirus.ui.Tools;

public class ScanResultsExpandable extends BaseToolActivity
  implements IhandleMenuItem
{
  public g a = null;
  String b;
  String c;
  String d;
  String e;
  AVService.LocalBinder f;
  private d g = null;
  private AlertDialog h;
  private boolean i;
  private ServiceConnection j = new k(this);

  private Drawable a(String paramString)
  {
    try
    {
      localDrawable = getPackageManager().getApplicationIcon(paramString);
      localDrawable.setBounds(0, localDrawable.getMinimumHeight(), 0, localDrawable.getMinimumWidth());
      return localDrawable;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        Drawable localDrawable = null;
    }
  }

  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      if (paramContext.getPackageManager().getPackageInfo(paramString, 4111) == null)
        Logger.error("The app: " + paramString + " is not installed");
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

  private boolean b(int paramInt)
  {
    if (paramInt == 0)
    {
      org.antivirus.ganalytics.a.a(this, "scan_results", "log", null);
      Dialog localDialog = new Dialog(this);
      localDialog.requestWindowFeature(3);
      localDialog.setContentView(2130903088);
      localDialog.setTitle(Strings.getString(2131296446));
      localDialog.setFeatureDrawableResource(3, 2130837690);
      ((TextView)localDialog.findViewById(2131230946)).setText(Strings.getString(2131296458));
      ((TextView)localDialog.findViewById(2131230947)).setText(this.b);
      ((TextView)localDialog.findViewById(2131230948)).setText(Strings.getString(2131296460));
      ((TextView)localDialog.findViewById(2131230949)).setText(this.c);
      ((TextView)localDialog.findViewById(2131230950)).setText(Strings.getString(2131296459));
      ((TextView)localDialog.findViewById(2131230951)).setText(this.d);
      ((TextView)localDialog.findViewById(2131230952)).setText(Strings.getString(2131296461));
      ((TextView)localDialog.findViewById(2131230953)).setText(this.e);
      ((TextView)localDialog.findViewById(2131230954)).setText("3.0.3-174757\n");
      Button localButton = (Button)localDialog.findViewById(2131230955);
      localButton.setText(2131296444);
      localButton.setOnClickListener(new m(this, localDialog));
      localDialog.show();
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void d()
  {
    if (this.f == null)
      Logger.error("Service is null");
    TextView localTextView1;
    TextView localTextView2;
    while (true)
    {
      return;
      if (this.g == null)
      {
        Logger.error(" mAdapter is null");
      }
      else
      {
        g localg = this.f.getScanResults(org.antivirus.core.scanners.c.a);
        if (localg != null)
        {
          localg.a = System.currentTimeMillis();
          this.a = localg;
        }
        if (this.a == null)
        {
          Logger.error("ScanResults is null");
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
          localBuilder.setTitle(Strings.getString(2131296594));
          localBuilder.setMessage(Strings.getString(2131296595));
          localBuilder.setPositiveButton(Strings.getString(2131296272), new n(this));
          localBuilder.setOnCancelListener(new o(this));
          AlertDialog localAlertDialog = localBuilder.create();
          localAlertDialog.setCanceledOnTouchOutside(false);
          localAlertDialog.show();
        }
        else
        {
          if (this.a.f != null)
          {
            this.b = Integer.toString(this.a.f.b);
            this.c = Integer.toString(this.a.f.c.size());
          }
          if (this.a.c != null)
          {
            this.d = Integer.toString(this.a.c.b);
            this.e = Integer.toString(this.a.c.c.size());
          }
          localTextView1 = (TextView)findViewById(2131230925);
          if (localTextView1 == null)
          {
            Logger.error("Can't get headerTop in Header View");
          }
          else
          {
            localTextView2 = (TextView)findViewById(2131230926);
            if (localTextView2 != null)
              break;
            Logger.error("Can't get headerBottom in Header View");
          }
        }
      }
    }
    String str9;
    if (this.a.a())
    {
      localTextView1.setTextColor(getResources().getColor(2131165240));
      str9 = Strings.getString(2131296448);
      localTextView2.setText(Strings.getString(2131296449));
      localTextView2.setVisibility(0);
    }
    a locala2;
    String str1;
    for (Object localObject = str9; ; localObject = str1)
    {
      localTextView1.setText((CharSequence)localObject);
      if (this.a.c == null)
        break label450;
      if (!this.a.c.a)
        break label503;
      locala2 = (a)d.b(i.a);
      if (locala2 != null)
        break label441;
      Logger.error("null AppsResultsData");
      break;
      localTextView1.setTextColor(getResources().getColor(2131165241));
      str1 = Strings.getString(2131296457);
      localTextView2.setVisibility(8);
    }
    label441: this.g.a(locala2);
    while (true)
      label450: if (this.a.d != null)
      {
        if (!this.a.d.a)
          break label699;
        q localq = (q)d.b(i.b);
        if (localq == null)
        {
          Logger.error("null SettingsResultsData");
          break;
          label503: Iterator localIterator = this.a.c.c.iterator();
          while (localIterator.hasNext())
          {
            String str8 = (String)localIterator.next();
            a locala1 = new a(str8, Tools.getAppName(this, str8));
            locala1.e = Tools.getPackageCategory(this.a, str8);
            locala1.b = a(str8);
            this.g.a(locala1);
          }
          continue;
        }
        this.g.a(localq);
      }
    while (true)
      if ((this.a.f != null) || (this.a.g != null))
      {
        if (((this.a.f != null) && (!this.a.f.a)) || ((this.a.g != null) && (!this.a.g.a)))
          break label838;
        b localb1 = (b)d.b(i.c);
        if (localb1 == null)
        {
          Logger.error("null ContentResultsData");
          break;
          label699: if (this.a.d.d())
          {
            String str7 = Strings.getString(2131296454);
            this.g.a(new q(str7, r.a));
          }
          if (this.a.d.c())
          {
            String str6 = Strings.getString(2131296455);
            this.g.a(new q(str6, r.b));
          }
          if (!this.a.d.b())
            continue;
          String str5 = Strings.getString(2131296292);
          this.g.a(new q(str5, r.c));
          continue;
        }
        this.g.a(localb1);
      }
    while (true)
    {
      onResume();
      break;
      label838: if (this.a.f != null)
      {
        ArrayList localArrayList = this.a.f.c;
        if (localArrayList != null)
          for (int m = 0; m < localArrayList.size(); m++)
          {
            String str4 = (String)localArrayList.get(m);
            b localb2 = new b(str4, c.a, str4, null);
            localb2.e = Tools.getFileCategory(this.a, str4);
            this.g.a(localb2);
          }
      }
      if ((this.a.g != null) && (this.a.g.b != null))
      {
        int k = this.a.g.b.size();
        if (1 == k)
        {
          String str3 = Integer.toString(k) + " " + Strings.getString(2131296288);
          this.g.a(new b(str3, c.b, "", this.a.g.b));
        }
        else if (k > 1)
        {
          String str2 = Integer.toString(k) + " " + Strings.getString(2131296289);
          this.g.a(new b(str2, c.b, "", this.a.g.b));
        }
      }
    }
  }

  protected final void a(View paramView)
  {
    PopupMenuHoneycomb localPopupMenuHoneycomb = new PopupMenuHoneycomb(this, paramView);
    addMenu(localPopupMenuHoneycomb);
    localPopupMenuHoneycomb.show();
  }

  public final void a_()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Strings.getString(2131296446);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new at(this, arrayOfString, (byte)0), 0, new l(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public ArrayList addMenu(Object paramObject)
  {
    if ((paramObject instanceof ContextMenu))
      ((ContextMenu)paramObject).add(0, 0, 0, Strings.getString(2131296446));
    while (true)
    {
      return null;
      if ((paramObject instanceof Menu))
        ((Menu)paramObject).add(0, 0, 0, Strings.getString(2131296446));
      else if ((paramObject instanceof PopupMenuHoneycomb))
        ((PopupMenuHoneycomb)paramObject).add(0, 0, 0, Strings.getString(2131296446));
    }
  }

  public final void c()
  {
    ScannerSmsResult localScannerSmsResult = new ScannerSmsResult();
    this.a.g.a(localScannerSmsResult);
    this.a.g.b();
    this.g.g();
    Intent localIntent = new Intent(this, AVService.class);
    localIntent.putExtra("__SAC", 25);
    localIntent.putExtra("ScannerClient", org.antivirus.core.scanners.c.a);
    localIntent.putExtra("__SAD", 8);
    localIntent.putExtra("ScannerResult", localScannerSmsResult);
    startService(localIntent);
    this.g.c();
  }

  public boolean handleMenuItem(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return handleMenuItem(paramMenuItem);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, AVService.class), this.j, 1);
    setContentView(2130903080);
    if (getIntent().getExtras() == null)
      Logger.error("null == extra");
    ExpandableListView localExpandableListView = (ExpandableListView)findViewById(2131230923);
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131230924);
    if (localLinearLayout1 == null);
    for (LinearLayout localLinearLayout2 = (LinearLayout)getLayoutInflater().inflate(2130903081, null); ; localLinearLayout2 = localLinearLayout1)
    {
      if (localLinearLayout2 == null)
        Logger.error("Can't create Header View");
      for (LinearLayout localLinearLayout3 = null; ; localLinearLayout3 = localLinearLayout2)
      {
        localExpandableListView.addHeaderView((LinearLayout)localLinearLayout3);
        this.g = new d(this, a(getApplicationContext()), new ArrayList(), new ArrayList());
        localExpandableListView.setAdapter(this.g);
        return;
        TextView localTextView1 = (TextView)localLinearLayout2.findViewById(2131230925);
        TextView localTextView2 = (TextView)localLinearLayout2.findViewById(2131230926);
        float f1 = localTextView1.getTextSize();
        localTextView1.setPadding((int)f1 / 2, (int)f1 / 2, (int)f1 / 2, 0);
        localTextView2.setPadding((int)f1 / 2, 0, (int)f1 / 2, (int)f1 / 2);
      }
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramContextMenu.clear();
    addMenu(paramContextMenu);
  }

  public void onDestroy()
  {
    if (this.a != null)
      this.a.a = 0L;
    if (this.i)
    {
      unbindService(this.j);
      this.i = false;
    }
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return handleMenuItem(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (this.g == null)
      Logger.errorBadAgrument();
    while (true)
    {
      return;
      this.g.d();
      ExpandableListView localExpandableListView = (ExpandableListView)findViewById(2131230923);
      if (localExpandableListView == null)
      {
        Logger.errorBadAgrument();
      }
      else
      {
        d.a(localExpandableListView);
        if (paramIntent.getExtras() == null)
          Logger.errorBadAgrument();
        d();
        super.onNewIntent(paramIntent);
      }
    }
  }

  protected void onPause()
  {
    if (this.h != null)
    {
      this.h.dismiss();
      this.h = null;
    }
    if (this.a != null)
      this.a.b(this);
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    addMenu(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  public void onResume()
  {
    super.onResume();
    Intent localIntent1 = getIntent();
    if (localIntent1.getIntExtra("from_notification", -1) == 1)
    {
      org.antivirus.ganalytics.a.a(this, "scan_results", "opened_from_notification", null);
      localIntent1.removeExtra("from_notification");
    }
    if ((this.g == null) || (this.a == null));
    i locali;
    do
    {
      return;
      locali = this.g.a();
    }
    while (locali == null);
    switch (p.b[locali.ordinal()])
    {
    default:
      Logger.errorBadAgrument();
    case 1:
    case 2:
    }
    r localr;
    do
    {
      while (true)
      {
        this.g.g();
        break;
        String str = this.g.b().toString();
        if ((this.g.e()) && (str != null))
        {
          if (!a(getApplicationContext(), str))
          {
            this.g.c();
            this.a.c.a(str);
            Intent localIntent2 = new Intent();
            localIntent2.putExtra("firstScan", false);
            localIntent2.putExtra("threatFound", this.a.a());
            localIntent2.putExtra("threatCount", String.valueOf(this.a.b()));
            localIntent2.putExtra("ScannerClient", org.antivirus.core.scanners.c.a);
            org.antivirus.widget.a.k.a(this).a(localIntent2.getExtras());
          }
          this.g.f();
        }
      }
      localr = (r)this.g.b();
    }
    while ((!this.g.e()) || (localr == null));
    boolean bool;
    switch (p.a[localr.ordinal()])
    {
    default:
      bool = false;
    case 1:
    case 2:
    }
    while (true)
    {
      if (!bool)
        this.g.c();
      this.g.f();
      break;
      new ac(a(getApplicationContext()), null, 4);
      bool = ac.c(this);
      this.a.d.c(bool);
      continue;
      new ac(a(getApplicationContext()), null, 2);
      bool = ac.b(this);
      this.a.d.b(bool);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.results.ScanResultsExpandable
 * JD-Core Version:    0.6.2
 */