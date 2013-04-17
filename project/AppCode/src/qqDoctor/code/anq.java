import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.FilterSettingModeActivity;
import com.tencent.qqpimsecure.ui.activity.InterceptKeywordActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import java.util.List;

public final class anq extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private ahz a;
  private ho b;
  private int c = 0;
  private hh d;
  private LayoutInflater e;
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
  private boolean p;
  private boolean q;
  private int r;

  public anq(Context paramContext)
  {
    super(paramContext);
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
    this.b = ho.a();
    this.d = hh.a();
    boolean bool;
    if (qx.a().h() == qx.a.q)
    {
      bool = true;
      this.p = bool;
      if (this.b.ab() != 1)
        break label575;
    }
    label575: for (this.q = true; ; this.q = false)
    {
      this.f = new PreferenceAdapterModel();
      this.f.setPreferenceViewType((byte)5);
      this.f.setKey("key_setting_title");
      this.f.setTitlBG_ID(2130838282);
      this.mDataList.add(this.f);
      this.g = new PreferenceAdapterModel();
      this.g.setPreferenceViewType((byte)3);
      this.g.setKey("key_filter_mode");
      this.mDataList.add(this.g);
      this.h = new PreferenceAdapterModel();
      this.h.setPreferenceViewType((byte)3);
      this.h.setKey("key_setting_keyword");
      this.mDataList.add(this.h);
      this.i = new PreferenceAdapterModel();
      this.i.setPreferenceViewType((byte)5);
      this.i.setKey("key_filter");
      this.mDataList.add(this.i);
      int i1 = ft.d();
      if ((i1 != -2) && (i1 == 0) && (!di.b().b()))
      {
        this.j = new PreferenceAdapterModel();
        this.j.setPreferenceViewType((byte)3);
        this.j.setKey("holdoff_mode_preference");
        this.mDataList.add(this.j);
      }
      this.k = new PreferenceAdapterModel();
      this.k.setPreferenceViewType((byte)2);
      this.k.setKey("show_block_icon");
      this.mDataList.add(this.k);
      this.l = new PreferenceAdapterModel();
      this.l.setPreferenceViewType((byte)2);
      this.l.setKey("auto_reply_switch");
      if (!di.b().b())
        this.mDataList.add(this.l);
      this.m = new PreferenceAdapterModel();
      this.m.setPreferenceViewType((byte)4);
      this.m.setKey("reply_content_preference");
      if (!di.b().b())
        this.mDataList.add(this.m);
      if ((!this.q) && (!this.p))
      {
        this.n = new PreferenceAdapterModel();
        this.n.setPreferenceViewType((byte)2);
        this.n.setKey("one_ring_listener");
        this.mDataList.add(this.n);
      }
      if (!this.p)
      {
        this.o = new PreferenceAdapterModel();
        this.o.setPreferenceViewType((byte)2);
        this.o.setKey("double_call_listener");
        this.mDataList.add(this.o);
      }
      this.mListView.setPadding(0, 0, 0, 0);
      this.e = LayoutInflater.from(this.mContext);
      return;
      bool = false;
      break;
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i1 = 2131427352;
    if (!(paramView instanceof PreferenceView));
    String str1;
    do
    {
      return;
      str1 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    }
    while ((str1 == null) || (!((PreferenceView)paramView).isEnabled()));
    if (str1.equals("key_filter_mode"))
    {
      Intent localIntent1 = new Intent(this.mContext, FilterSettingModeActivity.class);
      this.mContext.startActivity(localIntent1);
    }
    label180: label344: 
    do
    {
      while (true)
      {
        nd.a().a(1);
        this.a.notifyDataSetChanged();
        break;
        if (str1.equals("key_setting_keyword"))
        {
          Intent localIntent2 = new Intent(this.mContext, InterceptKeywordActivity.class);
          this.mContext.startActivity(localIntent2);
        }
        else
        {
          if (str1.equals("show_block_icon"))
          {
            PreferenceAdapterModel localPreferenceAdapterModel4 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
            boolean bool9;
            CheckBoxPreferenceView localCheckBoxPreferenceView3;
            if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
            {
              bool9 = true;
              localPreferenceAdapterModel4.setChecked(bool9);
              boolean bool10 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
              this.b.v(bool10);
              this.b.h(bool10);
              localCheckBoxPreferenceView3 = (CheckBoxPreferenceView)paramView;
              if (!bool10)
                break label264;
            }
            for (int i3 = 2131427374; ; i3 = 2131427375)
            {
              localCheckBoxPreferenceView3.doClickEventNoAnimation(-1, i3);
              ov.a().a(false, false, false);
              break;
              bool9 = false;
              break label180;
            }
          }
          if (str1.equals("holdoff_mode_preference"))
          {
            this.r = paramInt;
            ((ListPreferenceView)paramView).doClickEvent();
          }
          else
          {
            if (str1.equals("auto_reply_switch"))
            {
              PreferenceAdapterModel localPreferenceAdapterModel3 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
              boolean bool7;
              boolean bool8;
              if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
              {
                bool7 = true;
                localPreferenceAdapterModel3.setChecked(bool7);
                bool8 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
                if (!bool8)
                  break label410;
                this.m.setEnabled(true);
                ((CheckBoxPreferenceView)paramView).doClickEventNoAnimation(-1, i1);
              }
              while (true)
              {
                this.b.b(bool8);
                break;
                bool7 = false;
                break label344;
                this.m.setEnabled(false);
                ((CheckBoxPreferenceView)paramView).doClickEventNoAnimation(-1, 2131427353);
              }
            }
            if (!str1.equals("reply_content_preference"))
              break label583;
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(2131427870);
            View localView = this.e.inflate(2130903076, null);
            EditText localEditText = (EditText)localView.findViewById(2131230817);
            String str2 = this.b.i();
            if ((str2 != null) && (str2.length() > 0))
            {
              localEditText.setText(str2);
              localEditText.setSelection(str2.length());
            }
            localDialog.setContentView(localView);
            localDialog.setPositiveButton(2131427397, new anr(this, localEditText, paramView, localDialog), 2);
            localDialog.setNegativeButton(2131427379, new ans(localDialog), 2);
            localDialog.show();
          }
        }
      }
      if (str1.equals("one_ring_listener"))
      {
        PreferenceAdapterModel localPreferenceAdapterModel2 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        boolean bool4 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
        boolean bool5 = false;
        if (!bool4)
          bool5 = true;
        localPreferenceAdapterModel2.setChecked(bool5);
        boolean bool6 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
        this.b.f(bool6);
        CheckBoxPreferenceView localCheckBoxPreferenceView2 = (CheckBoxPreferenceView)paramView;
        if (bool6);
        for (int i2 = i1; ; i2 = 2131427353)
        {
          localCheckBoxPreferenceView2.doClickEventNoAnimation(-1, i2);
          break;
        }
      }
    }
    while (!str1.equals("double_call_listener"));
    label264: label410: label583: PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    boolean bool1 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    localPreferenceAdapterModel1.setChecked(bool2);
    boolean bool3 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
    this.b.e(bool3);
    CheckBoxPreferenceView localCheckBoxPreferenceView1 = (CheckBoxPreferenceView)paramView;
    if (bool3);
    while (true)
    {
      localCheckBoxPreferenceView1.doClickEventNoAnimation(-1, i1);
      break;
      i1 = 2131427353;
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    if (this.j == null)
      return false;
    int i1 = ((Integer)paramObject).intValue();
    ((PreferenceAdapterModel)this.mDataList.get(this.r)).setSelectItemIndex(i1);
    int i2 = this.d.e();
    AresEngineManager localAresEngineManager = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
    boolean bool1;
    if ((i1 == 0) && (i2 != 0))
    {
      this.d.c(0);
      localAresEngineManager.setHoldoffMode(this.d.e());
      bool1 = true;
    }
    while (true)
    {
      label89: label101: PreferenceAdapterModel localPreferenceAdapterModel;
      if (i1 == 0)
      {
        this.d.c(0);
        this.l.setEnabled(bool1);
        localPreferenceAdapterModel = this.m;
        if ((!bool1) || (!this.l.isChecked()))
          break label303;
      }
      label303: for (boolean bool2 = true; ; bool2 = false)
      {
        localPreferenceAdapterModel.setEnabled(bool2);
        break;
        if ((i1 == 1) && (i2 != 2))
        {
          this.d.c(2);
          localAresEngineManager.setHoldoffMode(this.d.e());
          bool1 = false;
          break label89;
        }
        if ((i1 == 2) && (i2 != 1))
        {
          this.d.c(1);
          localAresEngineManager.setHoldoffMode(this.d.e());
          bool1 = false;
          break label89;
        }
        if ((i1 != 3) || (i2 == 3))
          break label309;
        this.d.c(3);
        localAresEngineManager.setHoldoffMode(this.d.e());
        bool1 = false;
        break label89;
        if (i1 == 1)
        {
          this.d.c(2);
          break label101;
        }
        if (i1 == 2)
        {
          this.d.c(1);
          break label101;
        }
        if (i1 != 3)
          break label101;
        this.d.c(3);
        break label101;
      }
      label309: bool1 = true;
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return true;
  }

  public final void onPause()
  {
    super.onPause();
    op.a().d();
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
    int i1 = 1;
    super.onResume();
    this.c = this.d.d();
    this.f.setTitle(this.mContext.getString(2131428442));
    this.g.setTitle(this.mContext.getString(2131428441));
    this.h.setTitle(this.mContext.getString(2131428443));
    this.h.setSummary(this.mContext.getString(2131428444));
    this.i.setTitle(this.mContext.getString(2131427691));
    int i3 = this.d.e();
    if (this.j != null);
    label245: label383: PreferenceAdapterModel localPreferenceAdapterModel3;
    switch (i3)
    {
    default:
      this.j.setTitle(this.mContext.getString(2131427685));
      this.j.setEntries(this.mContext.getResources().getStringArray(2131165188));
      this.j.setEntryValues(this.mContext.getResources().getStringArray(2131165189));
      this.j.setSummary(this.j.getEntry());
      int i10 = ft.d();
      PreferenceAdapterModel localPreferenceAdapterModel5 = this.j;
      if ((i10 != -2) && (i10 == 0))
      {
        int i11 = i1;
        localPreferenceAdapterModel5.setEnabled(i11);
        boolean bool = this.b.ae();
        this.k.setTitle(this.mContext.getString(2131427963));
        this.k.setChecked(bool);
        this.l.setTitle(this.mContext.getString(2131427861));
        if (!this.b.k())
          break label678;
        this.l.setChecked(i1);
        this.m.setEnabled(i1);
        label328: PreferenceAdapterModel localPreferenceAdapterModel1 = this.l;
        if (this.d.e() != 0)
          break label697;
        int i4 = i1;
        label347: localPreferenceAdapterModel1.setEnabled(i4);
        PreferenceAdapterModel localPreferenceAdapterModel2 = this.m;
        if ((!this.l.isChecked()) || (!this.l.isEnabled()))
          break label703;
        int i6 = i1;
        localPreferenceAdapterModel2.setEnabled(i6);
        this.m.setTitle(this.mContext.getString(2131427860));
        switch (this.c)
        {
        default:
          label440: if ((!this.q) && (!this.p))
          {
            this.n.setShowLine(i1);
            this.n.setTitle(this.mContext.getString(2131427794));
            PreferenceAdapterModel localPreferenceAdapterModel4 = this.n;
            if ((this.b.ab() != i1) && (this.c == 0))
            {
              int i8 = i1;
              label506: localPreferenceAdapterModel4.setEnabled(i8);
              this.n.setChecked(this.b.r());
            }
          }
          else if (!this.p)
          {
            this.o.setShowLine(i1);
            this.o.setTitle(this.mContext.getString(2131428323));
            this.o.setSummary(this.mContext.getString(2131428324));
            this.o.setChecked(this.b.z());
            localPreferenceAdapterModel3 = this.o;
            if ((this.b.ab() == i1) || (this.c != 0))
              break label795;
          }
          break;
        case 0:
        case 1:
        case 2:
        case 3:
        }
      }
      break;
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      localPreferenceAdapterModel3.setEnabled(i1);
      this.a.notifyDataSetChanged();
      return;
      this.j.setSelectItemIndex(0);
      break;
      this.j.setSelectItemIndex(i1);
      break;
      this.j.setSelectItemIndex(2);
      break;
      this.j.setSelectItemIndex(3);
      break;
      int i12 = 0;
      break label245;
      label678: this.l.setChecked(false);
      this.m.setEnabled(false);
      break label328;
      label697: int i5 = 0;
      break label347;
      label703: int i7 = 0;
      break label383;
      this.g.setSummary(this.mContext.getString(2131427964));
      break label440;
      this.g.setSummary(this.mContext.getString(2131427965));
      break label440;
      this.g.setSummary(this.mContext.getString(2131427966));
      break label440;
      this.g.setSummary(this.mContext.getString(2131427967));
      break label440;
      int i9 = 0;
      break label506;
      label795: int i2 = 0;
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427441);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anq
 * JD-Core Version:    0.6.2
 */