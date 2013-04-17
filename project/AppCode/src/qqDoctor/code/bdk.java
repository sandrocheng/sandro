import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import java.util.List;

public final class bdk extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private PreferenceAdapterModel a;
  private PreferenceAdapterModel b;
  private PreferenceAdapterModel c;
  private PreferenceAdapterModel d;
  private Dialog e;
  private Thread f;
  private ho g = ho.a();
  private jf h = new jf();
  private Handler i = new bdo(this);

  public bdk(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    if (this.g.by())
      this.a.setSummary(this.mContext.getString(2131427418));
    while (true)
    {
      this.a.setChecked(this.g.by());
      this.b.setEnabled(this.g.by());
      this.b.setSummary(this.mContext.getString(2131429042));
      this.b.setChecked(this.g.bz());
      this.c.setEnabled(this.g.by());
      this.c.setSelectItemIndex(this.g.bA());
      this.c.setEntries(this.mContext.getResources().getStringArray(2131165241));
      this.c.setEntryValues(this.mContext.getResources().getStringArray(2131165217));
      this.c.setSummary(this.c.getEntry());
      this.d.setEnabled(this.g.by());
      this.d.setSelectItemIndex(this.g.bB());
      this.d.setEntries(this.mContext.getResources().getStringArray(2131165242));
      this.d.setEntryValues(this.mContext.getResources().getStringArray(2131165218));
      this.d.setSummary(this.d.getEntry());
      return;
      this.a.setSummary(this.mContext.getString(2131427419));
    }
  }

  public final void a(int paramInt)
  {
    bdr.a(this.mContext, paramInt);
  }

  public final BaseAdapter createAdapter()
  {
    return new BasePreferenceAdapter(this.mContext, this.mDataList, this);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = new PreferenceAdapterModel();
    this.a.setPreferenceViewType((byte)2);
    this.a.setKey("pemission_monior");
    this.a.setTitle(this.mContext.getString(2131427958));
    this.a.setShowLine(true);
    this.mDataList.add(this.a);
    this.b = new PreferenceAdapterModel();
    this.b.setPreferenceViewType((byte)2);
    this.b.setKey("notificationbar_remind");
    this.b.setTitle(this.mContext.getString(2131427959));
    this.b.setShowLine(true);
    this.mDataList.add(this.b);
    this.c = new PreferenceAdapterModel();
    this.c.setPreferenceViewType((byte)3);
    this.c.setKey("tip_over_time");
    this.c.setTitle(this.mContext.getString(2131428357));
    this.c.setShowLine(true);
    this.mDataList.add(this.c);
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)3);
    this.d.setKey("operator_over_time");
    this.d.setTitle(this.mContext.getString(2131428240));
    this.d.setShowLine(true);
    this.mDataList.add(this.d);
    this.e = new Dialog(this.mContext);
    this.e.setCancelable(true);
    this.e.addProgressDialog();
    this.e.setMessage(2131429011);
    a();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int j = 1;
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    if (!localPreferenceAdapterModel.isEnabled());
    label333: 
    while (true)
    {
      return;
      if (localPreferenceAdapterModel.getKey().equals("pemission_monior"))
        if (localPreferenceAdapterModel.isChecked())
        {
          Dialog localDialog = new Dialog(this.mContext);
          localDialog.setTitle(this.mContext.getString(2131428561));
          localDialog.setMessage(2131427826);
          localDialog.setPositiveButton(2131427397, new bdl(this, localDialog), 2);
          localDialog.setNegativeButton(2131427379, new bdm(localDialog), 2);
          localDialog.show();
        }
      while (true)
      {
        if (j == 0)
          break label333;
        a();
        getAdapter().notifyDataSetChanged();
        break;
        nd.a().a(26106);
        if (!((PermissionManager)ManagerCreator.getManager(PermissionManager.class)).isFinishInit())
        {
          this.e.show();
          xi.a(this.mContext, new bdn(this));
        }
        else
        {
          this.g.z(j);
          this.g.d(j);
          xi.a(j);
          if (!this.h.a())
          {
            this.i.sendEmptyMessage(0);
          }
          else
          {
            this.i.sendEmptyMessage(j);
            continue;
            if (localPreferenceAdapterModel.getKey().equals("notificationbar_remind"))
            {
              ho localho = this.g;
              if (!localPreferenceAdapterModel.isChecked());
              int n;
              for (int m = j; ; n = 0)
              {
                localho.A(m);
                break;
              }
            }
            if ((localPreferenceAdapterModel.getKey().equals("tip_over_time")) || (localPreferenceAdapterModel.getKey().equals("operator_over_time")))
            {
              ((ListPreferenceView)paramView).doClickEvent();
              int k = 0;
            }
          }
        }
      }
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    int j = ((Integer)paramObject).intValue();
    String str = paramListPreferenceView.getKey().toString();
    if (str.equals("tip_over_time"))
    {
      this.c.setSelectItemIndex(j);
      this.c.setSummary(this.c.getEntry());
      this.g.u(j);
    }
    while (true)
    {
      getAdapter().notifyDataSetChanged();
      return true;
      if (str.equals("operator_over_time"))
      {
        this.d.setSelectItemIndex(j);
        this.d.setSummary(this.d.getEntry());
        this.g.v(j);
      }
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427697);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdk
 * JD-Core Version:    0.6.2
 */