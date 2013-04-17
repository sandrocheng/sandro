package com.tencent.qqpimsecure.ui.activity;

import aau;
import abk;
import aci;
import adq;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.TemplateUIFactory;
import com.tencent.qqpimsecure.view.MainPageView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.network.NetworkManager;
import di;
import f;
import fv;
import ha;
import hd;
import ho;
import iy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import km;
import mx;
import mz;
import na;
import nb;
import nc;
import np;
import qr;
import qx;
import rx;
import ry;
import rz;
import sa;
import sb;
import sc;
import sd;
import so;

public class MainActivity extends BaseUIActivity
{
  private static MainActivity d = null;
  private ho a;
  private MainPageView b;
  private boolean c = true;
  private long e;
  private boolean f;

  public MainActivity()
  {
    new adq(this);
  }

  public static MainActivity a()
  {
    return d;
  }

  public BaseView getView()
  {
    if (aci.b == null)
      aci.b = new aci();
    this.b = aci.b.a;
    if (this.b == null)
    {
      if (aci.b == null)
        aci.b = new aci();
      aci.b.a = new MainPageView(QQPimApplication.a());
      if (aci.b == null)
        aci.b = new aci();
      this.b = aci.b.a;
    }
    this.b.resetContext(this);
    return this.b;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = System.currentTimeMillis();
    this.f = true;
    d = this;
    mx localmx = new mx(this);
    if (mx.a("action_check_launch_first"))
    {
      mz localmz = new mz(localmx);
      na localna = new na(localmx);
      ArrayList localArrayList1 = new ArrayList();
      localArrayList1.add(localmz);
      localArrayList1.add(localna);
      int i = 1 + QQPimApplication.a().getSharedPreferences("SettingInfo", 0).getInt("action_check_launch_first", 0);
      QQPimApplication.a().getSharedPreferences("SettingInfo", 0).edit().putInt("action_check_launch_first", i).commit();
      localmx.a(localArrayList1);
    }
    while (true)
    {
      di.b().b(this);
      km localkm = f.d();
      if (localkm.b.getLong("last_time_of_whole_scan", -1L) == -1L)
      {
        long l2 = System.currentTimeMillis();
        localkm.a.putLong("last_time_of_whole_scan", l2).commit();
      }
      if (localkm.b.getLong("last_time_of_update", -1L) == -1L)
      {
        long l1 = System.currentTimeMillis();
        localkm.a.putLong("last_time_of_update", l1).commit();
      }
      ho localho = ho.a();
      if (localho.aV())
      {
        Long.valueOf(System.currentTimeMillis());
        localho.m();
        localho.aU();
      }
      if (this.b != null)
        this.b.a();
      this.a = ho.a();
      if (qx.a().i())
        ha.b(this, 2131430047);
      new fv(QQPimApplication.a()).a();
      abk.a(QQPimApplication.a()).b();
      return;
      if (mx.a("action_check_second"))
      {
        nb localnb = new nb(localmx);
        nc localnc = new nc(localmx);
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(localnb);
        localArrayList2.add(localnc);
        int j = 1 + QQPimApplication.a().getSharedPreferences("SettingInfo", 0).getInt("action_check_second", 0);
        QQPimApplication.a().getSharedPreferences("SettingInfo", 0).edit().putInt("action_check_second", j).commit();
        localmx.a(localArrayList2);
      }
    }
  }

  public void onDestroy()
  {
    if (d == this)
      d = null;
    TMSService.stopService(aau.class);
    TemplateUIFactory.freeInstance();
    BaseView.mActivityTitleStack.clear();
    this.b = null;
    this.a = null;
    if (aci.b == null)
      aci.b = new aci();
    aci.b.a = null;
    aci.b = null;
    super.onDestroy();
  }

  public void onResume()
  {
    if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).notifyConfigChange();
    super.onResume();
    rx localrx;
    long l2;
    long l3;
    if (this.c)
    {
      localrx = new rx(this);
      if (!this.a.f())
      {
        Dialog localDialog1 = new Dialog(localrx.a);
        localDialog1.setTitle(2131427692);
        localDialog1.setMessage(2131427795);
        localDialog1.setPositiveButton(2131427397, new sb(localrx, localDialog1), 1);
        localDialog1.setNegativeButton(2131427379, new sc(localDialog1), 2);
        localDialog1.show();
      }
      so localso = localrx.c;
      localso.b();
      qr localqr = qr.a(localrx.a.getApplicationContext());
      if (localqr.a())
        new Thread(new ry(localqr)).start();
      long l1 = System.currentTimeMillis();
      if ((!localrx.b.aN()) || (l1 > 60000L + localrx.b.aO()) || (Math.abs(System.currentTimeMillis() - localrx.b.aL()) > 604800000L))
      {
        Context localContext = localrx.a;
        Intent localIntent = new Intent(localContext, SecureService.class);
        localIntent.setAction("com.tencent.action.cloud_service");
        localContext.startService(localIntent);
      }
      String str1 = localrx.b.aS();
      String str2 = qx.a().f();
      new StringBuilder("^^ \tString myVersion = ConfigManager.getConfigManager().getSoftVersion(); ").append(str2).toString();
      if ((str1 != null) && (str2 != null) && (str1.equals(str2)))
        break label398;
      l2 = localrx.b.bj();
      l3 = System.currentTimeMillis();
      if (l2 != 0L)
        break label487;
      localrx.b.k(l3);
    }
    while (true)
    {
      this.c = false;
      if (this.f)
      {
        this.f = false;
        System.currentTimeMillis();
        new hd();
      }
      return;
      label398: Dialog localDialog2 = new Dialog(localrx.a);
      localDialog2.setIconVisibility(8);
      localDialog2.setTitle(localrx.a.getString(2131428563));
      localDialog2.setMessage(localrx.b.aT());
      localDialog2.setPositiveButton(2131428347, new rz(localrx, localDialog2), 1);
      localDialog2.setOnCancelListener(new sa(localrx, localDialog2));
      localDialog2.show();
      break;
      label487: if (l3 - l2 > 1296000000L)
      {
        localrx.b.k(l3);
        new Thread(new sd(localrx)).start();
      }
    }
  }

  public void onStart()
  {
    BaseView.mActivityTitleStack.clear();
    super.onStart();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.MainActivity
 * JD-Core Version:    0.6.2
 */