import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.ui.activity.FilterCustomizeSettingActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;

public final class anp extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private ahz a;
  private int b = 0;
  private hh c = hh.a();
  private ho d = ho.a();
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private PreferenceAdapterModel g;
  private PreferenceAdapterModel h;
  private PreferenceAdapterModel i;

  public anp(Context paramContext)
  {
    super(paramContext);
  }

  private void a(String paramString, View paramView)
  {
    if ((this.e.isChecked()) && (!this.e.getKey().equals(paramString)))
    {
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427862);
      this.e.setChecked(false);
    }
    if ((this.f.isChecked()) && (!this.f.getKey().equals(paramString)))
    {
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427863);
      this.f.setChecked(false);
    }
    if ((this.g.isChecked()) && (!this.g.getKey().equals(paramString)))
    {
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427864);
      this.g.setChecked(false);
    }
    if ((this.h.isChecked()) && (!this.h.getKey().equals(paramString)))
    {
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427865);
      this.h.setChecked(false);
    }
  }

  public final BaseAdapter createAdapter()
  {
    this.a = new ahz(this.mContext, this.mDataList, this);
    return this.a;
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)2);
    this.e.setKey("key_standard_mod");
    this.e.setOnCheckedNoClick(true);
    this.e.setCheckBoxType(2);
    this.mDataList.add(this.e);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)2);
    this.f.setKey("key_block_blacklist_only");
    this.f.setOnCheckedNoClick(true);
    this.f.setCheckBoxType(2);
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)2);
    this.g.setKey("key_accept_whitelist_only");
    this.g.setOnCheckedNoClick(true);
    this.g.setCheckBoxType(2);
    this.mDataList.add(this.g);
    this.h = new PreferenceAdapterModel();
    this.h.setPreferenceViewType((byte)2);
    this.h.setKey("key_custom_setting");
    this.h.setOnCheckedNoClick(true);
    this.h.setCheckBoxType(2);
    this.mDataList.add(this.h);
    this.i = new PreferenceAdapterModel();
    this.i.setPreferenceViewType((byte)4);
    this.i.setKey("key_current_custom_setting");
    this.mDataList.add(this.i);
    this.mListView.setPadding(0, 0, 0, 0);
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
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
    while ((str == null) || (!((PreferenceView)paramView).isEnabled()));
    if (str.equals("key_standard_mod"))
    {
      a(this.e.getKey(), paramView);
      this.b = 0;
      if (!this.e.isChecked())
      {
        ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427862);
        this.e.setChecked(true);
      }
    }
    while (true)
    {
      this.i.setEnabled(this.h.isChecked());
      this.c.b(this.b);
      nd.a().a(1);
      this.a.notifyDataSetChanged();
      break;
      if (str.equals("key_block_blacklist_only"))
      {
        a(this.f.getKey(), paramView);
        this.b = 1;
        if (!this.f.isChecked())
        {
          ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427863);
          this.f.setChecked(true);
        }
      }
      else if (str.equals("key_accept_whitelist_only"))
      {
        a(this.g.getKey(), paramView);
        this.b = 2;
        if (!this.g.isChecked())
        {
          ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427864);
          this.g.setChecked(true);
        }
      }
      else if (str.equals("key_custom_setting"))
      {
        a(this.h.getKey(), paramView);
        this.b = 3;
        if (!this.h.isChecked())
        {
          ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131427865);
          this.h.setChecked(true);
          if (this.d.d())
          {
            this.d.e();
            Intent localIntent2 = new Intent(this.mContext, FilterCustomizeSettingActivity.class);
            this.mContext.startActivity(localIntent2);
          }
        }
      }
      else if (str.equals("key_current_custom_setting"))
      {
        Intent localIntent1 = new Intent(this.mContext, FilterCustomizeSettingActivity.class);
        this.mContext.startActivity(localIntent1);
      }
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return true;
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
    paramMenu.clear();
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    this.b = this.c.d();
    this.e.setTitle(this.mContext.getString(2131427964));
    this.e.setSummary(this.mContext.getString(2131427862));
    this.e.setChecked(false);
    this.f.setTitle(this.mContext.getString(2131427965));
    this.f.setSummary(this.mContext.getString(2131427863));
    this.f.setChecked(false);
    this.g.setTitle(this.mContext.getString(2131427966));
    this.g.setSummary(this.mContext.getString(2131427864));
    this.g.setChecked(false);
    this.h.setTitle(this.mContext.getString(2131427967));
    this.h.setSummary(this.mContext.getString(2131427865));
    this.h.setChecked(false);
    this.i.setTitle(this.mContext.getString(2131427968));
    this.i.setSummary(null);
    switch (this.b)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.i.setEnabled(this.h.isChecked());
      this.a.notifyDataSetChanged();
      return;
      this.e.setChecked(true);
      continue;
      this.f.setChecked(true);
      continue;
      this.g.setChecked(true);
      continue;
      this.h.setChecked(true);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428441);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anp
 * JD-Core Version:    0.6.2
 */