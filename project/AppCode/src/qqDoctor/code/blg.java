import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.ui.activity.HelpActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;

public final class blg extends BaseListView<PreferenceAdapterModel>
{
  private PreferenceAdapterModel a;

  public blg(Context paramContext)
  {
    super(paramContext);
  }

  public final BaseAdapter createAdapter()
  {
    return new ahx(this.mContext, this.mDataList);
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
    this.a = new PreferenceAdapterModel();
    this.a.setPreferenceViewType((byte)2);
    this.a.setKey("key_check_service_mod");
    this.a.setSummary(this.mContext.getString(2131428325));
    this.mDataList.add(this.a);
    getListView().setPadding(0, 0, 0, 0);
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    HelpActivity.a(paramMenu);
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!(paramView instanceof PreferenceView));
    String str;
    do
    {
      return;
      str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    }
    while ((str == null) || (!((PreferenceView)paramView).isEnabled()) || (!str.equals("key_check_service_mod")));
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
    for (boolean bool1 = true; ; bool1 = false)
    {
      localPreferenceAdapterModel.setChecked(bool1);
      boolean bool2 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
      jo.a().b.putBoolean("isopen", bool2).commit();
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131428325);
      break;
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    paramMenuModel.getId();
    return true;
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    this.a.setTitle(this.mContext.getString(2131428306));
    boolean bool = jo.a().a.getBoolean("isopen", true);
    this.a.setShowLine(true);
    this.a.setChecked(bool);
    getAdapter().notifyDataSetChanged();
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427697);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blg
 * JD-Core Version:    0.6.2
 */