import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tccdb.PinyinMatch;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class ani extends BaseListView
  implements AbsListView.OnScrollListener
{
  private int a;
  private int b;
  private OperatingModel c;
  private Toast d;
  private TextView e;
  private ArrayList<String> f;
  private List g = new ArrayList();
  private ki h = (ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
  private LocationManager i = (LocationManager)ManagerCreator.getManager(LocationManager.class);

  public ani(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.a = paramInt1;
    this.b = paramInt2;
  }

  private String a(String paramString1, String paramString2)
  {
    if (paramString2 == null)
      paramString2 = paramString1;
    String str = this.i.getLocation(paramString1);
    if (str.length() > 0)
      paramString2 = paramString2 + "(" + str + ")";
    return paramString2;
  }

  private ArrayList<String> a()
  {
    HashMap localHashMap = new HashMap();
    int j = 0;
    if (j < this.mDataList.size())
    {
      ani.a locala = (ani.a)this.mDataList.get(j);
      String str1;
      StringBuilder localStringBuilder;
      if (locala.g)
      {
        str1 = locala.e + ";" + locala.f;
        localStringBuilder = new StringBuilder();
        if (locala.d != null)
          break label149;
      }
      label149: for (String str2 = ""; ; str2 = locala.d)
      {
        localHashMap.put(str1, str2 + ";" + locala.f + ";" + locala.b);
        j++;
        break;
      }
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String[] arrayOfString = ((String)localEntry.getKey()).split(";");
      localArrayList.add(arrayOfString[0] + ";" + (String)localEntry.getValue());
    }
    return localArrayList;
  }

  private static List<ContactEntity> a(List<ContactEntity> paramList)
  {
    hq localhq1 = new hq(0);
    hq localhq2 = new hq(1);
    for (int j = -1 + paramList.size(); j >= 0; j--)
      if ((localhq1.b(((ContactEntity)paramList.get(j)).phonenum)) || (localhq2.b(((ContactEntity)paramList.get(j)).phonenum)))
        paramList.remove(j);
    return paramList;
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ahy(localContext, localArrayList);
  }

  protected final List createOperatingBarDataList()
  {
    Object localObject;
    if (this.a == 3)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      this.c = new OperatingModel(0, 2131427397);
      ((List)localObject).add(this.c);
    }
  }

  public final void loadDataList()
  {
    label164: label220: List localList5;
    label378: int i8;
    label390: ContactEntity localContactEntity3;
    int i9;
    switch (this.b)
    {
    default:
    case 1:
    case 2:
    case 5:
      List localList6;
      while (true)
      {
        if ((this.g.size() > 0) && ((this.b == 1) || (this.b == 2) || (this.b == 5)))
        {
          List localList3 = this.g;
          ContactEntity[] arrayOfContactEntity = (ContactEntity[])localList3.toArray(new ContactEntity[localList3.size()]);
          HashMap localHashMap = new HashMap();
          Arrays.sort(arrayOfContactEntity, new ank(this, new PinyinMatch(this.mContext), localHashMap));
          this.g = Arrays.asList(arrayOfContactEntity);
        }
        if (this.mDataList == null)
          break label1210;
        this.mDataList.clear();
        if ((this.g != null) && (this.g.size() > 0));
        switch (this.b)
        {
        default:
          this.mHandler.sendEmptyMessageDelayed(-2, 0L);
          return;
          this.g = this.h.getAllContact();
          if ((this.a == 0) || (this.a == 1))
          {
            this.g = a(this.g);
            continue;
            this.g = this.h.getSimContact();
            if ((this.a == 0) || (this.a == 1))
            {
              this.g = a(this.g);
              continue;
              localList5 = this.h.getAllContact();
              localList6 = this.h.getSimContact();
              if ((localList5 == null) || (localList5.size() == 0))
              {
                this.g = localList6;
              }
              else
              {
                if ((localList6 != null) && (localList6.size() != 0))
                  break label378;
                this.g = localList5;
              }
            }
          }
          break;
        case 3:
        case 1:
        case 2:
        case 5:
        case 4:
        }
      }
      Iterator localIterator4 = localList6.iterator();
      i8 = 0;
      if (localIterator4.hasNext())
      {
        localContactEntity3 = (ContactEntity)localIterator4.next();
        i9 = 0;
        label415: if (i9 >= localList5.size())
          break label1998;
        ContactEntity localContactEntity4 = (ContactEntity)localList5.get(i9);
        if ((localContactEntity4.phonenum == null) || (!localContactEntity4.phonenum.equals(localContactEntity3.phonenum)))
          break;
      }
      break;
    case 3:
    case 4:
    }
    label899: label1210: label1992: label1996: label1998: for (int i10 = 1; ; i10 = i8)
    {
      if (i10 == 0)
      {
        localContactEntity3.isSimContact = true;
        localList5.add(localContactEntity3);
      }
      i8 = i10;
      break label390;
      i9++;
      break label415;
      this.g = localList5;
      break;
      this.g = this.h.getAllCallLog();
      if (aqu.a)
      {
        aqu.a = false;
        break;
      }
      List localList4 = this.g;
      int i3 = localList4.size();
      for (int i4 = 0; i4 < i3 - 1; i4++)
        for (int i7 = -1 + localList4.size(); i7 > i4; i7--)
          if (((CallLogEntity)localList4.get(i7)).phonenum.equals(((CallLogEntity)localList4.get(i4)).phonenum))
            localList4.remove(i7);
      if ((this.a == 0) || (this.a == 1))
      {
        hq localhq3 = new hq(0);
        hq localhq4 = new hq(1);
        for (int i5 = -1 + localList4.size(); i5 >= 0; i5--)
          if ((localhq3.b(((CallLogEntity)localList4.get(i5)).phonenum)) || (localhq4.b(((CallLogEntity)localList4.get(i5)).phonenum)))
            localList4.remove(i5);
      }
      for (int i6 = 0; i6 < localList4.size(); i6++)
      {
        CallLogEntity localCallLogEntity2 = (CallLogEntity)localList4.get(i6);
        localCallLogEntity2.name = ki.a(localCallLogEntity2.phonenum);
      }
      this.g = localList4;
      break;
      hp localhp = f.c();
      localhp.b();
      hr localhr = localhp.a;
      this.g = this.h.a();
      List localList1 = this.h.b();
      Iterator localIterator3;
      if (localList1.size() > 0)
        if (this.g.size() > 0)
          localIterator3 = localList1.iterator();
      while (true)
      {
        label874: mk localmk4;
        int i1;
        if (localIterator3.hasNext())
        {
          localmk4 = (mk)localIterator3.next();
          i1 = 0;
          if (i1 >= this.g.size())
            break label1992;
          mk localmk5 = (mk)this.g.get(i1);
          if (localmk4.date > localmk5.date)
            this.g.add(i1, localmk4);
        }
        for (int i2 = 1; ; i2 = 0)
        {
          if (i2 != 0)
            break label1996;
          this.g.add(localmk4);
          break label874;
          i1++;
          break label899;
          this.g = localList1;
          List localList2 = this.g;
          ArrayList localArrayList = new ArrayList();
          HashSet localHashSet = new HashSet();
          hq localhq1 = new hq(0);
          hq localhq2 = new hq(1);
          Iterator localIterator1 = localList2.iterator();
          while (localIterator1.hasNext())
          {
            mk localmk3 = (mk)localIterator1.next();
            String str24 = fu.f(localmk3.phonenum);
            if ((!localHashSet.contains(str24)) && (!localhq1.b(localmk3.phonenum)) && (!localhq2.b(localmk3.phonenum)))
            {
              localmk3.name = ki.a(localmk3.phonenum);
              localArrayList.add(localmk3);
              localHashSet.add(str24);
            }
          }
          this.g = localArrayList;
          Iterator localIterator2 = this.g.iterator();
          while (localIterator2.hasNext())
          {
            mk localmk1 = (mk)localIterator2.next();
            localmk1.name = localhr.a(localmk1.a());
          }
          this.mDataList = new ArrayList();
          break label164;
          int n = 0;
          if (n >= this.g.size())
            break label220;
          CallLogEntity localCallLogEntity1 = (CallLogEntity)this.g.get(n);
          String str19;
          String str20;
          String str21;
          String str22;
          String str23;
          long l3;
          if ((localCallLogEntity1.phonenum != null) && (!"".equals(localCallLogEntity1.phonenum)))
          {
            str19 = a(localCallLogEntity1.phonenum, localCallLogEntity1.name);
            str20 = localCallLogEntity1.phonenum;
            str21 = a.a(localCallLogEntity1.date);
            str22 = localCallLogEntity1.name;
            str23 = localCallLogEntity1.phonenum;
            l3 = localCallLogEntity1.date;
            if (this.a != 3)
              break label1384;
          }
          label1384: for (boolean bool5 = true; ; bool5 = false)
          {
            ani.a locala4 = new ani.a(str19, str20, str21, str22, str23, l3, bool5);
            this.mDataList.add(locala4);
            n++;
            break;
          }
          int m = 0;
          if (m >= this.g.size())
            break label220;
          ContactEntity localContactEntity2 = (ContactEntity)this.g.get(m);
          String str15 = a(localContactEntity2.phonenum, localContactEntity2.name);
          String str16 = localContactEntity2.phonenum;
          String str17 = localContactEntity2.name;
          String str18 = localContactEntity2.phonenum;
          if (this.a == 3);
          for (boolean bool4 = true; ; bool4 = false)
          {
            ani.a locala3 = new ani.a(str15, str16, "", str17, str18, 0L, bool4);
            this.mDataList.add(locala3);
            m++;
            break;
          }
          int k = 0;
          if (k >= this.g.size())
            break label220;
          ContactEntity localContactEntity1 = (ContactEntity)this.g.get(k);
          String str11 = a(localContactEntity1.phonenum, localContactEntity1.name);
          String str12 = localContactEntity1.phonenum;
          String str13 = localContactEntity1.name;
          String str14 = localContactEntity1.phonenum;
          if (this.a == 3);
          for (boolean bool3 = true; ; bool3 = false)
          {
            ani.a locala2 = new ani.a(str11, str12, "", str13, str14, 0L, bool3);
            locala2.i = localContactEntity1.isSimContact;
            this.mDataList.add(locala2);
            k++;
            break;
          }
          int j = 0;
          label1657: mk localmk2;
          String str1;
          String str2;
          String str3;
          String str4;
          String str5;
          long l1;
          if (j < this.g.size())
          {
            localmk2 = (mk)this.g.get(j);
            if ((localmk2.a() != null) && (!"".equals(localmk2.a())))
            {
              if (localmk2.protocolType != 1)
                break label1895;
              StringBuffer localStringBuffer = new StringBuffer();
              localStringBuffer.append(this.mContext.getString(2131428428));
              if ((localmk2.getBody() != null) && (!localmk2.getBody().equals("")))
              {
                localStringBuffer.append("：");
                localStringBuffer.append(localmk2.getBody());
              }
              str1 = a(localmk2.a(), localmk2.name);
              str2 = localStringBuffer.toString();
              str3 = a.a(localmk2.date);
              str4 = localmk2.name;
              str5 = localmk2.a();
              l1 = localmk2.date;
              if (this.a != 3)
                break label1889;
            }
          }
          ani.a locala1;
          label1889: for (boolean bool1 = true; ; bool1 = false)
          {
            locala1 = new ani.a(str1, str2, str3, str4, str5, l1, bool1);
            this.mDataList.add(locala1);
            j++;
            break label1657;
            break;
          }
          label1895: String str6 = a(localmk2.a(), localmk2.name);
          String str7 = localmk2.getBody();
          String str8 = a.a(localmk2.date);
          String str9 = localmk2.name;
          String str10 = localmk2.a();
          long l2 = localmk2.date;
          if (this.a == 3);
          for (boolean bool2 = true; ; bool2 = false)
          {
            locala1 = new ani.a(str6, str7, str8, str9, str10, l2, bool2);
            break;
          }
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = new TextView(this.mContext);
    this.e.setTextSize(28.0F);
    this.e.setTextColor(-1);
    this.e.setGravity(49);
    this.e.setBackgroundResource(17301654);
    this.d = new Toast(this.mContext);
    this.d.setDuration(0);
    this.d.setView(this.e);
    this.d.setGravity(17, 0, 0);
    if ((this.b == 1) || (this.b == 2) || (this.b == 3) || (this.b == 4))
    {
      setEmptyText(2131428528);
      getListView().setOnScrollListener(this);
      getListView().setFastScrollEnabled(true);
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.d.cancel();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.a == 3)
    {
      ((ani.a)this.mDataList.get(paramInt)).g = true;
      this.f = a();
      Intent localIntent = new Intent();
      localIntent.putStringArrayListExtra("selecteddata", this.f);
      getActivity().setResult(-1, localIntent);
      getActivity().finish();
      return;
    }
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    boolean bool;
    if (!localCheckBoxView.getChecked())
    {
      bool = true;
      label96: localCheckBoxView.setChecked(bool);
      ((ani.a)this.mDataList.get(paramInt)).g = localCheckBoxView.getChecked();
      ArrayList localArrayList = a();
      this.c.setNumber(localArrayList.size());
      if (localArrayList.size() <= 0)
        break label175;
      this.c.setEnable(true);
    }
    while (true)
    {
      refreshOperatingBar(this.c);
      break;
      bool = false;
      break label96;
      label175: this.c.setEnable(false);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      this.f = a();
      Intent localIntent = new Intent();
      localIntent.putStringArrayListExtra("selecteddata", this.f);
      getActivity().setResult(-1, localIntent);
      getActivity().finish();
    }
  }

  public final void onResume()
  {
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((this.b == 1) && (paramInt2 > 0))
      getView().post(new anj(this, paramInt1));
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public final void refreshListData()
  {
    ahy localahy = (ahy)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localahy.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    if (this.g.size() <= 0)
      if (this.b == 2)
        setEmptyText(2131428903);
    while (true)
    {
      return;
      if (this.b == 1)
        setEmptyText(2131428904);
      else if (this.b == 3)
        setEmptyText(2131428905);
      else if (this.b == 4)
        setEmptyText(2131428906);
      else
        hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    int j = getActivity().getIntent().getIntExtra("title", 0);
    if (j == 0)
      switch (this.b)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
    while (true)
    {
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131428529);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428530);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428531);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428532);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428529);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(j);
    }
  }

  public static final class a
  {
    public String a;
    public String b;
    public String c;
    String d;
    String e;
    long f;
    public boolean g;
    public boolean h;
    public boolean i;

    public a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong, boolean paramBoolean)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
      this.d = paramString4;
      this.e = paramString5;
      this.f = paramLong;
      this.g = false;
      this.h = paramBoolean;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ani
 * JD-Core Version:    0.6.2
 */