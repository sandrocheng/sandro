import android.content.Context;
import android.content.res.Resources;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
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
import java.util.List;

public final class bjo extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  public static int[] a = { 2130837980, 2130837981, 2130837982 };
  private ho b;
  private LayoutInflater c;
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
  private int n;

  public bjo(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131428785);
    EditText localEditText = new EditText(this.mContext);
    localEditText.setText(this.b.j());
    localEditText.setBackgroundResource(2130837696);
    localDialog.setContentView(localEditText);
    localDialog.setPositiveButton(2131427397, new bjy(this, localEditText, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new bjz(localDialog), 2);
    localDialog.show();
  }

  private void a(int paramInt)
  {
    this.h.setSelectItemIndex(paramInt);
    this.h.setSummary(this.h.getEntries()[paramInt]);
    int i1 = this.b.aw();
    this.i.setSummary(this.mContext.getResources().getStringArray(2131165226)[i1]);
    int i2 = this.b.ax();
    PreferenceAdapterModel localPreferenceAdapterModel = this.l;
    boolean bool;
    if ((i2 == 2) || (i2 == 3))
    {
      bool = true;
      localPreferenceAdapterModel.setEnabled(bool);
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      return;
      bool = false;
      break;
      this.k.setEnabled(false);
      this.l.setEnabled(false);
      this.i.setEnabled(true);
      this.j.setEnabled(false);
      if (this.b.bd())
      {
        this.l.setEnabled(true);
        continue;
        this.k.setEnabled(false);
        this.i.setEnabled(false);
        this.j.setEnabled(true);
        continue;
        this.k.setEnabled(true);
        this.i.setEnabled(false);
        this.j.setEnabled(true);
      }
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new aiv(this.mContext, this.mDataList, this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.c = LayoutInflater.from(this.mContext);
    this.b = ho.a();
    String str = this.b.n();
    this.m = new PreferenceAdapterModel();
    this.m.setPreferenceViewType((byte)4);
    this.m.setKey("reset_password");
    if ((str != null) && (!str.equals("")))
      this.mDataList.add(this.m);
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)5);
    this.d.setKey(null);
    this.mDataList.add(this.d);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)4);
    this.f.setKey("attention_mode");
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)4);
    this.g.setKey("secure_sms_notice_setting");
    this.mDataList.add(this.g);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)5);
    this.e.setKey(null);
    this.mDataList.add(this.e);
    this.h = new PreferenceAdapterModel();
    this.h.setPreferenceViewType((byte)3);
    this.h.setKey("secure_call_mode");
    this.mDataList.add(this.h);
    this.i = new PreferenceAdapterModel();
    this.i.setPreferenceViewType((byte)4);
    this.i.setKey("secure_call_notice_mode_normal");
    this.mDataList.add(this.i);
    this.j = new PreferenceAdapterModel();
    this.j.setPreferenceViewType((byte)4);
    this.j.setKey("secure_call_notice_mode_block");
    this.mDataList.add(this.j);
    this.l = new PreferenceAdapterModel();
    this.l.setPreferenceViewType((byte)4);
    this.l.setKey("secure_call_notice_setting");
    this.mDataList.add(this.l);
    this.k = new PreferenceAdapterModel();
    this.k.setPreferenceViewType((byte)4);
    this.k.setKey("secure_sms_reply");
    if (!di.b().b())
      this.mDataList.add(this.k);
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
      while (true)
      {
        return;
        str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
        if ((str != null) && (((PreferenceView)paramView).isEnabled()))
          if (str.equals("attention_mode"))
          {
            Dialog localDialog1 = new Dialog(this.mContext);
            localDialog1.setTitle(2131427689);
            View localView1 = this.c.inflate(2130903075, null);
            LinearLayout localLinearLayout1 = (LinearLayout)localView1.findViewById(2131230795);
            CheckBox localCheckBox1 = (CheckBox)localView1.findViewById(2131230796);
            localLinearLayout1.setOnClickListener(new bjp(localCheckBox1));
            LinearLayout localLinearLayout2 = (LinearLayout)localView1.findViewById(2131230797);
            CheckBox localCheckBox2 = (CheckBox)localView1.findViewById(2131230798);
            localLinearLayout2.setOnClickListener(new bka(localCheckBox2));
            LinearLayout localLinearLayout3 = (LinearLayout)localView1.findViewById(2131230799);
            CheckBox localCheckBox3 = (CheckBox)localView1.findViewById(2131230800);
            localLinearLayout3.setOnClickListener(new bkb(localCheckBox3));
            int i1 = this.b.q();
            if ((i1 == 2) || (i1 == 3) || (i1 == 6) || (i1 == 7))
              localCheckBox1.setChecked(true);
            if ((i1 == 4) || (i1 == 5) || (i1 == 6) || (i1 == 7))
              localCheckBox2.setChecked(true);
            if ((i1 == 1) || (i1 == 3) || (i1 == 5) || (i1 == 7))
              localCheckBox3.setChecked(true);
            localDialog1.setContentView(localView1);
            localDialog1.setContextViewPaddingNeed(false);
            localDialog1.setPositiveButton(2131427397, new bkc(this, localCheckBox1, localCheckBox2, localCheckBox3, localDialog1), 2);
            localDialog1.show();
          }
          else if (str.equals("secure_sms_notice_setting"))
          {
            Dialog localDialog2 = new Dialog(this.mContext);
            localDialog2.setTitle(2131428784);
            View localView2 = this.c.inflate(2130903070, null);
            localDialog2.setContentView(localView2);
            EditText localEditText1 = (EditText)localView2.findViewById(2131230754);
            EditText localEditText2 = (EditText)localView2.findViewById(2131230802);
            localEditText1.setText(this.b.B());
            localEditText2.setText(this.b.A());
            localDialog2.setPositiveButton(2131427397, new bkd(this, localEditText1, localEditText2, localDialog2), 2);
            localDialog2.setNegativeButton(2131427379, new bke(localDialog2), 2);
            localDialog2.show();
          }
          else if (str.equals("secure_call_mode"))
          {
            this.n = paramInt;
            ((ListPreferenceView)paramView).doClickEvent();
          }
          else if (str.equals("secure_call_notice_setting"))
          {
            Dialog localDialog3 = new Dialog(this.mContext);
            localDialog3.setTitle(2131428784);
            View localView3 = this.c.inflate(2130903070, null);
            localDialog3.setContentView(localView3);
            EditText localEditText3 = (EditText)localView3.findViewById(2131230754);
            EditText localEditText4 = (EditText)localView3.findViewById(2131230802);
            localEditText3.setText(this.b.F());
            localEditText4.setText(this.b.C());
            localDialog3.setPositiveButton(2131427397, new bkf(this, localEditText3, localEditText4, localDialog3), 2);
            localDialog3.setNegativeButton(2131427379, new bkg(localDialog3), 2);
            localDialog3.show();
          }
          else
          {
            if (str.equals("secure_call_notice_mode_normal"))
            {
              Dialog localDialog4 = new Dialog(this.mContext);
              localDialog4.setTitle(2131427739);
              View localView4 = this.c.inflate(2130903068, null);
              LinearLayout localLinearLayout4 = (LinearLayout)localView4.findViewById(2131230795);
              CheckBox localCheckBox4 = (CheckBox)localView4.findViewById(2131230796);
              LinearLayout localLinearLayout5 = (LinearLayout)localView4.findViewById(2131230797);
              CheckBox localCheckBox5 = (CheckBox)localView4.findViewById(2131230798);
              LinearLayout localLinearLayout6 = (LinearLayout)localView4.findViewById(2131230799);
              CheckBox localCheckBox6 = (CheckBox)localView4.findViewById(2131230800);
              CheckBox localCheckBox7 = (CheckBox)localView4.findViewById(2131230801);
              localCheckBox7.setChecked(this.b.bd());
              localLinearLayout4.setOnClickListener(new bkh(localCheckBox4, localCheckBox5, localCheckBox6));
              localLinearLayout5.setOnClickListener(new bjq(localCheckBox4, localCheckBox5, localCheckBox6));
              localLinearLayout6.setOnClickListener(new bjr(localCheckBox4, localCheckBox5, localCheckBox6));
              switch (this.b.aw())
              {
              default:
                localCheckBox5.setChecked(true);
              case 0:
              case 1:
              case 2:
              }
              while (true)
              {
                localDialog4.setContentView(localView4);
                localDialog4.setContextViewPaddingNeed(false);
                localDialog4.setPositiveButton(2131427397, new bjs(this, localCheckBox4, localCheckBox5, localCheckBox7, localDialog4), 2);
                localDialog4.show();
                break;
                localCheckBox4.setChecked(true);
                continue;
                localCheckBox5.setChecked(true);
                continue;
                localCheckBox6.setChecked(true);
              }
            }
            if (str.equals("secure_call_notice_mode_block"))
            {
              Dialog localDialog5 = new Dialog(this.mContext);
              localDialog5.setTitle(2131427740);
              View localView5 = this.c.inflate(2130903069, null);
              LinearLayout localLinearLayout7 = (LinearLayout)localView5.findViewById(2131230795);
              CheckBox localCheckBox8 = (CheckBox)localView5.findViewById(2131230796);
              localLinearLayout7.setOnClickListener(new bjt(localCheckBox8));
              LinearLayout localLinearLayout8 = (LinearLayout)localView5.findViewById(2131230797);
              CheckBox localCheckBox9 = (CheckBox)localView5.findViewById(2131230798);
              localLinearLayout8.setOnClickListener(new bju(localCheckBox9));
              int i2 = this.b.ax();
              if ((i2 == 1) || (i2 == 3))
                localCheckBox8.setChecked(true);
              if ((i2 == 2) || (i2 == 3))
                localCheckBox9.setChecked(true);
              localDialog5.setContentView(localView5);
              localDialog5.setContextViewPaddingNeed(false);
              localDialog5.setPositiveButton(2131427397, new bjv(this, localCheckBox8, localCheckBox9, localDialog5), 2);
              localDialog5.show();
            }
            else if (str.equals("secure_sms_reply"))
            {
              a();
            }
            else
            {
              if (!str.equals("reset_password"))
                break;
              Dialog localDialog6 = new Dialog(this.mContext);
              localDialog6.setTitle(2131428786);
              View localView6 = this.c.inflate(2130903072, null);
              localDialog6.setContentView(localView6);
              localDialog6.setPositiveButton(2131427397, new bjw(this, (EditText)localView6.findViewById(2131230807), (EditText)localView6.findViewById(2131230808), localDialog6), 2);
              localDialog6.setNegativeButton(2131427379, new bjx(localDialog6), 2);
              localDialog6.show();
            }
          }
      }
    while (!str.equals("key_quick_entry_display_info"));
    boolean bool1 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    if (!bool1);
    for (boolean bool2 = true; ; bool2 = false)
    {
      localPreferenceAdapterModel.setChecked(bool2);
      this.b.x(((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
      ((CheckBoxPreferenceView)paramView).doClickEvent(-1, 2131428920);
      ((CheckBoxPreferenceView)paramView).setEnabled(true);
      break;
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    int i1 = ((Integer)paramObject).intValue();
    if (paramListPreferenceView.getKey().toString().equals("secure_call_mode"))
    {
      ((PreferenceAdapterModel)this.mDataList.get(this.n)).setSelectItemIndex(i1);
      ((PreferenceAdapterModel)this.mDataList.get(this.n)).setSummary(((PreferenceAdapterModel)this.mDataList.get(this.n)).getEntry());
      hh.a().d(i1);
      a(i1);
      paramListPreferenceView.doClickEvent(this.mContext.getString(2131427472), ((PreferenceAdapterModel)this.mDataList.get(this.n)).getEntry());
      getAdapter().notifyDataSetChanged();
      if ((i1 == 2) && (this.b.bt()))
      {
        this.b.bu();
        a();
      }
    }
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

  public final void onResume()
  {
    int i1 = 1;
    super.onResume();
    int i2 = this.b.q();
    this.f.setTitle(this.mContext.getString(2131427689));
    this.f.setSummary(this.mContext.getResources().getStringArray(2131165211)[i2]);
    this.h.setSelectItemIndex(this.b.av());
    this.h.setTitle(this.mContext.getString(2131427472));
    PreferenceAdapterModel localPreferenceAdapterModel;
    if (di.b().b())
    {
      this.h.setEntries(this.mContext.getResources().getStringArray(2131165225));
      this.h.setEntryValues(this.mContext.getResources().getStringArray(2131165218));
      this.h.setSummary(this.h.getEntry());
      this.i.setTitle(this.mContext.getString(2131427739));
      this.i.setSummary(this.mContext.getResources().getStringArray(2131165226)[this.b.aw()]);
      int i3 = this.b.ax();
      this.j.setTitle(this.mContext.getString(2131427740));
      this.j.setSummary(this.mContext.getResources().getStringArray(2131165227)[i3]);
      this.m.setTitle(this.mContext.getString(2131427742));
      this.d.setTitle(this.mContext.getString(2131429187));
      this.d.setSummary(null);
      this.g.setTitle(this.mContext.getString(2131429191));
      this.g.setSummary(null);
      localPreferenceAdapterModel = this.g;
      if ((i2 != i1) && (i2 != 3) && (i2 != 5) && (i2 != 7))
        break label475;
    }
    while (true)
    {
      localPreferenceAdapterModel.setEnabled(i1);
      this.l.setTitle(this.mContext.getString(2131429192));
      this.l.setSummary(null);
      this.k.setTitle(this.mContext.getString(2131427741));
      this.k.setSummary(null);
      a(this.b.av());
      this.e.setTitle(this.mContext.getString(2131429188));
      this.e.setSummary(null);
      getAdapter().notifyDataSetChanged();
      return;
      this.h.setEntries(this.mContext.getResources().getStringArray(2131165224));
      this.h.setEntryValues(this.mContext.getResources().getStringArray(2131165217));
      break;
      label475: i1 = 0;
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427449);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjo
 * JD-Core Version:    0.6.2
 */