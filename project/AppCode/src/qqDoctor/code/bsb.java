import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.TimedTaskReceiver;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public final class bsb extends BaseListView<PreferenceAdapterModel>
  implements ListPreferenceView.OnListPreferenceChangeListener
{
  private static int[] p;
  private static int q;
  public int a;
  public String b;
  public int c;
  public int d;
  private jl e;
  private acc f;
  private ho g;
  private boolean h;
  private boolean i;
  private String[] j;
  private String[] k;
  private String[] l;
  private String[] m;
  private String[] n;
  private String[] o;
  private TimePickerDialog.OnTimeSetListener r;

  public bsb(Context paramContext)
  {
    super(paramContext);
    String[] arrayOfString1 = new String[7];
    arrayOfString1[0] = this.mContext.getResources().getString(2131428046);
    arrayOfString1[1] = this.mContext.getResources().getString(2131428505);
    arrayOfString1[2] = this.mContext.getResources().getString(2131428507);
    arrayOfString1[3] = this.mContext.getResources().getString(2131428508);
    arrayOfString1[4] = this.mContext.getResources().getString(2131428047);
    arrayOfString1[5] = this.mContext.getResources().getString(2131428048);
    arrayOfString1[6] = this.mContext.getResources().getString(2131428049);
    this.j = arrayOfString1;
    this.k = new String[] { "timing", "plan", "date", "time", "setting", "cloud", "install_cloud" };
    String[] arrayOfString2 = new String[3];
    arrayOfString2[0] = this.mContext.getResources().getString(2131428689);
    arrayOfString2[1] = this.mContext.getResources().getString(2131428690);
    arrayOfString2[2] = this.mContext.getResources().getString(2131428364);
    this.l = arrayOfString2;
    this.m = new String[] { "0", "1", "2" };
    String[] arrayOfString3 = new String[7];
    arrayOfString3[0] = this.mContext.getResources().getString(2131428691);
    arrayOfString3[1] = this.mContext.getResources().getString(2131428692);
    arrayOfString3[2] = this.mContext.getResources().getString(2131428693);
    arrayOfString3[3] = this.mContext.getResources().getString(2131428694);
    arrayOfString3[4] = this.mContext.getResources().getString(2131428695);
    arrayOfString3[5] = this.mContext.getResources().getString(2131428696);
    arrayOfString3[6] = this.mContext.getResources().getString(2131428697);
    this.n = arrayOfString3;
    this.o = new String[] { "0", "1", "2", "3", "4", "5", "6" };
    this.r = new bsg(this);
    this.mContext = paramContext;
    this.e = f.e();
    this.f = new acc(this.mContext);
    p = new int[7];
  }

  private String a(int[] paramArrayOfInt)
  {
    String str1 = "";
    int i1 = 0;
    if (i1 < paramArrayOfInt.length)
    {
      String str2;
      if (paramArrayOfInt[i1] == 1)
      {
        str2 = "";
        switch (i1)
        {
        default:
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        }
      }
      while (true)
      {
        str1 = str1 + str2;
        i1++;
        break;
        str2 = this.mContext.getString(2131428714) + " ";
        continue;
        str2 = this.mContext.getString(2131428715) + " ";
        continue;
        str2 = this.mContext.getString(2131428716) + " ";
        continue;
        str2 = this.mContext.getString(2131428717) + " ";
        continue;
        str2 = this.mContext.getString(2131428718) + " ";
        continue;
        str2 = this.mContext.getString(2131428719) + " ";
        continue;
        str2 = this.mContext.getString(2131428395) + " ";
      }
    }
    return str1;
  }

  private void c()
  {
    if (this.e == null)
      this.e = f.e();
    if (this.g == null)
      this.g = ho.a();
    this.a = this.e.b.getInt("scanPlan", -1);
    this.b = a(this.e.a());
    this.c = this.e.b.getInt("scanTimeHour", 17);
    this.d = this.e.b.getInt("scanTimeMini", 0);
    this.h = this.g.aB();
    this.i = this.g.aC();
    new StringBuilder("^^ timing plan: ").append(this.a).append(", scandate: ").append(this.b).append(", hour: ").append(this.c).append(", mini: ").append(this.d).append(", cloud:").append(this.h).append(" InstallAppCloudScanFlag:").append(this.i).toString();
    for (int i1 = 0; i1 < 7; i1++)
      p[i1] = -1;
    q = 0;
    p[q] = 0;
    q = 1 + q;
    int i2;
    label358: PreferenceAdapterModel localPreferenceAdapterModel;
    if (this.a == 0)
    {
      p[q] = 1;
      q = 1 + q;
      p[q] = 2;
      q = 1 + q;
      p[q] = 3;
      q = 1 + q;
      p[q] = 4;
      q = 1 + q;
      p[q] = 5;
      q = 1 + q;
      p[q] = 6;
      q = 1 + q;
      this.mDataList.clear();
      i2 = 0;
      if (i2 >= q)
        break label896;
      localPreferenceAdapterModel = new PreferenceAdapterModel();
      int i3 = p[i2];
      switch (i3)
      {
      default:
        new StringBuilder("why type = ").append(i3).toString();
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      this.mDataList.add(localPreferenceAdapterModel);
      i2++;
      break label358;
      if (this.a == 1)
      {
        p[q] = 1;
        q = 1 + q;
        p[q] = 3;
        q = 1 + q;
        break;
      }
      if (this.a != 2)
        break;
      p[q] = 1;
      q = 1 + q;
      break;
      localPreferenceAdapterModel.setPreferenceViewType((byte)5);
      localPreferenceAdapterModel.setTitlBG_ID(2130838282);
      localPreferenceAdapterModel.setKey(this.k[0]);
      localPreferenceAdapterModel.setTitle(this.j[0]);
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)3);
      localPreferenceAdapterModel.setKey(this.k[1]);
      localPreferenceAdapterModel.setTitle(this.j[1]);
      localPreferenceAdapterModel.setSummary(this.l[this.a]);
      localPreferenceAdapterModel.setShowLine(true);
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)3);
      localPreferenceAdapterModel.setKey(this.k[2]);
      localPreferenceAdapterModel.setTitle(this.j[2]);
      localPreferenceAdapterModel.setSummary(this.mContext.getResources().getString(2131428711) + this.b);
      localPreferenceAdapterModel.setShowLine(true);
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)3);
      localPreferenceAdapterModel.setKey(this.k[3]);
      localPreferenceAdapterModel.setTitle(this.j[3]);
      localPreferenceAdapterModel.setSummary(this.c + ":" + new DecimalFormat("00").format(this.d));
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)5);
      localPreferenceAdapterModel.setTitlBG_ID(2130838282);
      localPreferenceAdapterModel.setKey(this.k[4]);
      localPreferenceAdapterModel.setTitle(this.j[4]);
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)2);
      localPreferenceAdapterModel.setKey(this.k[5]);
      localPreferenceAdapterModel.setTitle(this.j[5]);
      localPreferenceAdapterModel.setChecked(this.h);
      continue;
      localPreferenceAdapterModel.setPreferenceViewType((byte)2);
      localPreferenceAdapterModel.setKey(this.k[6]);
      localPreferenceAdapterModel.setTitle(this.j[6]);
      localPreferenceAdapterModel.setChecked(this.i);
    }
    label896: getAdapter().notifyDataSetChanged();
  }

  public final void a()
  {
    Intent localIntent = new Intent(this.mContext, TimedTaskReceiver.class);
    localIntent.putExtra("taskType", 3);
    int[] arrayOfInt = this.e.a();
    acc localacc = new acc(this.mContext);
    localacc.a(localIntent, "3");
    for (int i1 = 0; i1 < arrayOfInt.length; i1++)
      if (arrayOfInt[i1] == 1)
        localacc.a(localIntent, "3" + String.valueOf(i1));
  }

  public final void b()
  {
    Intent localIntent = new Intent(this.mContext, TimedTaskReceiver.class);
    localIntent.putExtra("taskType", 3);
    this.f.b(localIntent, "3");
  }

  public final BaseAdapter createAdapter()
  {
    return new BasePreferenceAdapter(this.mContext, this.mDataList, this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    return null;
  }

  public final void loadDataList()
  {
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.mListView.setPadding(0, 0, 0, 0);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i1 = 0;
    int i2 = 1;
    if (!(paramView instanceof PreferenceView));
    String str;
    label617: boolean bool1;
    label662: label668: 
    do
    {
      PreferenceAdapterModel localPreferenceAdapterModel2;
      boolean bool4;
      while (true)
      {
        return;
        str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
        if ((str != null) && (((PreferenceView)paramView).isEnabled()))
          if (str.equals(this.k[i2]))
          {
            ArrayList localArrayList1 = new ArrayList();
            for (int i3 = 0; i3 < this.l.length; i3++)
            {
              RadioButtonMode localRadioButtonMode1 = new RadioButtonMode();
              localRadioButtonMode1.setRadioButtonName(this.l[i3]);
              localRadioButtonMode1.setRadioEventCode(this.m[i3]);
              localArrayList1.add(localRadioButtonMode1);
            }
            RadioButtonDialog localRadioButtonDialog1 = new RadioButtonDialog(this.mContext);
            localRadioButtonDialog1.setDataAdapter(localArrayList1, this.e.b.getInt("scanPlan", -1));
            localRadioButtonDialog1.setTitle(this.j[i2]);
            localRadioButtonDialog1.setOnItemClickListener(new bsc(this, localRadioButtonDialog1));
            localRadioButtonDialog1.show();
          }
          else if (str.equals(this.k[2]))
          {
            if (this.a == 0)
            {
              RadioButtonDialog localRadioButtonDialog2 = new RadioButtonDialog(this.mContext);
              ArrayList localArrayList2 = new ArrayList();
              for (int i6 = 0; i6 < this.n.length; i6++)
              {
                RadioButtonMode localRadioButtonMode2 = new RadioButtonMode();
                localRadioButtonMode2.setRadioButtonName(this.n[i6]);
                localRadioButtonMode2.setRadioEventCode(this.o[i6]);
                localArrayList2.add(localRadioButtonMode2);
              }
              int[] arrayOfInt = this.e.a();
              boolean[] arrayOfBoolean = new boolean[this.n.length];
              int i7 = 0;
              while (i1 < arrayOfInt.length)
              {
                if (arrayOfInt[i1] == i2)
                {
                  arrayOfBoolean[i1] = i2;
                  i7 = i1;
                }
                i1++;
              }
              localRadioButtonDialog2.setDataAdapter(localArrayList2, i7);
              localRadioButtonDialog2.setTitle(this.j[2]);
              localRadioButtonDialog2.setOnItemClickListener(new bsd(this, localRadioButtonDialog2, arrayOfInt));
              localRadioButtonDialog2.show();
            }
          }
          else if (str.equals(this.k[3]))
          {
            if ((this.a == 0) || (this.a == i2))
            {
              TimePickerDialog localTimePickerDialog = new TimePickerDialog(this.mContext, this.r, this.c, this.d, i2);
              localTimePickerDialog.setTitle(this.j[3]);
              localTimePickerDialog.show();
            }
          }
          else
          {
            if (!str.equals(this.k[5]))
              break label668;
            localPreferenceAdapterModel2 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
            bool4 = localPreferenceAdapterModel2.isChecked();
            if (!bool4)
              break;
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(this.mContext.getString(2131428561));
            localDialog.setMessage(2131428037);
            localDialog.setPositiveButton(2131430231, new bse(this, localPreferenceAdapterModel2, bool4, localDialog), 2);
            localDialog.setNegativeButton(2131430230, new bsf(localDialog), i2);
            localDialog.show();
          }
      }
      ho localho2;
      if (!bool4)
      {
        int i4 = i2;
        localPreferenceAdapterModel2.setChecked(i4);
        localho2 = this.g;
        if (bool4)
          break label662;
      }
      while (true)
      {
        localho2.p(i2);
        c();
        getAdapter().notifyDataSetChanged();
        break;
        int i5 = 0;
        break label617;
        bool1 = false;
      }
    }
    while (!str.equals(this.k[6]));
    PreferenceAdapterModel localPreferenceAdapterModel1 = (PreferenceAdapterModel)this.mDataList.get(paramInt);
    boolean bool2 = localPreferenceAdapterModel1.isChecked();
    boolean bool3;
    label714: ho localho1;
    if (!bool2)
    {
      bool3 = bool1;
      localPreferenceAdapterModel1.setChecked(bool3);
      localho1 = this.g;
      if (bool2)
        break label759;
    }
    while (true)
    {
      localho1.o(bool1);
      c();
      getAdapter().notifyDataSetChanged();
      break;
      bool3 = false;
      break label714;
      label759: bool1 = false;
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
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
    c();
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428045);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bsb
 * JD-Core Version:    0.6.2
 */