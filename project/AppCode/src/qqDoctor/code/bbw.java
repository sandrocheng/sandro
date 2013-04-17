import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;

public final class bbw extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private ho a = ho.a();
  private PreferenceAdapterModel b;
  private Dialog c;

  public bbw(Context paramContext)
  {
    super(paramContext);
  }

  public final BaseAdapter createAdapter()
  {
    return new bbw.a(this.mDataList, this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void loadDataList()
  {
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = new PreferenceAdapterModel();
    this.b.setPreferenceViewType((byte)2);
    this.b.setKey("function_on_off");
    this.b.setTitle(this.mContext.getString(2131430192));
    this.b.setShowLine(true);
    this.mDataList.add(this.b);
    this.b.setChecked(this.a.di());
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    if (!localPreferenceAdapterModel.isEnabled())
      return;
    boolean bool;
    if (localPreferenceAdapterModel.getKey().equals("function_on_off"))
    {
      ho localho = this.a;
      if (localPreferenceAdapterModel.isChecked())
        break label172;
      bool = true;
      label54: localho.O(bool);
      if (!this.a.di())
        break label178;
      if (this.c == null)
      {
        this.c = new Dialog(this.mContext);
        this.c.setCancelable(false);
        this.c.addProgressDialog();
        this.c.setMessage(2131429559);
      }
      this.c.show();
      xi.b(this.mContext, new bbx(this));
    }
    while (true)
    {
      nd.a().a(26411);
      this.b.setChecked(this.a.di());
      getAdapter().notifyDataSetChanged();
      break;
      label172: bool = false;
      break label54;
      label178: xi.b(false);
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return true;
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427697);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a extends BasePreferenceAdapter
  {
    public a(ListPreferenceView.OnListPreferenceChangeListener arg2)
    {
      super(localList, localOnListPreferenceChangeListener);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbw
 * JD-Core Version:    0.6.2
 */