package com.avg.widget.activities;

import android.app.Activity;
import android.appwidget.AppWidgetHost;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.avg.toolkit.i;
import com.avg.widget.d;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class a extends Activity
{
  private static SparseIntArray g = new SparseIntArray();
  private int a;
  private int b = -1;
  private boolean c = false;
  private List d = new ArrayList();
  private int[] e;
  private Parcelable[] f;

  static
  {
    g.put(d.configItem0, com.avg.widget.c.widget_config_left);
    g.put(d.configItem1, com.avg.widget.c.widget_config_middle);
    g.put(d.configItem2, com.avg.widget.c.widget_config_middle);
    g.put(d.configItem3, com.avg.widget.c.widget_config_right);
  }

  private WidgetPlugin a(int paramInt)
  {
    Parcelable[] arrayOfParcelable = this.f;
    int i = arrayOfParcelable.length;
    for (int j = 0; j < i; j++)
    {
      WidgetPlugin localWidgetPlugin = (WidgetPlugin)arrayOfParcelable[j];
      if (localWidgetPlugin.j() == paramInt)
        return localWidgetPlugin;
    }
    throw new IllegalArgumentException("Not supported plugin ID: " + paramInt);
  }

  private void a(int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)this.d.get(paramInt1);
    WidgetPlugin localWidgetPlugin = a(paramInt2);
    localTextView.setText(getString(localWidgetPlugin.h()));
    localTextView.setCompoundDrawablesWithIntrinsicBounds(0, localWidgetPlugin.i(), 0, 0);
    Bundle localBundle = new Bundle();
    localBundle.putInt("widget_view_button_id", this.d.indexOf(localTextView));
    localBundle.putInt("widget_config_resource_item", paramInt2);
    i.a(this, 25000, 10, localBundle);
  }

  private void a(View paramView)
  {
    if (this.b == -1)
    {
      d();
      paramView.setBackgroundResource(g.get(paramView.getId()));
      this.b = paramView.getId();
    }
    while (true)
    {
      return;
      if (this.b == paramView.getId())
      {
        c();
        findViewById(paramView.getId()).setBackgroundColor(0);
        this.b = -1;
      }
      else
      {
        findViewById(this.b).setBackgroundColor(0);
        findViewById(paramView.getId()).setBackgroundResource(g.get(paramView.getId()));
        this.b = paramView.getId();
      }
    }
  }

  private void b()
  {
    if (this.e.length == 0);
    while (true)
    {
      return;
      for (int i = 0; i < this.d.size(); i++)
        a(i, this.e[i]);
    }
  }

  private void c()
  {
    findViewById(d.configurationList).setVisibility(8);
  }

  private void d()
  {
    findViewById(d.configurationList).setVisibility(0);
  }

  protected void a()
  {
    i.a(this, 25000, 11, null);
    this.c = true;
    finish();
  }

  protected abstract void a(com.avg.toolkit.e.a parama);

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.a = localBundle.getInt("appWidgetId", 0);
      this.c = localBundle.getBoolean("ExistingWidget", false);
      this.e = localBundle.getIntArray("curr_widget_config");
      this.f = localBundle.getParcelableArray("available_plugins");
      setContentView(com.avg.widget.e.widget_configuration);
      this.d.add(0, findViewById(d.configItem0));
      this.d.add(1, findViewById(d.configItem1));
      this.d.add(2, findViewById(d.configItem2));
      this.d.add(3, findViewById(d.configItem3));
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
        ((View)localIterator.next()).setOnClickListener(new c(this));
    }
    com.avg.toolkit.f.a.a("Widget Configuration Activity is launched without widget ID. Quit");
    finish();
    while (true)
    {
      return;
      findViewById(d.saveButton).setOnClickListener(new b(this));
      ListView localListView = (ListView)findViewById(d.configurationList);
      localListView.setAdapter(new e(this));
      localListView.setOnItemClickListener(new f(this));
      b();
      Intent localIntent = new Intent();
      localIntent.putExtra("appWidgetId", this.a);
      setResult(0, localIntent);
      a(com.avg.toolkit.e.e.a());
    }
  }

  protected void onDestroy()
  {
    if (!this.c)
      new AppWidgetHost(this, 1).deleteAppWidgetId(this.a);
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.activities.a
 * JD-Core Version:    0.6.2
 */