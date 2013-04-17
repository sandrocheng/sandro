import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.faceverify.util.Utils;
import com.tencent.qqpimsecure.ui.activity.faceverify.FaceVerifyIntroduceActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordSettingActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacySafeSettingActivity;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.List;

public final class bgx extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private ako a;
  private PreferenceAdapterModel b;
  private PreferenceAdapterModel c;
  private PreferenceAdapterModel d;
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private ho g = ho.a();
  private hm h;

  public bgx(Context paramContext)
  {
    super(paramContext);
    new yj(paramContext);
    this.h = new hm(paramContext);
  }

  private void a()
  {
    int i = 2;
    int j = 1;
    this.mDataList.clear();
    this.b.setTitle(this.mContext.getString(2131429836));
    this.mDataList.add(this.b);
    String str = this.g.ci();
    boolean bool1;
    label101: PreferenceAdapterModel localPreferenceAdapterModel;
    if ((str != null) && (!str.equals("")))
    {
      this.c.setSummary(str);
      this.mDataList.add(this.c);
      if (SDKUtil.getSDKVersion() >= 9)
        break label237;
      bool1 = j;
      if (!bool1)
      {
        this.mDataList.add(this.d);
        boolean bool2 = this.g.cH();
        this.d.setChecked(bool2);
        if (bool2)
          this.mDataList.add(this.f);
      }
      if (this.g.w())
        this.mDataList.add(this.e);
      if (Environment.getExternalStorageState().equals("mounted"))
        break label255;
      i = j;
      label194: localPreferenceAdapterModel = this.e;
      if (i != 0)
        break label266;
    }
    while (true)
    {
      localPreferenceAdapterModel.setEnabled(j);
      this.a.notifyDataSetChanged();
      return;
      this.c.setSummary(this.mContext.getString(2131430118));
      break;
      label237: if (!Utils.hasFrontCamera())
      {
        bool1 = i;
        break label101;
      }
      bool1 = false;
      break label101;
      label255: if (!a.b())
        break label194;
      i = 0;
      break label194;
      label266: j = 0;
    }
  }

  private void b()
  {
    if (this.g.cE())
    {
      Intent localIntent = new Intent(this.mContext, FaceVerifyIntroduceActivity.class);
      this.mContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      a.c(this.mContext);
    }
  }

  public final BaseAdapter createAdapter()
  {
    this.a = new ako(this.mContext, this.mDataList, this);
    return this.a;
  }

  public final void loadDataList()
  {
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = new PreferenceAdapterModel();
    this.b.setPreferenceViewType((byte)3);
    this.b.setKey("change_psw");
    this.b.setShowLine(true);
    this.c = new PreferenceAdapterModel();
    this.c.setPreferenceViewType((byte)3);
    this.c.setKey("psw_protect");
    this.c.setTitle(this.mContext.getString(2131430114));
    this.c.setShowLine(true);
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)2);
    this.d.setKey("face_verify_switch");
    this.d.setTitle(this.mContext.getString(2131429993));
    this.d.setShowLine(true);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)3);
    this.f.setKey("face_verify_change");
    this.f.setTitle(this.mContext.getString(2131430180));
    this.f.setShowLine(true);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)2);
    this.e.setKey("camera_box_switch");
    this.e.setTitle(this.mContext.getString(2131429994));
    this.e.setShowLine(true);
    this.e.setChecked(this.h.a.getBoolean("need_show_box", true));
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!(paramView instanceof PreferenceView));
    String str;
    do
      while (true)
      {
        return;
        str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
        if ((str != null) && (((PreferenceView)paramView).isEnabled()))
          if (str.equals("change_psw"))
          {
            Context localContext2 = this.mContext;
            Intent localIntent2 = new Intent(localContext2, PrivacyPatternPasswordSettingActivity.class);
            a.a(localIntent2, -1, 3, null);
            localContext2.startActivity(localIntent2);
          }
          else if (str.equals("psw_protect"))
          {
            Context localContext1 = this.mContext;
            Intent localIntent1 = new Intent(localContext1, PrivacySafeSettingActivity.class);
            a.a(localIntent1, -1, -1, null);
            localContext1.startActivity(localIntent1);
          }
          else if (str.equals("face_verify_switch"))
          {
            if (ho.a().cH())
            {
              this.g.K(false);
              a();
            }
            else
            {
              b();
            }
          }
          else
          {
            if (!str.equals("face_verify_change"))
              break;
            b();
          }
      }
    while (!str.equals("camera_box_switch"));
    hm localhm = this.h;
    if (!this.h.a.getBoolean("need_show_box", true));
    for (boolean bool = true; ; bool = false)
    {
      localhm.b.putBoolean("need_show_box", bool).commit();
      this.e.setChecked(this.h.a.getBoolean("need_show_box", true));
      ((CheckBoxPreferenceView)paramView).doClickEventNoAnimation(-1, 2131429994);
      getAdapter().notifyDataSetChanged();
      break;
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    a();
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleBarBackground(this.mContext, 2130837762);
    paramFrameworkTemplateUI.setTitleTextData(2131430109);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgx
 * JD-Core Version:    0.6.2
 */