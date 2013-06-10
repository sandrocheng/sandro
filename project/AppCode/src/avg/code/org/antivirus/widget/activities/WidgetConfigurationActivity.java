package org.antivirus.widget.activities;

import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.b.g;
import org.antivirus.ui.main.ActivationActivity;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.k;

public class WidgetConfigurationActivity extends Activity
{
  private static SparseIntArray i;
  public ServiceConnection a = new a(this);
  private int b;
  private int c = -1;
  private boolean d = false;
  private k e;
  private List f = new ArrayList();
  private boolean g;
  private org.antivirus.core.b.a h;

  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    i = localSparseIntArray;
    localSparseIntArray.put(2131230988, 2130837836);
    i.put(2131230989, 2130837838);
    i.put(2131230990, 2130837838);
    i.put(2131230991, 2130837839);
  }

  protected final void a()
  {
    k localk = this.e;
    if ((this.h != null) && (this.h.a()));
    for (boolean bool = true; ; bool = false)
    {
      localk.b(Boolean.valueOf(bool), true);
      Intent localIntent = new Intent();
      localIntent.putExtra("appWidgetId", this.b);
      setResult(-1, localIntent);
      this.d = true;
      finish();
      return;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        finish();
    while (true)
    {
      return;
      org.antivirus.ganalytics.a.a(this, "widget", "widget_settings", null);
      continue;
      if ((2 == paramInt1) && (-1 == paramInt2))
        finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.b = localBundle.getInt("appWidgetId", 0);
      this.d = localBundle.getBoolean("ExistingWidget", false);
      this.e = k.a(this);
      setContentView(2130903097);
      this.f.add(0, findViewById(2131230988));
      this.f.add(1, findViewById(2131230989));
      this.f.add(2, findViewById(2131230990));
      this.f.add(3, findViewById(2131230991));
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext())
        ((View)localIterator.next()).setOnClickListener(new c(this));
    }
    Logger.error("Widget Configuration Activity is launched without widget ID. Quit");
    finish();
    while (true)
    {
      return;
      findViewById(2131230993).setOnClickListener(new b(this));
      ListView localListView = (ListView)findViewById(2131230992);
      localListView.setAdapter(new e(this));
      localListView.setOnItemClickListener(new f(this));
      Integer[] arrayOfInteger = this.e.a();
      if (arrayOfInteger.length != 0)
        for (int j = 0; j < this.f.size(); j++)
        {
          int k = arrayOfInteger[j].intValue();
          TextView localTextView = (TextView)this.f.get(j);
          i locali = i.a(k);
          localTextView.setText(getString(locali.c()));
          localTextView.setCompoundDrawablesWithIntrinsicBounds(0, locali.b(), 0, 0);
          this.e.a(this.f.indexOf(localTextView), k);
        }
      Intent localIntent = new Intent();
      localIntent.putExtra("appWidgetId", this.b);
      setResult(0, localIntent);
      bindService(new Intent(this, AVService.class), this.a, 1);
      if (AVSettings.shouldShowActivationScreen())
      {
        try
        {
          startActivityForResult(new Intent(this, ActivationActivity.class), 1);
        }
        catch (Exception localException)
        {
          Logger.log(localException);
        }
      }
      else
      {
        g localg = new g(this);
        if (!localg.a())
        {
          localg.b();
          org.antivirus.ganalytics.a.a(this, "widget", "widget_settings", null);
        }
      }
    }
  }

  protected void onDestroy()
  {
    if (!this.d)
      new AppWidgetHost(this, 1).deleteAppWidgetId(this.b);
    if (this.g)
    {
      unbindService(this.a);
      this.g = false;
    }
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.activities.WidgetConfigurationActivity
 * JD-Core Version:    0.6.2
 */