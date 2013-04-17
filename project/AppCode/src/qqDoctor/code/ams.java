import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ams extends BaseListView
{
  private List a = new ArrayList();
  private OperatingModel b;
  private OperatingModel c;
  private int d;
  private boolean e = true;
  private boolean f = false;
  private sy g;
  private LocationManager h;
  private zs i;
  private jp j;
  private hi k;
  private ki l;
  private ho m;
  private jm n;
  private boolean o;
  private boolean p;
  private BaseView q;
  private Dialog r;
  private Handler s = new Handler(new amt(this));

  public ams(Context paramContext, BaseView paramBaseView, int paramInt)
  {
    super(paramContext);
    this.d = paramInt;
    this.q = paramBaseView;
  }

  private int a()
  {
    List localList = this.mDataList;
    int i1 = 0;
    if (localList != null)
    {
      int i2 = this.mDataList.size();
      i1 = 0;
      if (i2 > 0)
      {
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.mDataList.size())
        {
          if (((le)this.mDataList.get(i3)).d)
            i4++;
          i3++;
        }
        i1 = i4;
      }
    }
    return i1;
  }

  private String a(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((paramString2 != null) && (paramString2.length() < 3));
    for (String str1 = null; ; str1 = paramString2)
    {
      if ((paramString1 != null) && (paramString1.length() > 0))
      {
        localStringBuffer.append(paramString1);
        if (str1 != null)
        {
          String str3 = this.h.getLocation(str1);
          if (str3.length() > 0)
            localStringBuffer.append("(" + str3 + ")");
        }
        return localStringBuffer.toString();
      }
      if (str1 == null);
      for (String str2 = this.mContext.getResources().getString(2131428361); ; str2 = str1)
      {
        localStringBuffer.append(str2);
        break;
      }
    }
  }

  private void a(int paramInt, List<Integer> paramList, Handler paramHandler)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131427340);
      localDialog.setMessage(2131427852);
      localDialog.setPositiveButton(2131427397, new amv(this, paramInt, paramList, paramHandler, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new amw(localDialog), 2);
      localDialog.show();
    }
    while (true)
    {
      return;
      ha.a(this.mContext, 2131428589);
    }
  }

  private List<Integer> b()
  {
    ArrayList localArrayList = new ArrayList();
    if ((this.mDataList != null) && (this.mDataList.size() > 0))
      for (int i1 = 0; i1 < this.mDataList.size(); i1++)
        if (((le)this.mDataList.get(i1)).d)
          localArrayList.add(Integer.valueOf(i1));
    return localArrayList;
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ahw(localContext, localArrayList, true);
  }

  public final List createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    switch (this.d)
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
    while (true)
    {
      localArrayList.add(this.b);
      this.c = new OperatingModel(1002, 2131428653);
      this.c.setStyle(0);
      this.c.setEnable(false);
      if ((this.d == 4) || (this.d == 3) || (this.d == 5) || (this.d == 6))
        this.c.setVisible(8);
      localArrayList.add(this.c);
      return localArrayList;
      this.b = new OperatingModel(1000, 2131427377);
      continue;
      this.b = new OperatingModel(1001, 2131427411, 0);
      this.b.setEnable(false);
      this.b.setButtonIconid(2130837596);
    }
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.q.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    if ((!this.o) && ((this.d == 3) || (this.d == 5)))
      this.p = true;
    if ((this.o) || (!this.p))
      this.mDataList.clear();
    label246: int i4;
    switch (this.d)
    {
    default:
    case 4:
    case 6:
    case 3:
      while (true)
      {
        if (this.o)
          this.o = false;
        this.mHandler.sendEmptyMessage(-2);
        return;
        this.a = this.j.a();
        if ((this.a != null) && (this.a.size() > 0))
        {
          int i7 = 0;
          if (i7 < this.a.size())
          {
            mk localmk4 = (mk)this.a.get(i7);
            StringBuffer localStringBuffer2;
            if (localmk4.protocolType == 1)
            {
              localStringBuffer2 = new StringBuffer();
              if ((localmk4.getBody() != null) && (!localmk4.getBody().equals("")))
              {
                localStringBuffer2.append(this.mContext.getString(2131428428));
                localStringBuffer2.append("：");
                localStringBuffer2.append(localmk4.getBody());
              }
            }
            for (le localle4 = new le(a("", localmk4.a()), a.a(localmk4.date), localStringBuffer2.toString(), this.n.a(localmk4)); ; localle4 = new le(a("", localmk4.a()), a.a(localmk4.date), localmk4.body, this.n.a(localmk4)))
            {
              this.mDataList.add(localle4);
              i7++;
              break;
              String str7 = this.mContext.getString(2131427462);
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = this.mContext.getString(2131428428);
              localStringBuffer2.append(String.format(str7, arrayOfObject2));
              break label246;
            }
            this.a = this.k.b();
            if ((this.a != null) && (this.a.size() > 0))
            {
              ArrayList localArrayList3 = new ArrayList();
              HashSet localHashSet2 = new HashSet();
              int i5 = 0;
              if (i5 < this.a.size())
              {
                ky localky = (ky)this.a.get(i5);
                String str3 = fu.f(fu.a(localky.phonenum));
                boolean bool;
                if ((!this.l.contains(localky.phonenum)) && (!localHashSet2.contains(str3)))
                {
                  String str4 = a(localky.name, localky.phonenum);
                  String str5 = a.a(localky.date);
                  String str6 = localky.phonenum;
                  jm localjm = this.n;
                  if (localjm.a == null)
                    localjm.a = localjm.d(1);
                  long l1 = localky.date;
                  int i6 = fu.f(fu.a(localky.phonenum)).hashCode();
                  jm.a locala = (jm.a)localjm.a.get(Long.valueOf(l1));
                  if ((locala != null) && (locala.a == i6) && (locala.b == 0))
                  {
                    bool = true;
                    label665: le localle3 = new le(str4, str5, str6, bool);
                    this.mDataList.add(localle3);
                    localHashSet2.add(str3);
                  }
                }
                while (true)
                {
                  i5++;
                  break;
                  bool = false;
                  break label665;
                  localArrayList3.add(localky);
                }
              }
              if (localArrayList3.size() > 0)
              {
                this.a.removeAll(localArrayList3);
                continue;
                List localList2;
                int i3;
                try
                {
                  this.a = this.l.c(1);
                  localList2 = this.l.c();
                  if (localList2.size() > 0)
                  {
                    if (this.a.size() <= 0)
                      break label1146;
                    Iterator localIterator = localList2.iterator();
                    while (localIterator.hasNext())
                    {
                      mk localmk2 = (mk)localIterator.next();
                      i3 = 0;
                      if (i3 >= this.a.size())
                        break label1529;
                      mk localmk3 = (mk)this.a.get(i3);
                      if (localmk2.date <= localmk3.date)
                        break label1140;
                      this.a.add(i3, localmk2);
                      i4 = 1;
                      label887: if (i4 == 0)
                        this.a.add(localmk2);
                    }
                  }
                }
                catch (Exception localException2)
                {
                  this.a = null;
                  localException2.getMessage();
                }
                label920: if ((this.a != null) && (this.a.size() > 0))
                {
                  ArrayList localArrayList2;
                  while (true)
                  {
                    mk localmk1;
                    synchronized (this.mDataList)
                    {
                      localArrayList2 = new ArrayList();
                      int i2 = 0;
                      if (i2 >= this.a.size())
                        break label1266;
                      localmk1 = (mk)this.a.get(i2);
                      if (this.l.contains(localmk1.phonenum))
                        break label1255;
                      if (localmk1.protocolType == 1)
                      {
                        StringBuffer localStringBuffer1 = new StringBuffer();
                        if ((localmk1.getBody() != null) && (!localmk1.getBody().equals("")))
                        {
                          localStringBuffer1.append(this.mContext.getString(2131428428));
                          localStringBuffer1.append("：");
                          localStringBuffer1.append(localmk1.getBody());
                          localle2 = new le(a("", localmk1.a()), a.a(localmk1.date), localStringBuffer1.toString(), false);
                          this.mDataList.add(localle2);
                          i2++;
                          continue;
                          label1140: i3++;
                          break;
                          label1146: this.a = localList2;
                          break label920;
                        }
                        String str2 = this.mContext.getString(2131427462);
                        Object[] arrayOfObject1 = new Object[1];
                        arrayOfObject1[0] = this.mContext.getString(2131428428);
                        localStringBuffer1.append(String.format(str2, arrayOfObject1));
                      }
                    }
                    le localle2 = new le(a("", localmk1.a()), a.a(localmk1.date), localmk1.body, false);
                    continue;
                    label1255: localArrayList2.add(localmk1);
                  }
                  label1266: if (localArrayList2.size() > 0)
                    this.a.removeAll(localArrayList2);
                }
              }
            }
          }
        }
      }
    case 5:
    }
    while (true)
    {
      ArrayList localArrayList1;
      int i1;
      try
      {
        this.a = this.l.getAllCallLog();
        if ((this.a == null) || (this.a.size() <= 0))
          break;
        localArrayList1 = new ArrayList();
        HashSet localHashSet1 = new HashSet();
        i1 = 0;
        if (i1 >= this.a.size())
          break label1506;
        CallLogEntity localCallLogEntity = (CallLogEntity)this.a.get(i1);
        String str1 = fu.f(fu.a(localCallLogEntity.phonenum));
        if ((!this.l.contains(localCallLogEntity.phonenum)) && (!localHashSet1.contains(str1)))
        {
          le localle1 = new le(a(localCallLogEntity.name, localCallLogEntity.phonenum), a.a(localCallLogEntity.date), localCallLogEntity.phonenum, false);
          this.mDataList.add(localle1);
          localHashSet1.add(str1);
        }
        else
        {
          localArrayList1.add(localCallLogEntity);
        }
      }
      catch (Exception localException1)
      {
        this.a = null;
        localException1.getMessage();
      }
      break;
      label1506: if (localArrayList1.size() <= 0)
        break;
      this.a.removeAll(localArrayList1);
      break;
      label1529: i4 = 0;
      break label887;
      i1++;
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.g = sy.b(getActivity());
    this.h = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    this.j = new jp("smslog", "mms_pdu", "mms_parts");
    this.k = new hi(0);
    this.l = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.i = new zs();
    this.m = ho.a();
    if (jm.b == null)
      jm.b = new jm();
    this.n = jm.b;
    this.o = true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt > -1 + this.mDataList.size());
    le localle;
    do
    {
      return;
      localle = (le)this.mDataList.get(paramInt);
    }
    while (localle.e);
    boolean bool;
    label50: int i1;
    if (!localle.d)
    {
      bool = true;
      localle.d = bool;
      i1 = a();
      if (i1 <= 0)
        break label148;
      this.b.setStyle(1);
      this.b.setEnable(true);
      this.b.setButtonIconid(2130837595);
      label94: this.b.setNumber(i1);
      if ((this.e) || (i1 != 0))
        break label177;
      this.e = true;
      refreshListData();
    }
    while (true)
    {
      refreshOperatingBar(this.b);
      getAdapter().notifyDataSetChanged();
      break;
      bool = false;
      break label50;
      label148: this.b.setStyle(0);
      this.b.setEnable(false);
      this.b.setButtonIconid(2130837596);
      break label94;
      label177: if (i1 == this.mDataList.size())
      {
        this.e = false;
        refreshListData();
      }
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    int i1 = 0;
    if (this.f);
    switch (paramOperatingModel.getID())
    {
    default:
    case 1000:
    case 1002:
      while (true)
      {
        return;
        if (this.d == 0)
        {
          a(0, b(), this.mHandler);
        }
        else
        {
          a(1, b(), this.mHandler);
          continue;
          if ((this.mDataList != null) && (this.mDataList.size() > 0))
            if (this.e)
            {
              this.e = false;
              while (i1 < this.mDataList.size())
              {
                ((le)this.mDataList.get(i1)).d = true;
                i1++;
              }
              this.mHandler.sendEmptyMessage(-2);
            }
            else
            {
              this.e = true;
              for (int i3 = 0; i3 < this.mDataList.size(); i3++)
                ((le)this.mDataList.get(i3)).d = false;
              this.mHandler.sendEmptyMessage(-2);
            }
        }
      }
    case 1001:
    }
    List localList = b();
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setIcon(2130838140);
    localDialog.setTitle(2131428486);
    String str;
    if ((this.d == 4) || (this.d == 3))
      if (this.m.aH())
        str = this.mContext.getString(2131428490);
    while (true)
    {
      localDialog.setMessage(str);
      localDialog.setPositiveButton(2131427397, new amx(this, localList, localDialog), 2);
      localDialog.show();
      break;
      if ((int)(2.0D * Math.random()) == 0)
      {
        str = this.mContext.getString(2131428491);
      }
      else
      {
        str = this.mContext.getString(2131428492);
        continue;
        if (this.d != 6)
        {
          int i2 = this.d;
          str = null;
          if (i2 != 5);
        }
        else if (this.m.aJ())
        {
          str = this.mContext.getString(2131428493);
        }
        else if ((int)(2.0D * Math.random()) == 0)
        {
          str = this.mContext.getString(2131428494);
        }
        else
        {
          str = this.mContext.getString(2131428495);
        }
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    if (this.mDataList.size() > 0)
    {
      hideEmptyView();
      this.f = true;
    }
    while (true)
    {
      synchronized (getAdapter())
      {
        ahw localahw = (ahw)getAdapter();
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new ListModel(this.mDataList, null, 1, false));
        localahw.setDataList(localArrayList);
        getAdapter().notifyDataSetChanged();
        setReloadData(false);
        this.b.setNumber(a());
        if (a() == 0)
        {
          this.b.setEnable(false);
          this.b.setStyle(0);
          this.b.setButtonIconid(2130837596);
          refreshOperatingBar(this.b);
          if (!this.e)
            break label327;
          this.c.setText(this.mContext.getString(2131428653));
          refreshOperatingBar(this.c);
          return;
          switch (this.d)
          {
          default:
            break;
          case 0:
            setEmptyText(2131428805);
            break;
          case 1:
            setEmptyText(2131428806);
            break;
          case 2:
            setEmptyText(2131428808);
            break;
          case 3:
            setEmptyText(2131428810);
            break;
          case 4:
            setEmptyText(2131428805);
            break;
          case 5:
            setEmptyText(2131428811);
            break;
          case 6:
            setEmptyText(2131428806);
          }
        }
      }
      this.b.setStyle(1);
      this.b.setButtonIconid(2130837595);
      continue;
      label327: this.c.setText(this.mContext.getString(2131428655));
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    switch (this.d)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428651);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428651);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ams
 * JD-Core Version:    0.6.2
 */