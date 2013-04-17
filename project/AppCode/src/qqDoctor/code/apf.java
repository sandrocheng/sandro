import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.preference.Preference;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.ui.activity.AboutActivity;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.service.OnTabResumeListener;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.TitlePreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import java.util.Iterator;
import java.util.List;

public final class apf extends BaseListView<PreferenceAdapterModel>
  implements OnTabResumeListener
{
  private ho a;
  private hh b;
  private PreferenceAdapterModel c;
  private PreferenceAdapterModel d;
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private PreferenceAdapterModel g;
  private PreferenceAdapterModel h;
  private PreferenceAdapterModel i;
  private PreferenceAdapterModel j;
  private PreferenceAdapterModel k;
  private PreferenceAdapterModel l;
  private PreferenceAdapterModel m;
  private PreferenceAdapterModel n;
  private PreferenceAdapterModel o;
  private PreferenceAdapterModel p;
  private PreferenceAdapterModel q;
  private PreferenceAdapterModel r;
  private PreferenceAdapterModel s;
  private PreferenceAdapterModel t;
  private PreferenceAdapterModel u;
  private PreferenceAdapterModel v;
  private PreferenceAdapterModel w;
  private boolean x;
  private boolean y;
  private boolean z;

  public apf(Context paramContext)
  {
    super(paramContext);
    if (qx.a().h() == qx.a.q);
    for (boolean bool = true; ; bool = false)
    {
      this.x = bool;
      this.a = ho.a();
      this.b = hh.a();
      return;
    }
  }

  private void a()
  {
    Iterator localIterator = this.mDataList.iterator();
    while (localIterator.hasNext())
    {
      PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)localIterator.next();
      if (localPreferenceAdapterModel1.getKey().equals("key_check_desk_assis"))
      {
        this.d.setTitle(this.mContext.getString(2131430040));
        if (this.a.cv())
          this.d.setChecked(true);
        else
          this.d.setChecked(false);
      }
      else if (localPreferenceAdapterModel1.getKey().equals("key_desk_style"))
      {
        this.e.setTitle(this.mContext.getString(2131430045));
      }
      else if (localPreferenceAdapterModel1.getKey().equals("key_title_desk_assis"))
      {
        this.c.setTitle(this.mContext.getString(2131430039));
      }
      else
      {
        if (localPreferenceAdapterModel1.getKey().equals("auto_run_preference"))
        {
          boolean bool5 = this.a.f();
          if (this.x)
          {
            this.g.setTitle(this.mContext.getString(2131427686));
            PreferenceAdapterModel localPreferenceAdapterModel3 = this.g;
            Context localContext2 = this.mContext;
            if (bool5);
            for (int i2 = 2131427361; ; i2 = 2131427362)
            {
              localPreferenceAdapterModel3.setSummary(localContext2.getString(i2));
              this.g.setShowLine(true);
              this.g.setChecked(bool5);
              break;
            }
          }
          this.g.setTitle(this.mContext.getString(2131427687));
          PreferenceAdapterModel localPreferenceAdapterModel2 = this.g;
          Context localContext1 = this.mContext;
          if (bool5);
          for (int i1 = 2131427363; ; i1 = 2131427364)
          {
            localPreferenceAdapterModel2.setSummary(localContext1.getString(i1));
            break;
          }
        }
        if (localPreferenceAdapterModel1.getKey().equals("startup_scan_preference"))
        {
          this.h.setTitle(this.mContext.getString(2131428072));
          boolean bool4 = this.a.ds();
          this.h.setChecked(bool4);
        }
        else if (localPreferenceAdapterModel1.getKey().equals("show_location_preference"))
        {
          this.p.setShowLine(false);
          this.p.setTitle(this.mContext.getString(2131427330));
          this.p.setChecked(this.a.o());
        }
        else if (localPreferenceAdapterModel1.getKey().equals("cloud_scan_preference"))
        {
          boolean bool3 = this.a.aB();
          this.j.setShowLine(true);
          this.j.setTitle(this.mContext.getString(2131428304));
          this.j.setChecked(bool3);
        }
        else if (localPreferenceAdapterModel1.getKey().equals("report_sms_preference"))
        {
          boolean bool2 = this.a.aF();
          this.k.setShowLine(true);
          this.k.setTitle(this.mContext.getString(2131428305));
          this.k.setChecked(bool2);
        }
        else if (localPreferenceAdapterModel1.getKey().equals("sms_check_pre"))
        {
          boolean bool1 = jo.a().a.getBoolean("isopen", true);
          this.l.setShowLine(false);
          this.l.setTitle(this.mContext.getString(2131428306));
          this.l.setChecked(bool1);
        }
        else if (localPreferenceAdapterModel1.getKey().equals("wifi_approve_detect_preference"))
        {
          this.m.setShowLine(false);
          this.m.setTitle(this.mContext.getString(2131428756));
          this.m.setChecked(this.a.aG());
        }
        else if (localPreferenceAdapterModel1.getKey().equals("website_check_preference"))
        {
          this.n.setShowLine(false);
          this.n.setTitle(this.mContext.getString(2131430229));
          this.n.setChecked(this.a.dp());
        }
        else if (!localPreferenceAdapterModel1.getKey().equals("location_shower_setting"))
        {
          if (localPreferenceAdapterModel1.getKey().equals("auto_run_preference_show_icon"))
          {
            this.i.setTitle(this.mContext.getString(2131427688));
            if (this.a.O())
              this.i.setChecked(true);
            while (true)
            {
              this.i.setShowLine(true);
              break;
              this.i.setChecked(false);
            }
          }
          if (localPreferenceAdapterModel1.getKey().equals("check_info_preference"))
          {
            this.r.setShowLine(true);
            if (this.x)
            {
              this.r.setTitle(this.mContext.getString(2131428311));
              this.r.setSummary(this.mContext.getString(2131428312));
            }
            else
            {
              this.r.setTitle(this.mContext.getString(2131428314));
              this.r.setSummary(this.mContext.getString(2131428317));
            }
          }
          else if (localPreferenceAdapterModel1.getKey().equals("auto_check_info_in_wifi"))
          {
            this.s.setShowLine(true);
            this.s.setTitle(this.mContext.getString(2131428315));
            this.s.setChecked(this.a.dq());
          }
          else if (localPreferenceAdapterModel1.getKey().equals("check_version_preference"))
          {
            this.t.setShowLine(true);
            this.t.setTitle(this.mContext.getString(2131428319));
          }
          else if (localPreferenceAdapterModel1.getKey().equals("key_about_info"))
          {
            this.v.setShowLine(true);
            this.v.setTitle(this.mContext.getString(2131428647));
          }
          else if (localPreferenceAdapterModel1.getKey().equals("title_secure"))
          {
            this.f.setTitle(this.mContext.getString(2131428303));
            this.f.setShowLine(true);
          }
          else if (localPreferenceAdapterModel1.getKey().equals("title_location"))
          {
            this.o.setTitle(this.mContext.getString(2131428307));
            this.o.setShowLine(true);
          }
          else if (!localPreferenceAdapterModel1.getKey().equals("title_filter"))
          {
            if (localPreferenceAdapterModel1.getKey().equals("title_update"))
            {
              this.q.setShowLine(true);
              this.q.setTitle(this.mContext.getString(2131428309));
            }
            else if (localPreferenceAdapterModel1.getKey().equals("fun_manager"))
            {
              this.u.setShowLine(true);
              this.u.setTitle(this.mContext.getString(2131428310));
            }
          }
        }
      }
    }
  }

  public static void a(boolean paramBoolean, Context paramContext)
  {
    ho localho = ho.a();
    localho.f(paramBoolean);
    if (paramBoolean != localho.f())
    {
      localho.a(paramBoolean);
      hh.a().a(paramBoolean);
      ov.a().a(false, true, true);
    }
    localho.a(paramBoolean);
    localho.e(paramBoolean);
    localho.c(paramBoolean);
    localho.g(paramBoolean);
    ov.a().a(false, true, true);
    localho.p(paramBoolean);
    localho.q(paramBoolean);
    jo.a().b.putBoolean("isopen", paramBoolean).commit();
    iu localiu = new iu(QQPimApplication.a());
    xb.a(paramBoolean, true);
    new iy(QQPimApplication.a()).b.putBoolean("netword_service_status", paramBoolean).commit();
    if (!paramBoolean)
    {
      localiu.e(false);
      Intent localIntent = new Intent();
      localIntent.setClass(paramContext, SecureService.class);
      localIntent.setAction("switch_suspession_window");
      paramContext.startService(localIntent);
    }
    if (!paramBoolean)
    {
      IpDialManagerSetting localIpDialManagerSetting = ((IpDialManager)ManagerCreator.getManager(IpDialManager.class)).getIpDialSetting();
      localIpDialManagerSetting.setIpDialMode(2);
      ((IpDialManager)ManagerCreator.getManager(IpDialManager.class)).setIpDialSetting(localIpDialManagerSetting);
    }
  }

  public final BaseAdapter createAdapter()
  {
    if (this.a.ab() == 1)
      this.z = true;
    int i1 = ft.d();
    if ((i1 == -2) || (i1 != 0))
      this.y = true;
    Context localContext = this.mContext;
    List localList = this.mDataList;
    return new aiy(localContext, localList);
  }

  public final void loadDataList()
  {
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.mDataList.clear();
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)5);
    this.f.setKey("title_secure");
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)2);
    this.g.setKey("auto_run_preference");
    this.mDataList.add(this.g);
    this.h = new PreferenceAdapterModel();
    this.h.setPreferenceViewType((byte)2);
    this.h.setKey("startup_scan_preference");
    this.mDataList.add(this.h);
    this.i = new PreferenceAdapterModel();
    this.i.setPreferenceViewType((byte)2);
    this.i.setKey("auto_run_preference_show_icon");
    this.mDataList.add(this.i);
    this.j = new PreferenceAdapterModel();
    this.j.setPreferenceViewType((byte)2);
    this.j.setKey("cloud_scan_preference");
    this.mDataList.add(this.j);
    this.k = new PreferenceAdapterModel();
    this.k.setPreferenceViewType((byte)2);
    this.k.setKey("report_sms_preference");
    this.mDataList.add(this.k);
    if (!this.x)
    {
      this.l = new PreferenceAdapterModel();
      this.l.setPreferenceViewType((byte)2);
      this.l.setKey("sms_check_pre");
      this.mDataList.add(this.l);
    }
    this.m = new PreferenceAdapterModel();
    this.m.setPreferenceViewType((byte)2);
    this.m.setKey("wifi_approve_detect_preference");
    this.mDataList.add(this.m);
    this.n = new PreferenceAdapterModel();
    this.n.setPreferenceViewType((byte)2);
    this.n.setKey("website_check_preference");
    this.mDataList.add(this.n);
    this.c = new PreferenceAdapterModel();
    this.c.setPreferenceViewType((byte)5);
    this.c.setKey("key_title_desk_assis");
    this.mDataList.add(this.c);
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)2);
    this.d.setKey("key_check_desk_assis");
    this.mDataList.add(this.d);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)4);
    this.e.setKey("key_desk_style");
    this.mDataList.add(this.e);
    if (!this.x)
    {
      this.o = new PreferenceAdapterModel();
      this.o.setPreferenceViewType((byte)5);
      this.o.setKey("title_location");
      this.mDataList.add(this.o);
      this.p = new PreferenceAdapterModel();
      this.p.setPreferenceViewType((byte)2);
      this.p.setKey("show_location_preference");
      this.mDataList.add(this.p);
    }
    this.q = new PreferenceAdapterModel();
    this.q.setPreferenceViewType((byte)5);
    this.q.setKey("title_update");
    this.mDataList.add(this.q);
    this.r = new PreferenceAdapterModel();
    this.r.setPreferenceViewType((byte)1);
    this.r.setKey("check_info_preference");
    this.mDataList.add(this.r);
    this.s = new PreferenceAdapterModel();
    this.s.setPreferenceViewType((byte)2);
    this.s.setKey("auto_check_info_in_wifi");
    this.mDataList.add(this.s);
    this.t = new PreferenceAdapterModel();
    this.t.setPreferenceViewType((byte)1);
    this.t.setKey("check_version_preference");
    if (qx.a().h() != qx.a.c)
      this.mDataList.add(this.t);
    this.u = new PreferenceAdapterModel();
    this.u.setPreferenceViewType((byte)1);
    this.u.setKey("fun_manager");
    this.v = new PreferenceAdapterModel();
    this.v.setPreferenceViewType((byte)1);
    this.v.setKey("key_about_info");
    this.mDataList.add(this.v);
    this.w = new PreferenceAdapterModel();
    this.w.setPreferenceViewType((byte)12);
    this.w.setKey("exit_service");
    this.w.setShowLine(true);
    this.w.setButtonText(getContext().getString(2131427446));
    this.mDataList.add(this.w);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (paramMenu.findItem(71) == null)
      paramMenu.add(0, 71, 0, QQPimApplication.a().getResources().getString(2131428332)).setIcon(2130838022);
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    if ((str == null) || ((paramView instanceof TitlePreferenceView)))
      return;
    boolean bool18;
    label95: int i8;
    int i9;
    label135: int i10;
    label165: boolean bool5;
    label258: label314: boolean bool6;
    label447: int i3;
    if ((!(paramView instanceof PreferenceView)) || (((PreferenceView)paramView).isEnabled()))
    {
      if (!str.equals("auto_run_preference"))
        break label620;
      PreferenceAdapterModel localPreferenceAdapterModel9 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
      if (((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        break label481;
      bool18 = true;
      localPreferenceAdapterModel9.setChecked(bool18);
      boolean bool19 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
      if (!this.x)
        break label487;
      i8 = 2131427361;
      i9 = 2131427362;
      PreferenceAdapterModel localPreferenceAdapterModel10 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
      Context localContext2 = this.mContext;
      if (!bool19)
        break label498;
      i10 = i8;
      localPreferenceAdapterModel10.setSummary(localContext2.getString(i10));
      CheckBoxPreferenceView localCheckBoxPreferenceView8 = (CheckBoxPreferenceView)paramView;
      if (bool19)
        i9 = i8;
      localCheckBoxPreferenceView8.doClickEventNoAnimation(-1, i9);
      if (!bool19)
        break label505;
      if (!this.a.f())
      {
        this.a.a(true);
        this.b.a(true);
        ha.a(this.mContext, i8);
        ov.a().a(false, true, true);
        nd.a().a(26160);
      }
      if (!str.equals("website_check_preference"))
        break label1734;
      nd.a().a(26309);
      PreferenceAdapterModel localPreferenceAdapterModel2 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
      if (((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        break label1708;
      bool5 = true;
      localPreferenceAdapterModel2.setChecked(bool5);
      bool6 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
      if (bool6)
        break label1714;
      Dialog localDialog4 = new Dialog(this.mContext);
      localDialog4.setTitle(this.mContext.getString(2131428434));
      localDialog4.setMessage(this.mContext.getString(2131428435));
      localDialog4.setPositiveButton(2131430231, new apz(this, localDialog4), 2);
      localDialog4.setNegativeButton(2131430230, new aph(this, paramView, localDialog4), 1);
      localDialog4.setOnCancelListener(new api(this, paramView, localDialog4));
      localDialog4.show();
      CheckBoxPreferenceView localCheckBoxPreferenceView3 = (CheckBoxPreferenceView)paramView;
      if (!bool6)
        break label1726;
      i3 = 2131427352;
      label463: localCheckBoxPreferenceView3.doClickEventNoAnimation(-1, i3);
    }
    label1079: label1726: label1857: 
    while (true)
    {
      getAdapter().notifyDataSetChanged();
      break;
      break;
      label481: bool18 = false;
      break label95;
      label487: i8 = 2131427363;
      i9 = 2131427364;
      break label135;
      label498: i10 = i9;
      break label165;
      label505: Dialog localDialog7 = new Dialog(this.mContext);
      localDialog7.setTitle(this.mContext.getString(2131428432));
      if (this.x)
        localDialog7.setMessage(2131427856);
      while (true)
      {
        localDialog7.setPositiveButton(2131427397, new apt(this, localDialog7), 2);
        localDialog7.setNegativeButton(2131427379, new apu(this, localDialog7, paramView), 1);
        localDialog7.setOnCancelListener(new apv(this, localDialog7, paramView));
        localDialog7.show();
        break;
        localDialog7.setMessage(2131427857);
      }
      label620: if (str.equals("startup_scan_preference"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel8 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
        for (boolean bool17 = true; ; bool17 = false)
        {
          localPreferenceAdapterModel8.setChecked(bool17);
          if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
            break label750;
          if (this.a.ds())
            break;
          this.a.S(true);
          Context localContext1 = this.mContext;
          if (ok.a == null)
            ok.a = new ok(localContext1);
          ok.a.a();
          break;
        }
        label750: Dialog localDialog6 = new Dialog(this.mContext);
        localDialog6.setTitle(this.mContext.getString(2131428434));
        localDialog6.setMessage(this.mContext.getString(2131428071));
        localDialog6.setPositiveButton(2131427397, new apj(this, localDialog6), 2);
        localDialog6.setNegativeButton(2131427379, new apk(this, paramView, localDialog6), 1);
        localDialog6.setOnCancelListener(new apl(this, paramView, localDialog6));
        localDialog6.show();
        break label258;
      }
      if (str.equals("show_location_preference"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel7 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
        for (boolean bool15 = true; ; bool15 = false)
        {
          localPreferenceAdapterModel7.setChecked(bool15);
          boolean bool16 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
          this.a.c(bool16);
          ((CheckBoxPreferenceView)paramView).doClickEventNoAnimation(-1, 2131428308);
          break;
        }
      }
      if (str.equals("auto_run_preference_show_icon"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel6 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        boolean bool13;
        label1003: CheckBoxPreferenceView localCheckBoxPreferenceView7;
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        {
          bool13 = true;
          localPreferenceAdapterModel6.setChecked(bool13);
          boolean bool14 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
          this.a.g(bool14);
          localCheckBoxPreferenceView7 = (CheckBoxPreferenceView)paramView;
          if (!bool14)
            break label1079;
        }
        for (int i7 = 2131427366; ; i7 = 2131427367)
        {
          localCheckBoxPreferenceView7.doClickEventNoAnimation(-1, i7);
          ov.a().a(false, true, false);
          break;
          bool13 = false;
          break label1003;
        }
      }
      if (str.equals("cloud_scan_preference"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel5 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        boolean bool11;
        label1134: label1265: CheckBoxPreferenceView localCheckBoxPreferenceView6;
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        {
          bool11 = true;
          localPreferenceAdapterModel5.setChecked(bool11);
          boolean bool12 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
          if (bool12)
            break label1298;
          Dialog localDialog5 = new Dialog(this.mContext);
          localDialog5.setTitle(this.mContext.getString(2131428561));
          localDialog5.setMessage(this.mContext.getString(2131428037));
          localDialog5.setPositiveButton(2131427397, new apw(this, localDialog5), 2);
          localDialog5.setNegativeButton(2131427379, new apx(this, paramView, localDialog5), 1);
          localDialog5.setOnCancelListener(new apy(this, paramView, localDialog5));
          localDialog5.show();
          localCheckBoxPreferenceView6 = (CheckBoxPreferenceView)paramView;
          if (!bool12)
            break label1309;
        }
        for (int i6 = 2131427352; ; i6 = 2131427353)
        {
          localCheckBoxPreferenceView6.doClickEventNoAnimation(-1, i6);
          break;
          bool11 = false;
          break label1134;
          this.a.p(true);
          break label1265;
        }
      }
      if (str.equals("report_sms_preference"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel4 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        boolean bool9;
        label1364: CheckBoxPreferenceView localCheckBoxPreferenceView5;
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        {
          bool9 = true;
          localPreferenceAdapterModel4.setChecked(bool9);
          boolean bool10 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
          this.a.q(bool10);
          localCheckBoxPreferenceView5 = (CheckBoxPreferenceView)paramView;
          if (!bool10)
            break label1431;
        }
        for (int i5 = 2131427352; ; i5 = 2131427353)
        {
          localCheckBoxPreferenceView5.doClickEventNoAnimation(-1, i5);
          break;
          bool9 = false;
          break label1364;
        }
      }
      if (str.equals("sms_check_pre"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel3 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        boolean bool7;
        label1486: CheckBoxPreferenceView localCheckBoxPreferenceView4;
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        {
          bool7 = true;
          localPreferenceAdapterModel3.setChecked(bool7);
          boolean bool8 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
          jo.a().b.putBoolean("isopen", bool8).commit();
          localCheckBoxPreferenceView4 = (CheckBoxPreferenceView)paramView;
          if (!bool8)
            break label1565;
        }
        for (int i4 = 2131427352; ; i4 = 2131427353)
        {
          localCheckBoxPreferenceView4.doClickEventNoAnimation(-1, i4);
          break;
          bool7 = false;
          break label1486;
        }
      }
      if (!str.equals("wifi_approve_detect_preference"))
        break label258;
      PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
      boolean bool1;
      label1620: boolean bool2;
      CheckBoxPreferenceView localCheckBoxPreferenceView1;
      if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
      {
        bool1 = true;
        localPreferenceAdapterModel1.setChecked(bool1);
        bool2 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
        this.a.r(bool2);
        localCheckBoxPreferenceView1 = (CheckBoxPreferenceView)paramView;
        if (!bool2)
          break label1700;
      }
      for (int i1 = 2131427352; ; i1 = 2131427353)
      {
        localCheckBoxPreferenceView1.doClickEventNoAnimation(-1, i1);
        if (bool2)
          break;
        ov.a().a(21);
        break;
        bool1 = false;
        break label1620;
      }
      bool5 = false;
      break label314;
      this.a.P(bool6);
      break label447;
      i3 = 2131427353;
      break label463;
      label1734: if (str.equals("check_info_preference"))
      {
        new acg(this.mContext, true, false).c();
      }
      else
      {
        if (str.equals("auto_check_info_in_wifi"))
        {
          boolean bool4;
          CheckBoxPreferenceView localCheckBoxPreferenceView2;
          if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
          {
            bool4 = true;
            ((PreferenceAdapterModel)this.mDataList.get(paramInt)).setChecked(bool4);
            this.a.Q(bool4);
            localCheckBoxPreferenceView2 = (CheckBoxPreferenceView)paramView;
            if (!bool4)
              break label1857;
          }
          for (int i2 = 2131427352; ; i2 = 2131427353)
          {
            localCheckBoxPreferenceView2.doClickEventNoAnimation(-1, i2);
            break;
            bool4 = false;
            break label1797;
          }
        }
        if (str.equals("check_version_preference"))
        {
          ((PreferenceView)paramView).doClickEvent(this.mContext.getString(2131428318), null);
          new ss(this.mContext, true, false).c();
          ho localho = ho.a();
          Long.valueOf(System.currentTimeMillis());
          localho.m();
        }
        else if (str.equals("key_about_info"))
        {
          nd.a().a(26257);
          Intent localIntent2 = new Intent();
          localIntent2.setClass(this.mContext, AboutActivity.class);
          this.mContext.startActivity(localIntent2);
        }
        else if (!str.equals("location_shower_setting"))
        {
          if (str.equals("fun_manager"))
          {
            Dialog localDialog1 = new Dialog(this.mContext);
            localDialog1.setTitle(2131427692);
            localDialog1.setMessage(2131429811);
            localDialog1.setNegativeButton(2131429808, new apq(this, localDialog1), 1);
            localDialog1.setPositiveButton(2131429807, new aps(this, localDialog1), 2);
            localDialog1.show();
          }
          else if (str.equals("key_check_desk_assis"))
          {
            if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
            for (boolean bool3 = true; ; bool3 = false)
            {
              ((PreferenceAdapterModel)this.mDataList.get(paramInt)).setChecked(bool3);
              this.a.I(bool3);
              if (!bool3)
                break label2203;
              Intent localIntent1 = new Intent();
              localIntent1.setClass(this.mContext, SecureService.class);
              localIntent1.setAction("switch_desk_assis_window");
              this.mContext.startService(localIntent1);
              nd.a().a(26162);
              break;
            }
            nd.a().a(26161);
          }
          else
          {
            if (str.equals("key_desk_style"))
            {
              Dialog localDialog2 = new Dialog(this.mContext);
              localDialog2.setTitle(2131430045);
              View localView1 = LayoutInflater.from(this.mContext).inflate(2130903050, null);
              RadioGroup localRadioGroup = (RadioGroup)localView1.findViewById(2131230758);
              if (this.a.dA() == ho.a.a)
                localRadioGroup.check(2131230759);
              while (true)
              {
                localDialog2.setView(localView1);
                localDialog2.setPositiveButton(2131427397, new apm(this, localRadioGroup, localDialog2), 1);
                localDialog2.setPositiveButton(2131427379, new apn(localDialog2), 2);
                localDialog2.show();
                nd.a().a(26405);
                break;
                localRadioGroup.check(2131230760);
              }
            }
            if (str.equals("exit_service"))
            {
              Dialog localDialog3 = new Dialog(this.mContext);
              localDialog3.setTitle(this.mContext.getString(2131428432));
              View localView2 = LayoutInflater.from(this.mContext).inflate(2130903051, null);
              ((TextView)localView2.findViewById(2131230761)).setText(2131427858);
              CheckBoxView localCheckBoxView = (CheckBoxView)localView2.findViewById(2131230739);
              localCheckBoxView.setChecked(true);
              ((TextView)localView2.findViewById(2131230748)).setText(this.mContext.getResources().getString(2131427448));
              localDialog3.setContentView(localView2);
              localDialog3.setPositiveButton(2131427397, new apg(this, localDialog3, localCheckBoxView), 2);
              localDialog3.setNegativeButton(2131427379, new apr(localDialog3), 1);
              localDialog3.show();
            }
          }
        }
      }
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 71:
    }
    while (true)
    {
      return true;
      this.a.a(true);
      this.b.a(true);
      this.a.g(true);
      this.a.v(true);
      this.a.m(-1);
      this.a.f(true);
      this.a.e(true);
      this.a.p(true);
      this.a.q(true);
      jo.a().b.putBoolean("isopen", true).commit();
      this.a.r(true);
      this.a.c(true);
      this.a.b(0);
      this.a.h(true);
      this.a.b(false);
      this.a.a(this.mContext.getString(2131428584));
      this.a.I(true);
      this.a.P(true);
      this.a.Q(true);
      this.a.a(ho.a.a);
      this.a.S(true);
      Context localContext = this.mContext;
      if (ok.a == null)
        ok.a = new ok(localContext);
      ok.a.a();
      Intent localIntent = new Intent();
      localIntent.setClass(this.mContext, SecureService.class);
      localIntent.setAction("switch_desk_assis_window");
      this.mContext.startService(localIntent);
      a();
      getAdapter().notifyDataSetChanged();
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    return false;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    a();
    getAdapter().notifyDataSetChanged();
  }

  public final void onTabResume()
  {
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427443);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apf
 * JD-Core Version:    0.6.2
 */