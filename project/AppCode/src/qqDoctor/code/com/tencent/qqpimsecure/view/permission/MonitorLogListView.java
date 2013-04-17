package com.tencent.qqpimsecure.view.permission;

import akg;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import bcn;
import bco;
import bcp;
import bcr;
import bcs;
import bdq;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import ha;
import ho;
import hs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jf;
import lz;
import ov;
import xi;

public final class MonitorLogListView extends BasePinnedListView<lz>
{
  private akg a;
  private Dialog b;
  private Dialog c;
  private jf d;
  private List<lz> e = new ArrayList();
  private List<ListModel<lz>> f;
  private MonitorLogReceiver g;
  private Drawable h;
  private View i;
  private BaseView j;
  private Handler k = new bcp(this);

  public MonitorLogListView(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.j = paramBaseView;
  }

  private void a(int paramInt)
  {
    if (this.i == null)
      this.i = LayoutInflater.from(this.mContext).inflate(2130903198, null);
    TextView localTextView = (TextView)this.i.findViewById(2131231203);
    switch (paramInt)
    {
    default:
    case -100:
    case 0:
    case -7:
    case -99:
    case -8:
    }
    while (true)
    {
      this.j.getFrameworkTemplateUI().setTipsView(this.i);
      return;
      localTextView.setText(2131429115);
      this.i.setOnClickListener(new bcs(this));
      continue;
      this.i.setOnClickListener(null);
      localTextView.setText(2131429122);
      continue;
      this.i.setOnClickListener(null);
      localTextView.setText(2131429116);
      continue;
      this.i.setOnClickListener(null);
      localTextView.setText(2131429128);
    }
  }

  private void b()
  {
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    if ((this.e == null) || (this.e.size() == 0));
    while (true)
    {
      return;
      Iterator localIterator = this.e.iterator();
      while (localIterator.hasNext())
      {
        lz locallz = (lz)localIterator.next();
        int m = locallz.a;
        if (locallz.d == null)
        {
          String str = this.d.c(m);
          if (str == null)
            locallz.d = this.h;
          else
            locallz.d = localSoftwareManager.getAppInfo(str, 4).getIcon();
        }
        else if ((locallz.c == null) || (locallz.c.length() <= 0))
        {
          locallz.c = this.d.d(m);
          if (locallz.c == null)
            locallz.c = localSoftwareManager.getAppInfo(this.d.c(m), 1).getAppName();
        }
      }
    }
  }

  public final void a()
  {
    this.e.clear();
    refreshListData();
    if (getFrameworkTemplateUI() != null)
    {
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      String str = this.mContext.getString(2131429555);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(0);
      localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
    }
    ov.a().a(12);
    ru.c = 0;
    ru.b = 0;
    new Thread(new bcr(this)).start();
  }

  public final BasePinnedListAdapter<lz> createAdapter()
  {
    this.a = new akg(this.mContext, this, new ArrayList());
    return this.a;
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final View getView()
  {
    return getMainView();
  }

  public final boolean isPinnedHeaderListView()
  {
    return false;
  }

  public final void loadDataList()
  {
    this.e = this.d.d();
    ListModel localListModel = new ListModel(this.e, "", 1);
    this.f = new ArrayList();
    this.f.add(localListModel);
    b();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = new jf();
    this.h = this.mContext.getResources().getDrawable(17301651);
    this.b = new Dialog(this.mContext);
    this.b.addProgressDialog();
    this.b.setMessage(2131427693);
    this.c = new Dialog(this.mContext);
    this.c.setIcon(2130838143);
    this.c.setTitle(2131428561);
    this.c.setMessage(2131429044);
    this.c.setPositiveButton(2131428152, new bcn(this), 2);
    this.c.setNegativeButton(2131427379, new bco(this), 2);
    this.g = new MonitorLogReceiver();
    this.mContext.registerReceiver(this.g, new IntentFilter("MONITOR_LOG_ACTION"));
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.mContext.unregisterReceiver(this.g);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    if (paramOperatingModel.getID() == 0)
    {
      if (this.e.size() > 0)
        break label37;
      ha.b(this.mContext, this.mContext.getString(2131428783));
    }
    while (true)
    {
      return;
      label37: this.c.show();
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 17:
    }
    while (true)
    {
      return true;
      if (this.e.size() <= 0)
        ha.b(this.mContext, this.mContext.getString(2131428783));
      else
        this.c.show();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (paramMenu.findItem(17) == null)
      paramMenu.add(0, 17, 2, QQPimApplication.a().getResources().getString(2131427376)).setIcon(2130838009);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.k.sendEmptyMessage(0);
    if ((this.j != null) && (this.j.getFrameworkTemplateUI() != null))
      this.j.getFrameworkTemplateUI().setInfoBarStyle((byte)50);
    FrameworkTemplateUI localFrameworkTemplateUI;
    String str1;
    Object[] arrayOfObject1;
    jf localjf;
    Cursor localCursor;
    if (this.j.getFrameworkTemplateUI() != null)
    {
      localFrameworkTemplateUI = this.j.getFrameworkTemplateUI();
      str1 = this.mContext.getString(2131429555);
      arrayOfObject1 = new Object[1];
      localjf = this.d;
      localCursor = localjf.a.a("SELECT count(*) FROM permission_log");
      if ((localCursor == null) || (!localCursor.moveToNext()))
        break label256;
    }
    label256: for (int m = localCursor.getInt(0); ; m = 0)
    {
      if (localCursor != null)
        localCursor.close();
      localjf.a.b();
      arrayOfObject1[0] = Integer.valueOf(m);
      localFrameworkTemplateUI.updateInfoBarText(String.format(str1, arrayOfObject1));
      boolean bool = xi.a();
      if (((bdq)this.j).a == 0)
      {
        if (!bool)
          break label243;
        int n = new jf().c();
        String str2 = this.mContext.getString(2131429114);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(n);
        String str3 = String.format(str2, arrayOfObject2);
        this.j.getFrameworkTemplateUI().updateInfoBarText(str3);
      }
      while (true)
      {
        return;
        label243: a(ho.a().dy());
      }
    }
  }

  public final void refreshListData()
  {
    this.a.setDataList(this.f);
    this.a.notifyDataSetChanged();
    if (this.a.getDataList().size() == 0)
      setEmptyText(2131429041);
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
  }

  public class MonitorLogReceiver extends BroadcastReceiver
  {
    public MonitorLogReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      MonitorLogListView.this.onResume();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.permission.MonitorLogListView
 * JD-Core Version:    0.6.2
 */