package com.tencent.qqpimsecure.view;

import aah;
import aaj;
import abh;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import anv;
import anx;
import any;
import anz;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CloudInfoTips;
import com.tencent.qqpimsecure.uilib.view.MainLinearLayout;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.desktop.MainDesktopPanel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.TMSService;
import di;
import dv;
import f;
import gw;
import ho;
import java.util.ArrayList;
import java.util.List;
import jc;
import lu;
import nd;
import np;
import qc;
import qr;
import qx;
import rj;
import si;
import sl;
import um;
import un;
import uo;
import vh;
import wq;
import wq.a;
import yw;

public final class MainPageView extends BaseView
  implements AdapterView.OnItemClickListener
{
  private uo a;
  private un b;
  private aaj c;
  private wq d;
  private OperatingActivitiesReceiver e;
  private ho f;
  private MainLinearLayout g;
  private TextView h;
  private TextView i;
  private jc j;
  private int k;
  private CloudInfoTips l;
  private ListView m;
  private TabAdapter n;
  private ButtonView o;
  private List<wq.a> p = null;
  private Handler q = new anv(this);
  private View.OnClickListener r = new anx(this);
  private dv<Object> s = new any(this);

  public MainPageView(Context paramContext)
  {
    super(paramContext, 2130903170);
  }

  private void b()
  {
    int i1 = 3;
    String str1 = "";
    String str2 = "";
    int i2 = this.mContext.getResources().getColor(2131296257);
    int i3 = qc.a();
    if (i3 == -1)
    {
      str2 = this.mContext.getString(2131427896);
      str1 = "";
      i1 = 1;
    }
    label108: int i4;
    while (true)
    {
      this.h.setTextColor(i2);
      this.h.setText(str1);
      this.i.setText(str2);
      if (this.g != null);
      switch (i1)
      {
      default:
        i4 = qc.a(this.j.b.getInt("last_score_of_check_new", 0));
        if (i4 == 2)
          break label518;
        if (i4 != 0)
          break label474;
        this.o.setText(this.mContext.getString(2131427898));
        label155: c();
        return;
        if (i3 != 0)
          break label338;
        if (this.k >= 60)
          break label219;
        str2 = this.mContext.getString(2131427902);
        i2 = this.mContext.getResources().getColor(2131296268);
        label198: str1 = this.k;
      case 2:
      case 1:
      case 3:
      }
    }
    label219: if ((this.k >= 60) && (this.k < 85))
      if (this.j.b.getInt("last_danger_of_check_new", 0) <= 0)
        break label547;
    label518: label547: for (int i5 = 1; ; i5 = 0)
    {
      if (i5 != 0)
      {
        i2 = this.mContext.getResources().getColor(2131296268);
        str2 = this.mContext.getString(2131427901);
        break label198;
      }
      str2 = this.mContext.getString(2131427900);
      i1 = 1;
      break label198;
      if ((this.k >= 85) && (this.k <= 100))
      {
        str2 = this.mContext.getString(2131427899);
        i1 = 2;
        break label198;
        label338: if ((i3 > 0) && (i3 <= 7))
        {
          str2 = this.mContext.getString(2131427888);
          str1 = String.valueOf(i3);
          i1 = 1;
          break;
        }
        if (i3 > 7)
        {
          str2 = this.mContext.getString(2131427889);
          str1 = "";
          i2 = this.mContext.getResources().getColor(2131296268);
          break;
          this.g.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130838224));
          break label108;
          this.g.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130838225));
          break label108;
          this.g.setBackgroundDrawable(this.mContext.getResources().getDrawable(2130838223));
          break label108;
          label474: if (i4 == 1)
          {
            this.o.setText(this.mContext.getString(2131427897));
            break label155;
          }
          this.o.setText(this.mContext.getString(2131428787));
          break label155;
          this.o.setText(this.mContext.getString(2131428787));
          break label155;
        }
        i1 = 1;
        break;
      }
      i1 = 1;
      break label198;
    }
  }

  private void c()
  {
    int i1 = 3;
    lu locallu = si.a(this.mContext).a("Android_Main");
    int i2;
    if (locallu != null)
    {
      i2 = qc.a();
      if (i2 != -1)
        break label52;
      i1 = 1;
    }
    while (true)
    {
      if ((i1 == 1) || (i1 == 2))
        this.g.setBackgroundDrawable(locallu.f);
      return;
      label52: if (i2 == 0)
      {
        if (this.k >= 60)
          if ((this.k >= 60) && (this.k < 85))
          {
            int i3 = this.j.b.getInt("last_danger_of_check_new", 0);
            int i4 = 0;
            if (i3 > 0)
              i4 = 1;
            if (i4 == 0)
              i1 = 1;
          }
          else if ((this.k >= 85) && (this.k <= 100))
          {
            i1 = 2;
          }
      }
      else if ((i2 > 0) && (i2 <= 7))
        i1 = 1;
      else if (i2 <= 7)
        i1 = 1;
    }
  }

  private ArrayList<TabModel> d()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.f.dK());
    for (int i1 = 1; ; i1 = 0)
    {
      localArrayList.add(new TabModel(4, i1, this.mContext.getResources().getDrawable(2130837591), null, this.mContext.getString(2131430303)));
      localArrayList.add(new TabModel(0, 0, this.mContext.getResources().getDrawable(2130838280), null, this.mContext.getString(2131427443)));
      localArrayList.add(new TabModel(1, 0, this.mContext.getResources().getDrawable(2130837736), null, this.mContext.getString(2131428400)));
      String str1 = qx.a().f();
      String str2 = this.f.aR();
      if ((str2 != null) && (str2.compareTo(str1) > 0))
      {
        localArrayList.add(new TabModel(2, 1, this.mContext.getResources().getDrawable(2130838351), null, this.mContext.getString(2131428643)));
        this.p = this.d.b();
        if (this.p.size() > 0)
          if (!this.d.e())
            break label316;
      }
      label316: for (int i2 = 1; ; i2 = 0)
      {
        localArrayList.add(new TabModel(3, i2, this.mContext.getResources().getDrawable(2130837507), null, this.mContext.getString(2131427444)));
        return localArrayList;
        localArrayList.add(new TabModel(2, 0, this.mContext.getResources().getDrawable(2130838351), null, this.mContext.getString(2131428643)));
        break;
      }
    }
  }

  public final void a()
  {
    Intent localIntent = ((Activity)this.mContext).getIntent();
    if ((localIntent != null) && ("com.tencent.action.quick_optimize".equals(localIntent.getAction())))
      this.o.performClick();
  }

  public final void onBackClick()
  {
    boolean bool = true;
    if ((this.a != null) && (this.a.e() != null) && (this.a.e().isOpen()))
      this.a.e().setOpen(false, bool);
    while (true)
    {
      if (!bool)
        super.onBackClick();
      return;
      bool = false;
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mRegisterSDCardStateChangeReceiver = false;
  }

  public final void onCreate()
  {
    super.onCreate();
    new um();
    this.h = ((TextView)findViewById(2131231091));
    this.i = ((TextView)findViewById(2131231092));
    this.g = ((MainLinearLayout)findViewById(2131231090));
    this.g.setMainPageView(this);
    if (gw.e())
      this.g.setMinimumHeight(gw.f());
    this.j = f.f();
    this.k = this.j.b.getInt("last_score_of_check_new", 0);
    this.o = ((ButtonView)findViewById(2131231093));
    this.m = ((ListView)findViewById(2131230930));
    this.n = new TabAdapter(this.mContext, 8, 2);//初始化主页四ITEM
    this.m.setAdapter(this.n);
    this.m.setOnItemClickListener(this);
    this.c = new aaj(this.mContext);
    this.d = wq.a();
    this.a = new uo(this, this.n, this.c);
    Context localContext = this.mContext;
    this.b = new un(localContext);
    this.f = ho.a();
    un localun = this.b;
    if ((di.b().j()) && (!localun.b.ay()))
    {
      Intent localIntent1 = new Intent("android.intent.action.MAIN");
      localIntent1.addCategory("android.intent.category.LAUNCHER");
      localIntent1.setClass(localun.a, SplashActivity.class);
      Intent localIntent2 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
      localIntent2.putExtra("android.intent.extra.shortcut.NAME", localun.a.getString(2131427328));
      localIntent2.putExtra("duplicate", false);
      localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(localun.a, 2130837799));
      localun.a.sendBroadcast(localIntent2);
      Intent localIntent3 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      localIntent3.putExtra("android.intent.extra.shortcut.NAME", localun.a.getString(2131427328));
      localIntent3.putExtra("duplicate", false);
      localIntent3.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      localIntent3.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(localun.a, 2130837799));
      localun.a.sendBroadcast(localIntent3);
      localun.b.az();
    }
    this.o.setOnClickListener(this.r);
    this.a.a(this);
    b();
    List localList = qr.a(this.mContext.getApplicationContext()).c();
    if (localList.size() > 0);
    for (this.l = new CloudInfoTips(this.mContext, localList); ; this.l = null)
    {
      nd.a().a(26041);
      TMSService.startService(new abh());
      TMSService.startService(new aah());
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction(wq.a);
      this.e = new OperatingActivitiesReceiver();
      this.mContext.registerReceiver(this.e, localIntentFilter);
      return;
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if (this.e != null);
    try
    {
      this.mContext.unregisterReceiver(this.e);
      this.e = null;
      qc.g = false;
      si localsi = si.a(this.mContext);
      if (localsi.c != null)
      {
        localsi.c.e();
        localsi.c = null;
      }
      si.a = null;
      if (this.a != null)
      {
        this.a.d();
        this.a = null;
      }
      if (this.b != null)
      {
        this.b.a = null;
        this.b = null;
      }
      this.g.release();
      this.n.release();
      this.m.setOnItemClickListener(null);
      this.o.setOnClickListener(null);
      TMSService.startService(new yw());
      this.mContext.sendBroadcast(new Intent("action_report"));
      rj.a().b();
      this.c = null;
      this.d = null;
      System.gc();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.a(paramInt);
  }

  public final void onOptionClick(int paramInt)
  {
    nd localnd = nd.a();
    switch (paramInt)
    {
    default:
    case 4:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.f.dJ();
      this.a.b(79);
      localnd.a(26455);
      continue;
      localnd.a(26250);
      this.a.b(50);
      continue;
      localnd.a(26251);
      this.a.b(0);
      continue;
      localnd.a(26252);
      this.a.b(2);
      continue;
      this.d.f();
      if ((this.p != null) && (this.p.size() > 0))
      {
        localnd.a(26259);
        if (this.p.size() == 1)
        {
          this.d.b((wq.a)this.p.get(0));
        }
        else
        {
          ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
          ArrayList localArrayList = new ArrayList();
          new ContextMenuModel();
          int i1 = 0;
          if (i1 < this.p.size())
          {
            wq.a locala = (wq.a)this.p.get(i1);
            ContextMenuModel localContextMenuModel = new ContextMenuModel();
            if ((locala.a != null) && (!"".equals(locala.a)));
            for (localContextMenuModel.name = locala.a; ; localContextMenuModel.name = this.mContext.getString(2131428361))
            {
              localContextMenuModel.eventCode = i1;
              localArrayList.add(localContextMenuModel);
              i1++;
              break;
            }
          }
          localContextMenuDialog.setDataAdapter(localArrayList);
          localContextMenuDialog.setOnItemClickListener(new anz(this, localContextMenuDialog));
          localContextMenuDialog.setIcon(2130837771);
          localContextMenuDialog.setTitle(2131427445);
          localContextMenuDialog.show();
        }
      }
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return true;
  }

  public final void onPause()
  {
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setPopOptionMenuCallback(null);
    super.onPause();
    if (this.a != null)
      this.a.c();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    getFrameworkTemplateUI().popOptionMenu(this.mContext);
    return super.onPrepareOptionsMenu(paramMenu);
  }

  public final void onResume()
  {
    vh.a().d();
    this.k = this.j.b.getInt("last_score_of_check_new", 0);
    getFrameworkTemplateUI().setPopOptionMenuCallback(this.s);
    this.q.sendEmptyMessageDelayed(0, 2000L);
    b();
    c();
    if (this.a != null)
      this.a.b();
    super.onResume();
  }

  public final void onShowPopOptionMenu()
  {
    super.onShowPopOptionMenu();
    nd.a().a(26249);
  }

  public final void resetContext(Context paramContext)
  {
    super.resetContext(paramContext);
    if (this.b != null)
      this.b.a = paramContext;
    if (this.a != null)
      this.a.a(paramContext);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427329);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)0);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setInfoBarWithoutShadow();
    if (this.l != null)
      paramFrameworkTemplateUI.setTipsView(this.l.view());
    paramFrameworkTemplateUI.setOptionButtonPopStyle(d());
    if (((this.d.c()) && (this.p.size() > 0)) || (this.f.aQ()))
      paramFrameworkTemplateUI.setOptionNotifyImg(2130838103);
  }

  public class OperatingActivitiesReceiver extends BroadcastReceiver
  {
    public OperatingActivitiesReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      try
      {
        int i = getResultCode();
        switch (i)
        {
        default:
        case -1:
        }
        while (true)
        {
          return;
          try
          {
            FrameworkTemplateUI localFrameworkTemplateUI = MainPageView.this.getFrameworkTemplateUI();
            if (localFrameworkTemplateUI != null)
            {
              localFrameworkTemplateUI.setOptionButtonPopStyle(MainPageView.j(MainPageView.this));
              if (((MainPageView.h(MainPageView.this).c()) && (MainPageView.i(MainPageView.this).size() > 0)) || (MainPageView.b(MainPageView.this).aQ()))
                localFrameworkTemplateUI.setOptionNotifyImg(2130838103);
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      }
      finally
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.MainPageView
 * JD-Core Version:    0.6.2
 */