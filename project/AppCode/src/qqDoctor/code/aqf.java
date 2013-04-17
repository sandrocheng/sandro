import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.ui.activity.commontools.NOIPCallPhoneNumberActivity;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.service.OnTabResumeListener;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumberList;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCity;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCityList;
import java.util.ArrayList;
import java.util.List;

public final class aqf extends BaseListView<PreferenceAdapterModel>
  implements OnTabResumeListener, ListPreferenceView.OnListPreferenceChangeListener
{
  private final String[] a;
  private boolean b;
  private ii c;
  private IpDialManager d;
  private final String e;
  private final String f;
  private final String g;
  private String[] h;
  private final String i;
  private String[] j;
  private String[] k;
  private ArrayList<String[]> l;
  private int m;
  private int n;
  private String[] o;
  private int p;
  private int q;
  private String[] r;
  private int s;
  private int t;

  public aqf(Context paramContext)
  {
    super(paramContext);
    String[] arrayOfString = new String[6];
    arrayOfString[0] = this.mContext.getResources().getString(2131428299);
    arrayOfString[1] = this.mContext.getResources().getString(2131428369);
    arrayOfString[2] = this.mContext.getResources().getString(2131428370);
    arrayOfString[3] = this.mContext.getResources().getString(2131428371);
    arrayOfString[4] = this.mContext.getResources().getString(2131428372);
    arrayOfString[5] = this.mContext.getResources().getString(2131428373);
    this.a = arrayOfString;
    this.e = this.mContext.getResources().getString(2131428369);
    this.f = this.mContext.getResources().getString(2131428362);
    this.g = this.mContext.getResources().getString(2131428363);
    this.i = this.mContext.getResources().getString(2131428379);
    this.m = -1;
    this.n = -1;
    this.o = new String[2];
    this.p = -1;
    this.q = -1;
    this.r = new String[2];
  }

  private void a()
  {
    int i1 = 0;
    if ((this.mDataList == null) || (this.mDataList.size() <= 0) || (this.h == null) || (this.h.length <= 0));
    while (true)
    {
      return;
      int i2;
      if (((PreferenceAdapterModel)this.mDataList.get(2)).getSummary().equals(this.h[0]))
        i2 = 0;
      ArrayList localArrayList;
      while (true)
      {
        localArrayList = new ArrayList();
        while (i1 < this.h.length)
        {
          RadioButtonMode localRadioButtonMode = new RadioButtonMode();
          localRadioButtonMode.setRadioButtonName(this.h[i1]);
          localRadioButtonMode.setRadioEventCode(this.h[i1]);
          localArrayList.add(localRadioButtonMode);
          i1++;
        }
        if (((PreferenceAdapterModel)this.mDataList.get(2)).getSummary().equals(this.h[1]))
          i2 = 1;
        else
          i2 = 2;
      }
      RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(this.mContext);
      localRadioButtonDialog.setDataAdapter(localArrayList, i2);
      localRadioButtonDialog.setTitle(this.i);
      localRadioButtonDialog.setOnItemClickListener(new aqh(this, localRadioButtonDialog));
      localRadioButtonDialog.show();
    }
  }

  private void b()
  {
    int i1 = 0;
    if ((this.j == null) || (this.l == null))
      d();
    int i2 = 0;
    if (i2 < this.j.length)
      if (this.j[i2].equals(this.o[0]))
        this.m = i2;
    for (int i3 = 1; ; i3 = 0)
    {
      this.n = 0;
      if (i3 == 0)
        this.m = 0;
      ArrayList localArrayList = new ArrayList();
      while (true)
        if (i1 < this.j.length)
        {
          RadioButtonMode localRadioButtonMode = new RadioButtonMode();
          localRadioButtonMode.setRadioButtonName(this.j[i1]);
          localRadioButtonMode.setRadioEventCode(this.j[i1]);
          localArrayList.add(localRadioButtonMode);
          i1++;
          continue;
          i2++;
          break;
        }
      RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(this.mContext);
      localRadioButtonDialog.setDataAdapter(localArrayList, this.m);
      localRadioButtonDialog.setTitle(this.mContext.getResources().getString(2131428380));
      localRadioButtonDialog.setOnItemClickListener(new aqi(this, localRadioButtonDialog));
      localRadioButtonDialog.show();
      return;
    }
  }

  private void c()
  {
    int i1 = 0;
    if ((this.k == null) || (this.l == null))
      d();
    int i2 = 0;
    if (i2 < this.k.length)
      if (this.k[i2].equals(this.r[0]))
        this.p = i2;
    for (int i3 = 1; ; i3 = 0)
    {
      if (i3 == 0)
        this.p = 0;
      this.q = 0;
      ArrayList localArrayList = new ArrayList();
      while (true)
        if (i1 < this.k.length)
        {
          RadioButtonMode localRadioButtonMode = new RadioButtonMode();
          localRadioButtonMode.setRadioButtonName(this.k[i1]);
          localRadioButtonMode.setRadioEventCode(this.k[i1]);
          localArrayList.add(localRadioButtonMode);
          i1++;
          continue;
          i2++;
          break;
        }
      RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(this.mContext);
      localRadioButtonDialog.setDataAdapter(localArrayList, this.p);
      localRadioButtonDialog.setTitle(this.mContext.getResources().getString(2131428383));
      localRadioButtonDialog.setOnItemClickListener(new aqk(this, localRadioButtonDialog));
      localRadioButtonDialog.show();
      return;
    }
  }

  private void d()
  {
    TelNumberLocator localTelNumberLocator;
    ArrayList localArrayList1;
    if ((this.j == null) || (this.j.length == 0) || (this.l == null) || (this.l.size() == 0))
    {
      localTelNumberLocator = TelNumberLocator.getDefault(this.mContext);
      localArrayList1 = localTelNumberLocator.getCityNameList("");
      if ((localArrayList1 != null) && (localArrayList1.size() > 0))
        break label59;
    }
    while (true)
    {
      return;
      label59: localArrayList1.remove(0);
      ArrayList localArrayList2 = localTelNumberLocator.getProvinceNameList();
      if ((localArrayList2 != null) && (localArrayList2.size() > 0))
      {
        localArrayList2.remove(0);
        this.l = new ArrayList();
        for (int i1 = 0; i1 < localArrayList1.size(); i1++)
          this.l.add(null);
        for (int i2 = 0; i2 < localArrayList2.size(); i2++)
        {
          ArrayList localArrayList3 = localTelNumberLocator.getCityNameList((String)localArrayList2.get(i2));
          String[] arrayOfString = new String[localArrayList3.size()];
          for (int i5 = 0; i5 < localArrayList3.size(); i5++)
            arrayOfString[i5] = ((String)localArrayList3.get(i5));
          this.l.add(arrayOfString);
          localArrayList3.removeAll(localArrayList3);
        }
        localArrayList1.addAll(localArrayList2);
        this.j = new String[localArrayList1.size()];
        for (int i3 = 0; i3 < localArrayList1.size(); i3++)
          this.j[i3] = ((String)localArrayList1.get(i3));
        this.k = new String[1 + localArrayList1.size()];
        this.k[0] = this.mContext.getResources().getString(2131428377);
        for (int i4 = 1; i4 < this.k.length; i4++)
          this.k[i4] = this.j[(i4 - 1)];
        localArrayList1.removeAll(localArrayList1);
      }
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new aiz(this.mContext);
  }

  public final View getFooterView()
  {
    return null;
  }

  public final View getHeaderView()
  {
    return null;
  }

  public final void loadDataList()
  {
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = ((IpDialManager)ManagerCreator.getManager(IpDialManager.class));
    for (int i1 = 0; i1 < this.a.length; i1++)
    {
      PreferenceAdapterModel localPreferenceAdapterModel = new PreferenceAdapterModel();
      localPreferenceAdapterModel.setTitle(this.a[i1]);
      this.mDataList.add(localPreferenceAdapterModel);
    }
    ((aiz)getAdapter()).a(this.mDataList);
    d();
    if (this.c == null)
      this.c = ii.a();
    IpDialManagerSetting localIpDialManagerSetting = this.d.getIpDialSetting();
    new StringBuilder("Mode  before:").append(localIpDialManagerSetting.getIpDialMode()).toString();
    localIpDialManagerSetting.setIpDialMode(this.c.a.getInt("auto", 2));
    new StringBuilder("Mode  niddl :").append(localIpDialManagerSetting.getIpDialMode()).toString();
    this.d.setIpDialSetting(localIpDialManagerSetting);
    new StringBuilder("Mode  after :").append(localIpDialManagerSetting.getIpDialMode()).toString();
    this.h = new String[3];
    int i2 = ft.d();
    String[] arrayOfString1 = fu.a(i2);
    this.h[0] = arrayOfString1[0];
    this.h[1] = arrayOfString1[1];
    this.h[2] = this.mContext.getResources().getString(2131428375);
    int i3 = localIpDialManagerSetting.getIpDialMode();
    String str;
    if (i3 == 2)
    {
      ((PreferenceAdapterModel)this.mDataList.get(0)).setSummary(this.mContext.getString(2131427353));
      ((PreferenceAdapterModel)this.mDataList.get(0)).setChecked(false);
      ((PreferenceAdapterModel)this.mDataList.get(1)).setSummary(String.valueOf(i3));
      ((PreferenceAdapterModel)this.mDataList.get(2)).setSummary(localIpDialManagerSetting.getIpHeader());
      if (i2 != this.c.a.getInt("operator", -2))
      {
        String[] arrayOfString2 = fu.a(this.c.a.getInt("operator", -2));
        if ((((PreferenceAdapterModel)this.mDataList.get(2)).getSummary().equals(arrayOfString2[0])) || (((PreferenceAdapterModel)this.mDataList.get(2)).getSummary().equals(arrayOfString2[1])))
          ((PreferenceAdapterModel)this.mDataList.get(2)).setSummary(this.h[0]);
        localIpDialManagerSetting.setIpHeader(((PreferenceAdapterModel)this.mDataList.get(2)).getSummary());
        this.d.setIpDialSetting(localIpDialManagerSetting);
      }
      if (((PreferenceAdapterModel)this.mDataList.get(2)).getSummary().equals(""))
      {
        ((PreferenceAdapterModel)this.mDataList.get(2)).setSummary(this.h[0]);
        localIpDialManagerSetting.setIpHeader(((PreferenceAdapterModel)this.mDataList.get(2)).getSummary());
        this.d.setIpDialSetting(localIpDialManagerSetting);
      }
      this.c.b.putInt("operator", i2).commit();
      this.o[0] = localIpDialManagerSetting.getLocalPhoneLocation().getProvince();
      this.o[1] = localIpDialManagerSetting.getLocalPhoneLocation().getCity();
      str = this.o[0] + this.o[1];
      if (!str.equals(""))
        break label938;
      ((PreferenceAdapterModel)this.mDataList.get(3)).setSummary(this.mContext.getString(2131428300));
      label698: IpDialProvinceCityList localIpDialProvinceCityList = localIpDialManagerSetting.getExcludedAreaList();
      if (localIpDialProvinceCityList.toArrayList().size() == 0)
        break label959;
      this.r[0] = localIpDialProvinceCityList.get(0).getProvince();
      this.r[1] = localIpDialProvinceCityList.get(0).getCity();
      label746: if ((!this.r[0].equals("")) || (!this.r[1].equals("")))
        break label978;
      ((PreferenceAdapterModel)this.mDataList.get(4)).setSummary(this.mContext.getResources().getString(2131428377));
    }
    while (true)
    {
      ((PreferenceAdapterModel)this.mDataList.get(5)).setSummary(localIpDialManagerSetting.getExcludedPhoneNumberList().size() + this.mContext.getResources().getString(2131428374));
      this.b = this.c.a.getBoolean("isfirst", true);
      getListView().setPadding(0, 0, 0, 0);
      setDivider(null);
      return;
      ((PreferenceAdapterModel)this.mDataList.get(0)).setSummary(this.mContext.getString(2131427352));
      ((PreferenceAdapterModel)this.mDataList.get(0)).setChecked(true);
      break;
      label938: ((PreferenceAdapterModel)this.mDataList.get(3)).setSummary(str);
      break label698;
      label959: this.r[0] = "";
      this.r[1] = "";
      break label746;
      label978: ((PreferenceAdapterModel)this.mDataList.get(4)).setSummary(this.r[0] + this.r[1]);
    }
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.mDataList == null) || (this.mDataList.size() <= 0))
      return;
    if (this.d.getIpDialSetting().getIpDialMode() != 2);
    for (int i1 = 1; ; i1 = 0)
    {
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
      while (true)
      {
        nd.a().a(19);
        break;
        IpDialManagerSetting localIpDialManagerSetting2 = this.d.getIpDialSetting();
        if (localIpDialManagerSetting2.getIpDialMode() == 2)
        {
          localIpDialManagerSetting2.setIpDialMode(this.c.a.getInt("auto_cache", 1));
          ((PreferenceAdapterModel)this.mDataList.get(0)).setSummary(this.mContext.getString(2131427352));
          ((PreferenceAdapterModel)this.mDataList.get(0)).setChecked(true);
        }
        while (true)
        {
          ii localii = this.c;
          int i5 = localIpDialManagerSetting2.getIpDialMode();
          localii.b.putInt("auto", i5).commit();
          this.d.setIpDialSetting(localIpDialManagerSetting2);
          getAdapter().notifyDataSetChanged();
          break;
          localIpDialManagerSetting2.setIpDialMode(2);
          ((PreferenceAdapterModel)this.mDataList.get(0)).setSummary(this.mContext.getString(2131427353));
          ((PreferenceAdapterModel)this.mDataList.get(0)).setChecked(false);
        }
        if (i1 != 0)
        {
          String[] arrayOfString1 = new String[2];
          arrayOfString1[0] = this.f;
          arrayOfString1[1] = this.g;
          String[] arrayOfString2 = { "0", "1" };
          ArrayList localArrayList = new ArrayList();
          for (int i2 = 0; i2 < arrayOfString1.length; i2++)
          {
            RadioButtonMode localRadioButtonMode = new RadioButtonMode();
            localRadioButtonMode.setRadioButtonName(arrayOfString1[i2]);
            localRadioButtonMode.setRadioEventCode(arrayOfString2[i2]);
            localArrayList.add(localRadioButtonMode);
          }
          IpDialManagerSetting localIpDialManagerSetting1 = this.d.getIpDialSetting();
          int i3 = localIpDialManagerSetting1.getIpDialMode();
          int i4 = 0;
          if (i3 == 0);
          while (true)
          {
            RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(this.mContext);
            localRadioButtonDialog.setDataAdapter(localArrayList, i4);
            localRadioButtonDialog.setTitle(this.e);
            localRadioButtonDialog.setOnItemClickListener(new aqg(this, localIpDialManagerSetting1, localRadioButtonDialog));
            localRadioButtonDialog.show();
            break;
            i4 = 0;
            if (i3 == 1)
              i4 = 1;
          }
          if (i1 != 0)
          {
            a();
            continue;
            if (i1 != 0)
            {
              b();
              continue;
              if (i1 != 0)
              {
                c();
                continue;
                if (i1 != 0)
                {
                  Intent localIntent = new Intent(this.mContext, NOIPCallPhoneNumberActivity.class);
                  this.mContext.startActivity(localIntent);
                }
              }
            }
          }
        }
      }
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    if (getAdapter() != null)
    {
      ArrayList localArrayList = this.d.getIpDialSetting().getExcludedPhoneNumberList().toArrayList();
      if ((this.mDataList != null) && (localArrayList != null) && (this.mDataList.size() == 6))
        ((PreferenceAdapterModel)this.mDataList.get(5)).setSummary(localArrayList.size() + this.mContext.getResources().getString(2131428374));
      getAdapter().notifyDataSetChanged();
    }
  }

  public final void onTabResume()
  {
  }

  public final void refreshListData()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427471);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqf
 * JD-Core Version:    0.6.2
 */