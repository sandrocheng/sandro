package com.tencent.qqpimsecure.view.securespace;

import adg;
import ait;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.telephony.SmsManager;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import bix;
import biz;
import bja;
import bjb;
import bjc;
import bjd;
import bjf;
import bjg;
import bji;
import bjj;
import bjk;
import bjn;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.MmsData;
import com.tencent.tmsecure.module.aresengine.MmsNotificationIndHeader;
import dv;
import fn;
import ft;
import fu;
import ha;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import jp;
import mk;
import ml;
import sy;
import ui;
import uk;

public final class SecureSmsDialogueView extends BaseView
  implements View.OnCreateContextMenuListener, AdapterView.OnItemClickListener
{
  private static uk p;
  public List<mk> a = new ArrayList();
  private String b;
  private String c;
  private ListView d;
  private ait e;
  private jp f;
  private sy g;
  private SmsSentReceiver h;
  private AresEngineManager i;
  private int j;
  private int k;
  private ButtonView l;
  private TextView m;
  private EditText n;
  private ui o;
  private boolean q = false;
  private boolean r = true;
  private Object s = new Object();
  private HashMap<Integer, ArrayList<adg>> t = new HashMap();
  private Handler u = new bix(this);
  private dv v = new bjf(this);
  private DataHandler.DataHandlerCallback w = new bjg(this);
  private View.OnClickListener x = new bjb(this);
  private BroadcastReceiver y = new bjc(this);
  private BroadcastReceiver z = new bjd(this);

  public SecureSmsDialogueView(Context paramContext)
  {
    super(paramContext, 2130903289);
  }

  public static uk a()
  {
    return p;
  }

  private void a(List<mk> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        mk localmk = (mk)localIterator.next();
        if ((localmk.mmsData != null) && (localmk.mmsData.mmsNotificationIndHeader != null))
        {
          this.o.a(new ml(localmk, localmk.id));
          localmk.l = true;
        }
      }
    }
  }

  private static boolean a(ArrayList<adg> paramArrayList)
  {
    boolean bool;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      bool = true;
    while (true)
    {
      return bool;
      Iterator localIterator = paramArrayList.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          adg localadg = (adg)localIterator.next();
          if ((localadg.b() == 2) || (localadg.b() == 1) || (localadg.b() == 0) || (localadg.b() == 3))
          {
            bool = false;
            break;
          }
        }
      bool = true;
    }
  }

  private static boolean c(mk parammk)
  {
    boolean bool1 = false;
    if (parammk != null)
    {
      MmsData localMmsData = parammk.mmsData;
      bool1 = false;
      if (localMmsData != null)
      {
        MmsNotificationIndHeader localMmsNotificationIndHeader = parammk.mmsData.mmsNotificationIndHeader;
        bool1 = false;
        if (localMmsNotificationIndHeader != null)
        {
          boolean bool2 = 1000L * parammk.mmsData.mmsNotificationIndHeader.expiry < System.currentTimeMillis();
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  public final void loadDataList()
  {
    super.loadDataList();
    this.a = this.f.a(this.b);
    if (this.t == null)
      this.t = new HashMap();
    this.t.clear();
    int i1 = this.a.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      fn localfn = new fn();
      mk localmk = (mk)this.a.get(i2);
      localfn.a = localmk.mmsData;
      localfn.a();
      if ((!a(localfn.b)) && (localmk.id > 0))
        this.t.put(new Integer(localmk.id), localfn.b);
    }
    a(this.a);
    this.mHandler.sendMessage(this.mHandler.obtainMessage(-2));
  }

  public final void onBackClick()
  {
    String str = this.n.getText().toString();
    if ((str != null) && (!"".equals(str)))
    {
      ha.a(this.mContext, 2131427603);
      this.f.b(this.b, str);
    }
    while (true)
    {
      this.o.a();
      super.onBackClick();
      return;
      this.f.d(this.b);
    }
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.g = sy.a(getActivity());
    this.f = new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts");
    this.i = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class));
    if (ui.g == null)
      ui.g = new ui();
    this.o = ui.g;
    Intent localIntent = getActivity().getIntent();
    this.c = localIntent.getStringExtra("smslogname");
    this.b = localIntent.getStringExtra("smslogphonenum");
    this.d = ((PinnedHeaderListView)findViewById(2131231553));
    this.n = ((EditText)findViewById(2131231298));
    this.m = ((TextView)findViewById(2131231554));
    String str = this.f.c(this.b);
    if ((str != null) && (!"".equals(str)))
    {
      this.n.setText(str);
      this.n.setSelection(str.length());
      this.m.setText(String.valueOf(str.toString().length()));
    }
    while (true)
    {
      this.n.addTextChangedListener(new bji(this));
      this.l = ((ButtonView)findViewById(2131231555));
      this.l.setText(this.mContext.getString(2131427721));
      this.l.setOnClickListener(new bjj(this));
      this.e = new ait(this.mContext, this.a, this);
      this.e.a(this.x);
      this.e.a(this.t);
      this.d.setAdapter(this.e);
      this.d.setOnItemClickListener(this);
      this.d.setOnCreateContextMenuListener(this);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.tencent.qqpimsecure.intent_secure_sms_sent");
      this.h = new SmsSentReceiver();
      this.mContext.registerReceiver(this.h, localIntentFilter);
      p = new uk();
      return;
      this.n.setText("");
      this.m.setText("");
    }
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      i1 = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (i1 != -2)
        break label485;
    }
    label485: for (int i2 = ((Integer)this.d.getTag()).intValue(); ; i2 = i1)
    {
      if (i2 < 0);
      ContextMenuDialog localContextMenuDialog;
      mk localmk;
      do
      {
        return;
        i1 = ((Integer)this.d.getTag()).intValue();
        break;
        localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
        localContextMenuDialog.setContextItemPosition(i2);
        localmk = (mk)this.e.getItem(i2);
      }
      while (localmk.id == -1);
      String str1 = localmk.phonenum;
      String str2 = localmk.name;
      ArrayList localArrayList = new ArrayList();
      if ((fu.e(str1) != null) && (str1 != null) && (str1.length() > 2))
      {
        if (localmk.type == 1)
        {
          ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
          StringBuilder localStringBuilder = new StringBuilder().append(this.mContext.getString(2131427394));
          if ((str2 == null) || (str2.equals("")))
            str2 = str1;
          localContextMenuModel1.name = str2;
          localContextMenuModel1.eventCode = 8;
          localArrayList.add(localContextMenuModel1);
        }
        if (localmk.mmsData == null)
        {
          ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
          localContextMenuModel2.name = this.mContext.getString(2131428497);
          localContextMenuModel2.eventCode = 7;
          localArrayList.add(localContextMenuModel2);
        }
        ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
        localContextMenuModel3.name = this.mContext.getString(2131427340);
        localContextMenuModel3.eventCode = 2;
        localArrayList.add(localContextMenuModel3);
        ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
        localContextMenuModel4.name = this.mContext.getString(2131427720);
        localContextMenuModel4.eventCode = 3;
        localArrayList.add(localContextMenuModel4);
      }
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new bjk(this, localContextMenuDialog));
      String str3 = localmk.name;
      String str4 = localmk.a();
      if ((str4 != null) && (str4.length() < 3))
        str4 = null;
      if ((str3 != null) && (str3.length() > 0))
        str4 = str3;
      while (true)
      {
        localContextMenuDialog.setTitle(str4);
        localContextMenuDialog.show();
        break;
        if (str4 == null)
          str4 = this.mContext.getResources().getString(2131428361);
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onDestroy()
  {
    this.mContext.unregisterReceiver(this.h);
    if (p != null)
      p.e();
    if (ui.g == null)
      ui.g = new ui();
    ui.g.a();
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == -1 + this.e.getCount())
    {
      mk localmk = (mk)this.e.getItem(paramInt);
      if (localmk.h == 3000)
      {
        SmsManager localSmsManager = SmsManager.getDefault();
        Intent localIntent = new Intent();
        localIntent.setAction("com.tencent.qqpimsecure.intent_secure_sms_sent");
        PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.mContext, 0, localIntent, 0);
        localSmsManager.sendTextMessage(this.b, null, localmk.getBody(), localPendingIntent, null);
        this.j = localmk.id;
        this.k = 1000;
        ((Activity)this.mContext).runOnUiThread(new bjn(this));
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    ft.a(this.b);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 19:
    }
    while (true)
    {
      return true;
      Dialog localDialog = new Dialog(getActivity());
      localDialog.setTitle(2131427376);
      localDialog.setMessage(2131427820);
      localDialog.setPositiveButton(2131427397, new biz(this, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new bja(localDialog), 2);
      localDialog.show();
    }
  }

  public final void onPause()
  {
    super.onPause();
    this.q = false;
    if (getActivity().isFinishing());
    try
    {
      this.i.findIntercepter("incoming_sms").dataHandler().removeCallback(this.w);
      this.i.findIntercepter("outing_sms").dataHandler().removeCallback(this.w);
      getActivity().unregisterReceiver(this.y);
      getActivity().unregisterReceiver(this.z);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (paramMenu.findItem(19) == null)
      paramMenu.add(0, 19, 0, QQPimApplication.a().getResources().getString(2131428652)).setIcon(2130838009);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.q = true;
    if (this.r)
      this.mHandler.sendMessage(this.mHandler.obtainMessage(-1));
    try
    {
      this.i.findIntercepter("incoming_sms").dataHandler().addCallback(this.w);
      this.i.findIntercepter("outing_sms").dataHandler().addCallback(this.w);
      getActivity().registerReceiver(this.z, new IntentFilter("com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE"));
      getActivity().registerReceiver(this.y, new IntentFilter("com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_SUCCESS"));
      this.u.sendEmptyMessage(1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void refreshListData()
  {
    this.r = false;
    this.e.a(this.a);
    this.e.a(this.t);
    this.e.notifyDataSetChanged();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.c == null);
    for (String str = this.b; ; str = this.c)
    {
      paramFrameworkTemplateUI.setTitleTextData(str);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130837772);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      return;
    }
  }

  public class SmsSentReceiver extends BroadcastReceiver
  {
    public SmsSentReceiver()
    {
    }

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      switch (getResultCode())
      {
      default:
        SecureSmsDialogueView.c(SecureSmsDialogueView.this, 3000);
        SecureSmsDialogueView.c(SecureSmsDialogueView.this);
      case -1:
      }
      while (true)
      {
        return;
        SecureSmsDialogueView.c(SecureSmsDialogueView.this, 2000);
        SecureSmsDialogueView.c(SecureSmsDialogueView.this);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView
 * JD-Core Version:    0.6.2
 */