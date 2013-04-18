package com.keniu.security.process;

import android.app.ListActivity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jxphone.mosecurity.d.m;
import com.keniu.security.a;
import com.keniu.security.d.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ProcessWhiteSettingActivity extends ListActivity
{
  private static final int h = 1;
  List a = new ArrayList();
  ListView b;
  ProgressBar c;
  Button d;
  PackageManager e;
  a f;
  Handler g = new w(this);

  private void a()
  {
    m localm = new m();
    Iterator localIterator = this.e.getInstalledPackages(4160).iterator();
    while (localIterator.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      e locale = new e();
      String str = localPackageInfo.packageName;
      if (!str.equalsIgnoreCase(getPackageName()))
      {
        ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
        locale.a(str);
        if (localApplicationInfo.labelRes != 0)
          locale.b(localApplicationInfo.loadLabel(this.e).toString());
        while (true)
        {
          if (localm.e(str))
            locale.a(true);
          this.a.add(locale);
          break;
          locale.b(localPackageInfo.packageName);
        }
      }
    }
    this.g.sendEmptyMessage(1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903257);
    ((TextView)findViewById(2131230727)).setText("进程白名单");
    this.c = ((ProgressBar)findViewById(2131231518));
    this.d = ((Button)findViewById(2131231517));
    this.d.setOnClickListener(new x(this));
    this.b = getListView();
    this.e = getPackageManager();
    this.f = a.a(this);
    new v(this).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ProcessWhiteSettingActivity
 * JD-Core Version:    0.6.2
 */