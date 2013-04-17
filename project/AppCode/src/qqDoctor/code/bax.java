import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.FirewallManager;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.network.TrafficEntity;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class bax extends BaseListView<mn>
{
  private NetworkManager a;
  private FirewallManager b;
  private ih c;
  private jf d = new jf();
  private List<mn> e = new ArrayList();
  private List<kx> f = new ArrayList();
  private int g = -2;
  private int h = -2;
  private boolean i;
  private bbo j;
  private akc k;

  public bax(Context paramContext, BaseView paramBaseView, boolean paramBoolean)
  {
    super(paramContext);
    this.i = paramBoolean;
    this.j = ((bbo)paramBaseView);
  }

  private long a(String paramString)
  {
    long l1 = 0L;
    try
    {
      TrafficEntity localTrafficEntity = this.a.getTrafficEntity(paramString);
      if (localTrafficEntity != null)
      {
        long l3 = localTrafficEntity.mMobileUpValue;
        long l4 = localTrafficEntity.mMobileDownValue;
        l2 = l4 + l3;
        if (l2 >= l1)
          break label60;
        return l1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        long l2 = l1;
        continue;
        label60: l1 = l2;
      }
    }
  }

  private List<ListModel<mn>> a()
  {
    this.mDataList.clear();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.e, null, 1));
    this.mDataList.addAll(this.e);
    return localArrayList;
  }

  private void a(List<mn> paramList, boolean paramBoolean)
  {
    if (paramList.size() > 0)
    {
      for (int m = 0; m < paramList.size(); m++)
        ((mn)paramList.get(m)).f = paramBoolean;
      if (!paramBoolean)
        break label114;
    }
    label114: for (int n = 0; ; n = 1)
    {
      jf localjf = this.d;
      int i1 = ((mn)paramList.get(0)).a;
      byte[] arrayOfByte = localjf.b(i1).e;
      arrayOfByte[7] = ((byte)n);
      localjf.a(i1, arrayOfByte);
      new bbh(this, paramList, n).start();
      return;
    }
  }

  private void a(mn parammn, List<mn> paramList, int paramInt, boolean paramBoolean)
  {
    int m = 0;
    Dialog localDialog = new Dialog(getActivity());
    localDialog.setTitle(2131428561);
    Object localObject;
    if (paramBoolean)
    {
      String str3 = this.mContext.getString(2131427749);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = parammn.c;
      localObject = String.format(str3, arrayOfObject2);
    }
    while (m < paramList.size())
    {
      String str2 = (String)localObject + "\n" + (m + 1) + ". " + ((mn)paramList.get(m)).c;
      m++;
      localObject = str2;
      continue;
      String str1 = this.mContext.getString(2131427748);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = parammn.c;
      localObject = String.format(str1, arrayOfObject1);
      m = 0;
    }
    localDialog.setMessage((CharSequence)localObject);
    localDialog.setPositiveButton(2131428601, new bbi(this, paramList, parammn, paramInt, paramBoolean, localDialog), 1);
    localDialog.setNegativeButton(2131428480, new bbj(localDialog), 2);
    localDialog.show();
  }

  public final BaseAdapter createAdapter()
  {
    this.k = new akc(this.mContext, a(), this, getListView(), this.i);
    return this.k;
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.j.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    this.h = -1;
    if ((ih.a) && (!this.b.isInited()))
      this.mHandler.sendEmptyMessage(9);
    while (true)
    {
      return;
      a.a(this.mContext, new baz(this));
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onCreate()
  {
    setReloadData(false);
    this.c = ih.a(QQPimApplication.a());
    this.a = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.b = ((FirewallManager)ManagerCreator.getManager(FirewallManager.class));
    super.onCreate();
    this.mHandler.sendEmptyMessageDelayed(5, 1000L);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    }
    while (true)
    {
      return;
      FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
      if (localFrameworkTemplateUI != null)
        if (paramMessage.arg1 < 0)
        {
          localFrameworkTemplateUI.setInfoBarStyle((byte)49);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(8);
        }
        else if (paramMessage.arg1 == 0)
        {
          String str3 = this.mContext.getString(2131427754);
          Object[] arrayOfObject = new Object[1];
          int i7 = 0;
          int i8 = 0;
          while (i7 < this.k.getDataList().size())
          {
            if (!((mn)this.e.get(i7)).f)
              i8++;
            i7++;
          }
          arrayOfObject[0] = Integer.valueOf(i8);
          localFrameworkTemplateUI.updateInfoBarText(String.format(str3, arrayOfObject));
          localFrameworkTemplateUI.setInfoBarStyle((byte)50);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(0);
        }
        else if (paramMessage.arg1 == 1)
        {
          localFrameworkTemplateUI.updateInfoBarText(this.mContext.getString(2131427752));
          localFrameworkTemplateUI.setInfoBarStyle((byte)50);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(0);
        }
        else if (paramMessage.arg1 == 3)
        {
          localFrameworkTemplateUI.updateInfoBarText(this.mContext.getString(2131427751));
          localFrameworkTemplateUI.setInfoBarStyle((byte)50);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(0);
        }
        else if (paramMessage.arg1 == 2)
        {
          localFrameworkTemplateUI.updateInfoBarText(this.mContext.getString(2131427750));
          localFrameworkTemplateUI.setInfoBarStyle((byte)50);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(0);
        }
        else
        {
          localFrameworkTemplateUI.updateInfoBarText(this.mContext.getString(2131427751));
          localFrameworkTemplateUI.setInfoBarStyle((byte)50);
          localFrameworkTemplateUI.getEmptyTemplateUI().setVisibility(0);
          continue;
          if ((this.c.a()) && (this.g == 1))
          {
            a.a(getActivity());
            this.c.b();
          }
          else if ((this.c.c()) && (this.g == 2))
          {
            a.a(getActivity(), 4);
            this.c.d();
            continue;
            new bay(this).start();
            continue;
            this.k.notifyDataSetChanged();
            continue;
            ArrayList localArrayList1 = new ArrayList();
            localArrayList1.add(Integer.valueOf(7));
            this.f.clear();
            this.f.addAll(this.d.a(localArrayList1));
            SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
            ArrayList localArrayList2 = new ArrayList();
            int m = 0;
            if (m < this.f.size())
            {
              kx localkx2 = (kx)this.f.get(m);
              if (localkx2.b == null)
              {
                this.f.remove(m);
                m--;
              }
              while (true)
              {
                m++;
                break;
                if (localkx2.c == null)
                {
                  AppEntity localAppEntity = localSoftwareManager.getAppInfo(localkx2.b, 1);
                  if (localAppEntity != null)
                  {
                    localkx2.c = localAppEntity.getAppName();
                    if (localkx2.c == null)
                    {
                      this.f.remove(m);
                      m--;
                    }
                    else
                    {
                      localArrayList2.add(localkx2);
                    }
                  }
                  else
                  {
                    this.f.remove(m);
                    m--;
                  }
                }
              }
            }
            new Thread(new bbf(this, localArrayList2)).start();
            ArrayList localArrayList3 = new ArrayList();
            localArrayList3.add("com.qq.AppService");
            localArrayList3.add("cn.imolo.service");
            localArrayList3.add("com.wd.AndroidDaemon");
            localArrayList3.add("com.nd.assistance");
            localArrayList3.add("com.dragon.android.pandaspace");
            localArrayList3.add("com.qihoo360.daemon");
            localArrayList3.add("com.htc.android.psclient");
            localArrayList3.add("com.wandoujia.phoenix2.usbproxy");
            int n = 0;
            if (n < this.f.size())
              for (int i6 = 0; ; i6++)
                if (i6 < localArrayList3.size())
                {
                  if (((kx)this.f.get(n)).b.equals(localArrayList3.get(i6)))
                  {
                    this.f.remove(n);
                    n--;
                    localArrayList3.remove(i6);
                  }
                }
                else
                {
                  n++;
                  break;
                }
            if (this.i)
            {
              String[] arrayOfString = new String[this.f.size()];
              for (int i5 = 0; i5 < this.f.size(); i5++)
                arrayOfString[i5] = ((kx)this.f.get(i5)).b;
              this.a.refreshTrafficInfo(arrayOfString, true);
            }
            this.e.clear();
            if (this.f.size() > 0)
            {
              int i1 = 0;
              if (i1 < this.f.size())
              {
                kx localkx1 = (kx)this.f.get(i1);
                if (this.i);
                int i3;
                for (long l = a(localkx1.b); ; l = 0L)
                {
                  int i2 = 0;
                  int i4;
                  for (i3 = 0; (i2 < this.e.size()) && (((mn)this.e.get(i2)).e >= l); i3 = i4)
                  {
                    i4 = i3 + 1;
                    i2++;
                  }
                }
                if (localkx1.e[7] == 0);
                for (boolean bool = true; ; bool = false)
                {
                  mn localmn = new mn(localkx1.d, localkx1.a, localkx1.c, localkx1.b, l, bool);
                  if (i3 < this.f.size())
                    this.e.add(i3, localmn);
                  i1++;
                  break;
                }
              }
            }
            this.mHandler.sendEmptyMessage(-2);
            continue;
            String str1 = this.mContext.getString(2131428563);
            String str2 = this.mContext.getString(2131429129);
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(str1);
            localDialog.setMessage(str2);
            localDialog.setPositiveButton(2131427379, new bba(this, localDialog), 2);
            localDialog.setNeutralButton(2131427395, new bbb(this, localDialog), 1);
            localDialog.setOnCancelListener(new bbe(localDialog));
            try
            {
              localDialog.show();
            }
            catch (Exception localException)
            {
              localException.getMessage();
            }
          }
        }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int m = 0;
    mn localmn;
    boolean bool;
    ArrayList localArrayList;
    if (this.h == 0)
    {
      nd.a().a(26193);
      localmn = this.k.a(paramInt);
      if (!localmn.f);
      for (bool = true; ; bool = false)
      {
        List localList = this.k.getDataList();
        localArrayList = new ArrayList();
        while (m < localList.size())
        {
          if ((((mn)localList.get(m)).a == localmn.a) && (!((mn)localList.get(m)).d.equals(localmn.d)))
            localArrayList.add(localList.get(m));
          m++;
        }
      }
      if (localArrayList.size() <= 0)
        break label174;
      a(localmn, localArrayList, localmn.a, bool);
    }
    while (true)
    {
      return;
      label174: localArrayList.add(localmn);
      a(localArrayList, bool);
    }
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    if (this.g >= 0)
      if (this.h >= 0)
        this.mHandler.sendEmptyMessage(-2);
    while (true)
    {
      return;
      if (this.h == -2)
      {
        startLoading();
        this.mHandler.obtainMessage(4, -1, 0).sendToTarget();
        continue;
        if (this.g == -1)
        {
          startLoading();
          this.mHandler.obtainMessage(4, -1, 0).sendToTarget();
        }
        else if (this.g == -2)
        {
          this.g = -1;
          startLoading();
          this.mHandler.obtainMessage(4, -1, 0).sendToTarget();
          this.mHandler.sendEmptyMessage(6);
        }
      }
    }
  }

  public final void refreshListData()
  {
    if (this.f.size() == 0)
    {
      setEmptyText(2131428803);
      if (this.h != 0)
        break label78;
    }
    label78: for (boolean bool = true; ; bool = false)
    {
      this.k.a(bool);
      this.k.setDataList(a());
      this.k.notifyDataSetChanged();
      this.mHandler.obtainMessage(4, this.h, 0).sendToTarget();
      return;
      hideEmptyView();
      break;
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bax
 * JD-Core Version:    0.6.2
 */