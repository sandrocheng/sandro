import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import java.util.Iterator;
import java.util.List;

public final class akb extends BasePreferenceAdapter
{
  private String[] a;
  private String[] b;
  private List<PreferenceAdapterModel> c;
  private it d;

  public akb(Context paramContext, List<PreferenceAdapterModel> paramList, ListPreferenceView.OnListPreferenceChangeListener paramOnListPreferenceChangeListener)
  {
    super(paramContext, paramList, paramOnListPreferenceChangeListener);
    this.c = paramList;
    this.d = new iu(QQPimApplication.a());
  }

  public final void a()
  {
    this.c.clear();
    PreferenceAdapterModel localPreferenceAdapterModel1 = new PreferenceAdapterModel();
    localPreferenceAdapterModel1.setPreferenceViewType((byte)5);
    localPreferenceAdapterModel1.setKey("monitor_setting");
    localPreferenceAdapterModel1.setTitle(this.mContext.getString(2131428107));
    this.c.add(localPreferenceAdapterModel1);
    PreferenceAdapterModel localPreferenceAdapterModel2 = new PreferenceAdapterModel();
    localPreferenceAdapterModel2.setPreferenceViewType((byte)2);
    localPreferenceAdapterModel2.setKey("network_switch");
    localPreferenceAdapterModel2.setTitle(this.mContext.getString(2131428191));
    this.c.add(localPreferenceAdapterModel2);
    PreferenceAdapterModel localPreferenceAdapterModel3 = new PreferenceAdapterModel();
    localPreferenceAdapterModel3.setPreferenceViewType((byte)2);
    localPreferenceAdapterModel3.setKey("show_network_warrnig");
    localPreferenceAdapterModel3.setTitle(this.mContext.getString(2131428265));
    localPreferenceAdapterModel3.setSummary(this.mContext.getString(2131428266));
    this.c.add(localPreferenceAdapterModel3);
    PreferenceAdapterModel localPreferenceAdapterModel4 = new PreferenceAdapterModel();
    localPreferenceAdapterModel4.setPreferenceViewType((byte)2);
    localPreferenceAdapterModel4.setKey("show_networktraffic_window");
    localPreferenceAdapterModel4.setTitle(this.mContext.getString(2131428273));
    this.c.add(localPreferenceAdapterModel4);
    if (!di.b().b())
    {
      PreferenceAdapterModel localPreferenceAdapterModel5 = new PreferenceAdapterModel();
      localPreferenceAdapterModel5.setPreferenceViewType((byte)2);
      localPreferenceAdapterModel5.setKey("close_network_connection_when_runout");
      localPreferenceAdapterModel5.setTitle(this.mContext.getString(2131428267));
      this.c.add(localPreferenceAdapterModel5);
    }
    PreferenceAdapterModel localPreferenceAdapterModel6 = new PreferenceAdapterModel();
    localPreferenceAdapterModel6.setPreferenceViewType((byte)5);
    localPreferenceAdapterModel6.setKey("traffic_adjust_setting");
    localPreferenceAdapterModel6.setTitle(this.mContext.getString(2131428108));
    this.c.add(localPreferenceAdapterModel6);
    PreferenceAdapterModel localPreferenceAdapterModel7 = new PreferenceAdapterModel();
    localPreferenceAdapterModel7.setPreferenceViewType((byte)1);
    localPreferenceAdapterModel7.setKey("traffic_auto_adjust_flag");
    localPreferenceAdapterModel7.setTitle(this.mContext.getString(2131428294));
    this.c.add(localPreferenceAdapterModel7);
    PreferenceAdapterModel localPreferenceAdapterModel8 = new PreferenceAdapterModel();
    localPreferenceAdapterModel8.setPreferenceViewType((byte)4);
    localPreferenceAdapterModel8.setKey("gprs_used_for_month");
    localPreferenceAdapterModel8.setTitle(this.mContext.getString(2131428269));
    this.c.add(localPreferenceAdapterModel8);
    PreferenceAdapterModel localPreferenceAdapterModel9 = new PreferenceAdapterModel();
    localPreferenceAdapterModel9.setPreferenceViewType((byte)2);
    localPreferenceAdapterModel9.setKey("traffic_auto_adjust_schedule_flag");
    localPreferenceAdapterModel9.setTitle(this.mContext.getString(2131428295));
    localPreferenceAdapterModel9.setSummary(this.mContext.getString(2131428296));
    this.c.add(localPreferenceAdapterModel9);
    PreferenceAdapterModel localPreferenceAdapterModel10 = new PreferenceAdapterModel();
    localPreferenceAdapterModel10.setPreferenceViewType((byte)5);
    localPreferenceAdapterModel10.setKey("flow_package_setting");
    localPreferenceAdapterModel10.setTitle(this.mContext.getString(2131428109));
    this.c.add(localPreferenceAdapterModel10);
    PreferenceAdapterModel localPreferenceAdapterModel11 = new PreferenceAdapterModel();
    localPreferenceAdapterModel11.setPreferenceViewType((byte)4);
    localPreferenceAdapterModel11.setKey("traffic_auto_adjust_config");
    localPreferenceAdapterModel11.setTitle(this.mContext.getString(2131429151));
    this.c.add(localPreferenceAdapterModel11);
    PreferenceAdapterModel localPreferenceAdapterModel12 = new PreferenceAdapterModel();
    localPreferenceAdapterModel12.setPreferenceViewType((byte)4);
    localPreferenceAdapterModel12.setKey("gprs_total_for_month");
    localPreferenceAdapterModel12.setTitle(this.mContext.getString(2131428263));
    this.c.add(localPreferenceAdapterModel12);
    PreferenceAdapterModel localPreferenceAdapterModel13 = new PreferenceAdapterModel();
    localPreferenceAdapterModel13.setPreferenceViewType((byte)3);
    localPreferenceAdapterModel13.setKey("gprs_closing_day");
    localPreferenceAdapterModel13.setTitle(this.mContext.getString(2131428264));
    this.c.add(localPreferenceAdapterModel13);
  }

  public final void b()
  {
    Iterator localIterator1 = this.c.iterator();
    while (localIterator1.hasNext())
    {
      PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)localIterator1.next();
      if ("network_switch".equals(localPreferenceAdapterModel1.getKey()))
      {
        boolean bool2 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
        localPreferenceAdapterModel1.setChecked(bool2);
        Iterator localIterator2 = this.c.iterator();
        while (localIterator2.hasNext())
        {
          PreferenceAdapterModel localPreferenceAdapterModel2 = (PreferenceAdapterModel)localIterator2.next();
          if (!localPreferenceAdapterModel2.getKey().equals("network_switch"))
            localPreferenceAdapterModel2.setEnabled(bool2);
        }
      }
      else if ("show_network_warrnig".equals(localPreferenceAdapterModel1.getKey()))
      {
        localPreferenceAdapterModel1.setChecked(this.d.h());
        if (this.d.getTotalForMonth() == 0L)
          localPreferenceAdapterModel1.setEnabled(false);
      }
      else if ("show_networktraffic_window".equals(localPreferenceAdapterModel1.getKey()))
      {
        localPreferenceAdapterModel1.setChecked(this.d.m());
      }
      else
      {
        if ("close_network_connection_when_runout".equals(localPreferenceAdapterModel1.getKey()))
        {
          localPreferenceAdapterModel1.setChecked(this.d.o());
          if (this.d.getTotalForMonth() > 0L);
          for (boolean bool1 = true; ; bool1 = false)
          {
            localPreferenceAdapterModel1.setEnabled(bool1);
            break;
          }
        }
        if ("traffic_auto_adjust_schedule_flag".equals(localPreferenceAdapterModel1.getKey()))
        {
          localPreferenceAdapterModel1.setChecked(this.d.j());
        }
        else if ("traffic_auto_adjust_config".equals(localPreferenceAdapterModel1.getKey()))
        {
          if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
            localPreferenceAdapterModel1.setEnabled(true);
          else
            localPreferenceAdapterModel1.setEnabled(false);
        }
        else if ("gprs_used_for_month".equals(localPreferenceAdapterModel1.getKey()))
        {
          localPreferenceAdapterModel1.setSummary(a.c(this.d.getUsedForMonth()));
        }
        else
        {
          if ("gprs_total_for_month".equals(localPreferenceAdapterModel1.getKey()))
          {
            long l = this.d.getTotalForMonth();
            if (l == 0L);
            for (String str = this.mContext.getString(2131429079); ; str = a.c(l))
            {
              localPreferenceAdapterModel1.setSummary(str);
              break;
            }
          }
          if ("gprs_closing_day".equals(localPreferenceAdapterModel1.getKey()))
          {
            int i = -1 + this.d.getClosingDayForMonth();
            if ((this.a == null) || (this.b == null))
            {
              this.a = new String[31];
              this.b = new String[31];
              for (int j = 0; j < 31; j++)
              {
                this.b[j] = (j + 1);
                this.a[j] = (this.b[j] + this.mContext.getResources().getString(2131428395));
              }
            }
            localPreferenceAdapterModel1.setEntries(this.a);
            localPreferenceAdapterModel1.setEntryValues(this.b);
            localPreferenceAdapterModel1.setSummary(this.a[i]);
            localPreferenceAdapterModel1.setSelectItemIndex(-1 + this.d.getClosingDayForMonth());
          }
        }
      }
    }
    notifyDataSetChanged();
  }

  public final int getItemViewType(int paramInt)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.dataList.get(paramInt);
    int i;
    if (localPreferenceAdapterModel.getPreferenceViewType() == 4)
      i = 0;
    while (true)
    {
      return i;
      if (localPreferenceAdapterModel.getPreferenceViewType() == 2)
        i = 1;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 3)
        i = 2;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 5)
        i = 3;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 1)
        i = 4;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 6)
        i = 5;
      else
        i = 6;
    }
  }

  public final int getViewTypeCount()
  {
    return 6;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akb
 * JD-Core Version:    0.6.2
 */