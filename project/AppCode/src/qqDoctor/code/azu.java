import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.method.DigitsKeyListener;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.ui.activity.network.NetWorkManagerActivity;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import java.util.List;

public final class azu extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  public static boolean a;
  public static boolean b;
  private akb c;
  private iu d;
  private NetworkManager e;
  private NetSettingManager f;
  private wr g;
  private RunableTaskManager h;
  private long i = -1L;
  private long j = -1L;
  private dv<Object> k = new azv(this);
  private final BroadcastReceiver l = new baa(this);

  public azu(Context paramContext)
  {
    super(paramContext);
  }

  public static void a(Context paramContext)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(paramContext.getString(2131428573));
    String str1 = "";
    String str2 = "";
    String[] arrayOfString = wr.a(paramContext).h();
    if (arrayOfString != null)
    {
      str1 = arrayOfString[0];
      str2 = arrayOfString[1];
    }
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903077, null);
    localDialog.setContentView(localView);
    EditText localEditText1 = (EditText)localView.findViewById(2131230818);
    localEditText1.setText(str2);
    EditText localEditText2 = (EditText)localView.findViewById(2131230819);
    localEditText2.setText(str1);
    localDialog.setPositiveButton(2131427397, new azy(localEditText2, localEditText1, paramContext, str1, str2, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new azz(localDialog), 2);
    localDialog.show();
  }

  public final BaseAdapter createAdapter()
  {
    this.c = new akb(this.mContext, this.mDataList, this);
    return this.c;
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, NetWorkManagerActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    fs.a();
    this.d = new iu(QQPimApplication.a());
    this.e = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.g = wr.a(this.mContext);
    this.h = ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class));
    if (this.f == null)
      this.f = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class));
    this.c.a();
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    if (!(paramView instanceof PreferenceView));
    String str;
    do
    {
      return;
      str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    }
    while ((str == null) || (!((PreferenceView)paramView).isEnabled()));
    this.c.getClass();
    boolean bool5;
    if (str.equals("network_switch"))
    {
      boolean bool4 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
      if (!bool4)
      {
        bool5 = bool1;
        label90: xb.a(bool5, bool1);
        if (this.d.e())
          this.d.f();
        if (bool4)
        {
          this.d.e(false);
          Intent localIntent2 = new Intent();
          localIntent2.setClass(this.mContext, SecureService.class);
          this.d.f(bool1);
          localIntent2.setAction("switch_suspession_window");
          this.mContext.startService(localIntent2);
        }
      }
    }
    while (true)
    {
      this.c.b();
      break;
      bool5 = false;
      break label90;
      this.c.getClass();
      if (str.equals("gprs_total_for_month"))
      {
        nd.a().a(26224);
        Dialog localDialog2 = new Dialog(this.mContext);
        localDialog2.setTitle(2131428263);
        View localView2 = ((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903067, new LinearLayout(this.mContext));
        localDialog2.setContentView(localView2);
        ButtonView localButtonView2 = (ButtonView)localView2.findViewById(2131230794);
        localButtonView2.setText(this.mContext.getString(2131428272));
        localButtonView2.setOnClickListener(new bad());
        new LinearLayout(this.mContext).setOrientation(0);
        EditText localEditText2 = (EditText)localView2.findViewById(2131230793);
        localEditText2.setInputType(2);
        InputFilter[] arrayOfInputFilter2 = new InputFilter[bool1];
        arrayOfInputFilter2[0] = new InputFilter.LengthFilter(12);
        localEditText2.setFilters(arrayOfInputFilter2);
        localEditText2.setKeyListener(new DigitsKeyListener(false, false));
        int n = (int)(this.d.getTotalForMonth() / 1048576L);
        if (n >= 0)
          localEditText2.setText(String.valueOf(n));
        localDialog2.setPositiveButton(2131427397, new bae(this, localEditText2, n, localDialog2), 2);
        localDialog2.setNegativeButton(2131427379, new baf(localDialog2), 2);
        localDialog2.show();
      }
      else
      {
        this.c.getClass();
        if (str.equals("gprs_closing_day"))
        {
          nd.a().a(26225);
          ((ListPreferenceView)paramView).doClickEvent();
          this.d.q();
          break;
        }
        this.c.getClass();
        if (str.equals("traffic_auto_adjust_config"))
        {
          nd.a().a(26219);
          fs.a(getActivity(), fs.b, null);
        }
        else
        {
          this.c.getClass();
          if (str.equals("show_network_warrnig"))
          {
            iu localiu3 = this.d;
            if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
            while (true)
            {
              localiu3.b(bool1);
              break;
              bool1 = false;
            }
          }
          this.c.getClass();
          if (str.equals("close_network_connection_when_runout"))
          {
            iu localiu2 = this.d;
            if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
            while (true)
            {
              localiu2.g(bool1);
              break;
              bool1 = false;
            }
          }
          this.c.getClass();
          if (str.equals("gprs_used_for_month"))
          {
            nd.a().a(26220);
            Dialog localDialog1 = new Dialog(this.mContext);
            localDialog1.setTitle(2131428269);
            View localView1 = ((LayoutInflater)this.mContext.getSystemService("layout_inflater")).inflate(2130903067, new LinearLayout(this.mContext));
            localDialog1.setContentView(localView1);
            ButtonView localButtonView1 = (ButtonView)localView1.findViewById(2131230794);
            EditText localEditText1 = (EditText)localView1.findViewById(2131230793);
            localEditText1.setInputType(2);
            localEditText1.setBackgroundResource(2130837696);
            int m = (int)(0.5F + 8.0F * this.mContext.getResources().getDisplayMetrics().density);
            localEditText1.setPadding(m, m, m, m);
            InputFilter[] arrayOfInputFilter1 = new InputFilter[bool1];
            arrayOfInputFilter1[0] = new InputFilter.LengthFilter(12);
            localEditText1.setFilters(arrayOfInputFilter1);
            localEditText1.setKeyListener(new DigitsKeyListener(false, bool1));
            localButtonView1.setOnClickListener(new bag(this, localDialog1));
            localDialog1.setPositiveButton(2131427397, new bah(this, localEditText1, paramInt, localDialog1), 2);
            localDialog1.setNegativeButton(2131427379, new azx(localDialog1), 2);
            localDialog1.show();
          }
          else
          {
            this.c.getClass();
            if (str.equals("show_networktraffic_window"))
            {
              if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
              {
                label983: this.d.e(bool1);
                if (!bool1)
                  break label1064;
                this.e.setInterval(fs.c);
              }
              while (true)
              {
                Intent localIntent1 = new Intent();
                localIntent1.setClass(this.mContext, SecureService.class);
                localIntent1.setAction("switch_suspession_window");
                this.mContext.startService(localIntent1);
                this.e.notifyConfigChange();
                break;
                bool1 = false;
                break label983;
                label1064: this.e.setInterval(fs.d);
              }
            }
            this.c.getClass();
            if (!str.equals("traffic_auto_adjust_schedule_flag"))
              break label1264;
            boolean bool3 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
            if (this.d.i())
            {
              iu localiu1 = this.d;
              if (!bool3);
              while (true)
              {
                localiu1.d(bool1);
                if (bool3)
                  break label1173;
                this.h.addTask(new bab(this), 0L);
                break;
                bool1 = false;
              }
              label1173: nd.a().a(200);
            }
            else
            {
              if ((this.d.i()) || (this.d.getTotalForMonth() > 0L))
                break label1221;
              fs.a(getActivity(), fs.a, null);
            }
          }
        }
      }
    }
    label1221: Bundle localBundle2;
    if (this.d.g())
    {
      localBundle2 = new Bundle();
      localBundle2.putInt("guide_type", 2);
    }
    while (true)
    {
      fs.a(getActivity(), fs.b, localBundle2);
      break;
      label1264: this.c.getClass();
      if (!str.equals("traffic_auto_adjust_flag"))
        break;
      if (this.d.i())
      {
        this.h.addTask(new bac(this), 0L);
        break;
      }
      if ((!this.d.i()) && (this.d.getTotalForMonth() <= 0L))
      {
        fs.a(getActivity(), fs.a, null);
        break;
      }
      boolean bool2 = this.d.g();
      Bundle localBundle1 = null;
      if (bool2)
      {
        localBundle1 = new Bundle();
        localBundle1.putInt("guide_type", 2);
      }
      fs.a(getActivity(), fs.b, localBundle1);
      break;
      localBundle2 = null;
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    int m = ((Integer)paramObject).intValue();
    CharSequence localCharSequence = paramListPreferenceView.getKey();
    this.c.getClass();
    if ("gprs_closing_day".equals(localCharSequence))
    {
      this.d.setClosingDayForMonth(m + 1);
      a = false;
      b = false;
      ((PreferenceAdapterModel)this.mDataList.get(0)).setSelectItemIndex(m);
      ((PreferenceAdapterModel)this.mDataList.get(0)).setSummary(((PreferenceAdapterModel)this.mDataList.get(0)).getEntry());
      long l1 = this.d.u();
      this.d.setUsedForMonth(l1);
      we.a = true;
      this.e.notifyConfigChange();
      this.c.b();
    }
    return true;
  }

  public final void onPause()
  {
    this.mContext.unregisterReceiver(this.l);
    wr.a(this.mContext).b(this.k);
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    this.c.b();
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.intent.action.ANY_DATA_STATE");
    this.mContext.registerReceiver(this.l, localIntentFilter);
    nd.a().a(26);
    wr.a(this.mContext).a(this.k);
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131428000);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428192);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azu
 * JD-Core Version:    0.6.2
 */