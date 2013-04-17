import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.qqpimsecure.ui.activity.commontools.CommonToolsActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.List;

public final class arh extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private ho a;
  private PreferenceAdapterModel b;
  private PreferenceAdapterModel c;
  private PreferenceAdapterModel d;
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private PreferenceAdapterModel g;
  private PreferenceAdapterModel h;
  private PreferenceAdapterModel i;
  private int j = -1;
  private int k;

  public arh(Context paramContext)
  {
    super(paramContext);
  }

  public final BaseAdapter createAdapter()
  {
    return new ajc(this.mContext, this.mDataList, this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void loadDataList()
  {
    this.j = ScriptHelper.canRunAtRoot();
    if (!new File(dx.i).exists())
      new File(dx.i).mkdir();
    if (this.mDataList != null)
      this.mDataList.clear();
    this.b = new PreferenceAdapterModel();
    this.b.setPreferenceViewType((byte)5);
    this.b.setKey(null);
    this.mDataList.add(this.b);
    this.c = new PreferenceAdapterModel();
    this.c.setPreferenceViewType((byte)2);
    this.c.setKey("key_screenshot_switch");
    this.mDataList.add(this.c);
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)2);
    this.d.setKey("key_screenshot_sound");
    this.mDataList.add(this.d);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)3);
    this.e.setKey("key_screenshot_style");
    this.mDataList.add(this.e);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)5);
    this.f.setKey(null);
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)3);
    this.g.setKey("key_screenshot_quality");
    this.mDataList.add(this.g);
    this.h = new PreferenceAdapterModel();
    this.h.setPreferenceViewType((byte)3);
    this.h.setKey("key_screenshot_format");
    this.mDataList.add(this.h);
    this.i = new PreferenceAdapterModel();
    this.i.setPreferenceViewType((byte)1);
    this.i.setKey("key_screenshot_save_location");
    this.mDataList.add(this.i);
    getListView().setPadding(0, 0, 0, 0);
    this.mHandler.sendEmptyMessage(-2);
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
      Intent localIntent2 = new Intent(localContext, CommonToolsActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ho.a();
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26064);
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int m = 1;
    if (!(paramView instanceof PreferenceView));
    while (true)
    {
      return;
      if (paramInt <= -1 + this.mDataList.size())
      {
        String str1 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
        if ((str1 != null) && (((PreferenceView)paramView).isEnabled()))
          if (str1.equals("key_screenshot_switch"))
          {
            nd localnd = nd.a();
            localnd.a(37);
            if (this.j == m)
            {
              a.a(getActivity());
            }
            else if (this.j == 2)
            {
              a.a(getActivity(), 3);
            }
            else if (this.j == 0)
            {
              boolean bool2 = this.a.bK();
              ho localho2 = this.a;
              label150: label181: String str2;
              label204: label247: Intent localIntent2;
              if (!bool2)
              {
                int i4 = m;
                localho2.F(i4);
                PreferenceAdapterModel localPreferenceAdapterModel2 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
                if (bool2)
                  break label437;
                int i6 = m;
                localPreferenceAdapterModel2.setChecked(i6);
                if (!bool2)
                  break label443;
                str2 = this.mContext.getString(2131428728);
                this.c.setSummary(str2);
                ((CheckBoxPreferenceView)paramView).doClickEvent(this.mContext.getString(2131429486), str2);
                PreferenceAdapterModel localPreferenceAdapterModel3 = this.d;
                if (bool2)
                  break label458;
                int i8 = m;
                localPreferenceAdapterModel3.setEnabled(i8);
                PreferenceAdapterModel localPreferenceAdapterModel4 = this.e;
                if (bool2)
                  break label464;
                int i10 = m;
                label269: localPreferenceAdapterModel4.setEnabled(i10);
                PreferenceAdapterModel localPreferenceAdapterModel5 = this.i;
                if (bool2)
                  break label470;
                int i12 = m;
                label291: localPreferenceAdapterModel5.setEnabled(i12);
                PreferenceAdapterModel localPreferenceAdapterModel6 = this.g;
                if (bool2)
                  break label476;
                int i14 = m;
                label313: localPreferenceAdapterModel6.setEnabled(i14);
                PreferenceAdapterModel localPreferenceAdapterModel7 = this.h;
                boolean bool3 = false;
                if (!bool2)
                  bool3 = m;
                localPreferenceAdapterModel7.setEnabled(bool3);
                getAdapter().notifyDataSetChanged();
                abp.a = m;
                if (bool2)
                  break label507;
                localIntent2 = new Intent(this.mContext, abp.class);
                if (this.a.bM() != 0)
                  break label482;
                getFrameworkTemplateUI().updateInfoBarText(2131429506);
              }
              while (true)
              {
                localIntent2.setAction("open_screenshot_service_action");
                TMSService.startService(new abp(), localIntent2);
                localnd.a(26109);
                break;
                int i5 = 0;
                break label150;
                label437: int i7 = 0;
                break label181;
                label443: str2 = this.mContext.getString(2131427352);
                break label204;
                label458: int i9 = 0;
                break label247;
                label464: int i11 = 0;
                break label269;
                label470: int i13 = 0;
                break label291;
                label476: int i15 = 0;
                break label313;
                label482: if (this.a.bM() == m)
                  getFrameworkTemplateUI().updateInfoBarText(2131429508);
              }
              label507: TMSService.stopService(abp.class);
              getFrameworkTemplateUI().updateInfoBarText(2131429487);
            }
          }
          else
          {
            label561: label588: label639: int n;
            if (str1.equals("key_screenshot_sound"))
            {
              boolean bool1 = this.a.bL();
              ho localho1 = this.a;
              if (!bool1)
              {
                int i1 = m;
                localho1.G(i1);
                PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
                if (bool1)
                  break label639;
                localPreferenceAdapterModel1.setChecked(m);
                if (!bool1)
                  break label645;
              }
              label645: for (int i3 = 2131428728; ; i3 = 2131427352)
              {
                this.d.setSummary(this.mContext.getString(i3));
                ((CheckBoxPreferenceView)paramView).doClickEvent(-1, i3);
                break;
                int i2 = 0;
                break label561;
                n = 0;
                break label588;
              }
            }
            if (str1.equals("key_screenshot_style"))
            {
              this.k = paramInt;
              ((ListPreferenceView)paramView).doClickEvent();
            }
            else if (str1.equals("key_screenshot_save_location"))
            {
              File localFile = new File(this.a.bO());
              if ((localFile.exists()) && (localFile.isFile()))
              {
                Intent localIntent1 = new Intent("android.intent.action.VIEW");
                localIntent1.addFlags(268435456);
                localIntent1.setDataAndType(Uri.fromFile(localFile), "image/*");
                try
                {
                  this.mContext.startActivity(localIntent1);
                }
                catch (ActivityNotFoundException localActivityNotFoundException)
                {
                  ha.b(this.mContext, this.mContext.getString(2131429495));
                }
              }
              else
              {
                Toast.makeText(this.mContext, this.mContext.getString(2131429518), n).show();
              }
            }
            else if (str1.equals("key_screenshot_quality"))
            {
              this.k = paramInt;
              ((ListPreferenceView)paramView).doClickEvent();
            }
            else if (str1.equals("key_screenshot_format"))
            {
              this.k = paramInt;
              ((ListPreferenceView)paramView).doClickEvent();
            }
          }
      }
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    int m = 2131429487;
    int n = ((Integer)paramObject).intValue();
    String str1 = paramListPreferenceView.getKey().toString();
    if (n == ((PreferenceAdapterModel)this.mDataList.get(this.k)).getSelectItemIndex());
    label92: label116: 
    do
    {
      return false;
      if (str1.equals("key_screenshot_style"))
      {
        int i1;
        if (n == 0)
        {
          this.a.w(0);
          FrameworkTemplateUI localFrameworkTemplateUI2 = getFrameworkTemplateUI();
          if (this.a.bK())
          {
            i1 = 2131429506;
            localFrameworkTemplateUI2.updateInfoBarText(i1);
            this.e.setSummary(this.mContext.getString(2131429501));
            if (this.a.bK())
            {
              Intent localIntent = new Intent(this.mContext, abp.class);
              localIntent.setAction("open_screenshot_service_action");
              TMSService.startService(new abp(), localIntent);
            }
            ((PreferenceAdapterModel)this.mDataList.get(this.k)).setSelectItemIndex(n);
            if (n != 0)
              break label287;
          }
        }
        for (String str4 = this.mContext.getString(2131429501); ; str4 = this.mContext.getString(2131429502))
        {
          paramListPreferenceView.doClickEvent(this.mContext.getString(2131429490), str4);
          break;
          i1 = m;
          break label92;
          if (n != 1)
            break label116;
          this.a.w(1);
          FrameworkTemplateUI localFrameworkTemplateUI1 = getFrameworkTemplateUI();
          if (this.a.bK())
            m = 2131429508;
          localFrameworkTemplateUI1.updateInfoBarText(m);
          this.e.setSummary(this.mContext.getString(2131429502));
          break label116;
        }
      }
      if (str1.equals("key_screenshot_quality"))
      {
        String str3;
        if (n == 0)
        {
          this.a.y(0);
          this.g.setSummary(this.mContext.getString(2131429496));
          ((PreferenceAdapterModel)this.mDataList.get(this.k)).setSelectItemIndex(n);
          if (n != 0)
            break label467;
          str3 = this.mContext.getString(2131429496);
        }
        while (true)
        {
          paramListPreferenceView.doClickEvent(this.mContext.getString(2131429493), str3);
          break;
          if (n == 1)
          {
            this.a.y(1);
            this.g.setSummary(this.mContext.getString(2131429497));
            break label342;
          }
          if (n != 2)
            break label342;
          this.a.y(2);
          this.g.setSummary(this.mContext.getString(2131429498));
          break label342;
          if (n == 1)
            str3 = this.mContext.getString(2131429497);
          else
            str3 = this.mContext.getString(2131429498);
        }
      }
    }
    while (!str1.equals("key_screenshot_format"));
    label287: label342: if (n == 0)
    {
      this.a.x(0);
      this.h.setSummary(this.mContext.getString(2131429500));
      ((PreferenceAdapterModel)this.mDataList.get(this.k)).setSelectItemIndex(n);
      if (n != 0)
        break label634;
    }
    label467: label634: for (String str2 = this.mContext.getString(2131429500); ; str2 = this.mContext.getString(2131429499))
    {
      paramListPreferenceView.doClickEvent(this.mContext.getString(2131429492), str2);
      break;
      if (n != 1)
        break label543;
      this.a.x(1);
      this.h.setSummary(this.mContext.getString(2131429499));
      break label543;
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
    if (this.a.bK())
    {
      Intent localIntent = new Intent(this.mContext, abp.class);
      localIntent.setAction("open_screenshot_service_action");
      TMSService.startService(new abp(), localIntent);
    }
    while (true)
    {
      return;
      TMSService.stopService(abp.class);
    }
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427992);
  }

  public final void refreshListData()
  {
    this.c.setTitle(this.mContext.getString(2131429486));
    this.d.setTitle(this.mContext.getString(2131429489));
    this.e.setTitle(this.mContext.getString(2131429490));
    this.i.setTitle(this.mContext.getString(2131429491));
    this.g.setTitle(this.mContext.getString(2131429493));
    this.h.setTitle(this.mContext.getString(2131429492));
    label187: int n;
    if (this.j == 0)
      if (this.a.bK())
      {
        this.c.setSummary(this.mContext.getString(2131427352));
        this.c.setChecked(true);
        this.c.setShowLine(true);
        if (!this.a.bL())
          break label739;
        this.d.setSummary(this.mContext.getString(2131427352));
        this.d.setChecked(true);
        this.d.setEnabled(this.c.isChecked());
        this.d.setShowLine(true);
        if (this.a.bM() != 0)
          break label774;
        this.e.setSummary(this.mContext.getString(2131429501));
        if (getFrameworkTemplateUI() != null)
        {
          FrameworkTemplateUI localFrameworkTemplateUI2 = getFrameworkTemplateUI();
          if (!this.a.bK())
            break label766;
          n = 2131429506;
          label263: localFrameworkTemplateUI2.updateInfoBarText(n);
        }
        this.e.setSelectItemIndex(0);
        label277: this.e.setEntries(this.mContext.getResources().getStringArray(2131165234));
        this.e.setEntryValues(this.mContext.getResources().getStringArray(2131165235));
        this.e.setShowLine(true);
        this.e.setEnabled(this.c.isChecked());
        this.i.setSummary(this.a.bN());
        this.i.setShowLine(true);
        this.i.setEnabled(this.c.isChecked());
        this.b.setTitle(this.mContext.getString(2131429488));
        this.b.setSummary(null);
        this.b.setShowLine(false);
        this.f.setTitle(this.mContext.getString(2131429494));
        this.f.setSummary(null);
        this.f.setShowLine(false);
        if (this.a.bQ() != 0)
          break label851;
        this.g.setSummary(this.mContext.getString(2131429496));
        this.g.setSelectItemIndex(0);
        label476: this.g.setEntries(this.mContext.getResources().getStringArray(2131165238));
        this.g.setEntryValues(this.mContext.getResources().getStringArray(2131165239));
        this.g.setShowLine(true);
        this.g.setEnabled(this.c.isChecked());
        if (this.a.bP() != 0)
          break label929;
        this.h.setSummary(this.mContext.getString(2131429500));
        this.h.setSelectItemIndex(0);
        label573: this.h.setEntries(this.mContext.getResources().getStringArray(2131165236));
        this.h.setEntryValues(this.mContext.getResources().getStringArray(2131165237));
        this.h.setShowLine(true);
        this.h.setEnabled(this.c.isChecked());
        getAdapter().notifyDataSetChanged();
        if (getActivity() != null)
        {
          if (this.j != 1)
            break label968;
          a.a(getActivity());
        }
      }
    while (true)
    {
      super.refreshListData();
      return;
      this.c.setSummary(this.mContext.getString(2131428728));
      this.c.setChecked(false);
      break;
      this.a.F(false);
      this.c.setSummary(this.mContext.getString(2131428728));
      this.c.setChecked(false);
      this.c.setEnabled(false);
      break;
      label739: this.d.setSummary(this.mContext.getString(2131428728));
      this.d.setChecked(false);
      break label187;
      label766: n = 2131429487;
      break label263;
      label774: if (this.a.bM() != 1)
        break label277;
      this.e.setSummary(this.mContext.getString(2131429502));
      FrameworkTemplateUI localFrameworkTemplateUI1;
      if (getFrameworkTemplateUI() != null)
      {
        localFrameworkTemplateUI1 = getFrameworkTemplateUI();
        if (!this.a.bK())
          break label844;
      }
      label844: for (int m = 2131429508; ; m = 2131429487)
      {
        localFrameworkTemplateUI1.updateInfoBarText(m);
        this.e.setSelectItemIndex(1);
        break;
      }
      label851: if (this.a.bQ() == 1)
      {
        this.g.setSummary(this.mContext.getString(2131429497));
        this.g.setSelectItemIndex(1);
        break label476;
      }
      if (this.a.bQ() != 2)
        break label476;
      this.g.setSummary(this.mContext.getString(2131429498));
      this.g.setSelectItemIndex(2);
      break label476;
      label929: if (this.a.bP() != 1)
        break label573;
      this.h.setSummary(this.mContext.getString(2131429499));
      this.h.setSelectItemIndex(1);
      break label573;
      label968: if (this.j == 2)
        a.a(getActivity(), 3);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429486);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arh
 * JD-Core Version:    0.6.2
 */