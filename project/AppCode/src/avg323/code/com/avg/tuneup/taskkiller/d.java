package com.avg.tuneup.taskkiller;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.avg.a.g;
import java.util.ArrayList;
import java.util.Iterator;

public class d extends com.avg.tuneup.h
{
  protected static int a = 2;
  protected static String b = "RAM: %.2fMB CPU: %s \n%s";
  protected boolean c = false;
  private LayoutInflater d;
  private View e;
  private o f;
  private boolean g;
  private final Object h = new Object();
  private ArrayList i = new ArrayList();

  private void I()
  {
    if (this.ag.o())
    {
      this.ag.d(g());
      this.ag.a(new d(), com.avg.a.e.fragment_content);
    }
    while (true)
    {
      return;
      a(new Intent(this.ag, this.ag.getClass()));
      this.ag.finish();
    }
  }

  private void a(View paramView, LayoutInflater paramLayoutInflater, boolean paramBoolean)
  {
    LinearLayout localLinearLayout = (LinearLayout)((LinearLayout)paramView.findViewById(com.avg.a.e.installed_apps)).findViewById(com.avg.a.e.apps);
    Button localButton = (Button)paramView.findViewById(com.avg.a.e.btn_close_all);
    localButton.setOnClickListener(new e(this, localButton, localLinearLayout, paramView));
    new Thread(new h(this, paramBoolean, localLinearLayout, paramView, paramLayoutInflater)).start();
  }

  private void a(LinearLayout paramLinearLayout, View paramView, ActivityManager paramActivityManager)
  {
    this.ag.runOnUiThread(new m(this, paramLinearLayout, paramView));
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext())
      paramActivityManager.restartPackage(((b)localIterator.next()).e);
  }

  protected int F()
  {
    return 0;
  }

  protected int G()
  {
    return 0;
  }

  protected boolean H()
  {
    return true;
  }

  protected int a()
  {
    return 0;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
    {
      localView = null;
      return localView;
    }
    this.d = paramLayoutInflater;
    this.e = paramLayoutInflater.inflate(com.avg.a.f.task_killer, paramViewGroup, false);
    this.e.findViewById(com.avg.a.e.remove_apps_textview).setVisibility(8);
    this.e.findViewById(com.avg.a.e.install_apps_textview).setVisibility(8);
    this.e.findViewById(com.avg.a.e.new_apps_textview).setVisibility(8);
    this.e.findViewById(com.avg.a.e.ll_bottom_panel).setVisibility(8);
    this.f = new o(this.ag.getPackageName());
    a(this.e, this.d, true);
    if (this.ag.o())
    {
      a(this.ag.getString(g.title_task_killer_preference) + " (" + this.i.size() + ")", this.e);
      d(true);
    }
    while (true)
    {
      localView = this.e;
      break;
      this.ag.a(com.avg.a.e.header, H());
      this.ag.c(com.avg.a.d.btn_sorting_actionbar);
    }
  }

  protected String a(b paramb)
  {
    String str = b;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Double.valueOf(paramb.b / 1024.0D);
    arrayOfObject[1] = paramb.a;
    arrayOfObject[2] = paramb.c;
    return String.format(str, arrayOfObject);
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof Menu))
    {
      ((Menu)paramObject).add(0, 12, 0, this.ag.getString(g.by_ram));
      ((Menu)paramObject).add(0, 10, 0, this.ag.getString(g.by_name));
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "task_killer", "menu_opened", null, 0);
      return null;
      if ((paramObject instanceof com.avg.ui.general.c.f))
      {
        ((com.avg.ui.general.c.f)paramObject).a(0, 12, 0, this.ag.getString(g.by_ram));
        ((com.avg.ui.general.c.f)paramObject).a(0, 10, 0, this.ag.getString(g.by_name));
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }

  public void a(Menu paramMenu)
  {
    paramMenu.clear();
    a(paramMenu);
    super.a(paramMenu);
  }

  protected void a(View paramView)
  {
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    e(paramMenuItem);
    return super.a_(paramMenuItem);
  }

  public boolean b(int paramInt)
  {
    switch (paramInt)
    {
    case 11:
    default:
    case 12:
    case 10:
    }
    while (true)
    {
      this.e.findViewById(com.avg.a.e.remove_apps_textview).setVisibility(8);
      this.e.findViewById(com.avg.a.e.install_apps_textview).setVisibility(8);
      this.e.findViewById(com.avg.a.e.new_apps_textview).setVisibility(8);
      a(this.e, this.d, false);
      return true;
      a = 2;
      continue;
      a = 1;
    }
  }

  public boolean b(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public boolean e(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public void t()
  {
    synchronized (this.h)
    {
      this.g = true;
      super.t();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.d
 * JD-Core Version:    0.6.2
 */