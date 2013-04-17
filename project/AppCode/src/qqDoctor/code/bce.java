import android.app.NotificationManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class bce extends BasePinnedListView<mb.a>
{
  private List<mb.a> a = new ArrayList();
  private List<mb.a> b = new ArrayList();
  private aii c;
  private ja d;
  private BaseView e;
  private Dialog f;
  private View g;
  private boolean h = false;
  private int i = -1;
  private Handler j = new bcf(this);
  private BasePinnedListAdapter<mb.a> k;
  private View.OnClickListener l = new bci(this);
  private View.OnClickListener m = new bcl(this);

  public bce(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.e = paramBaseView;
    this.i = ((bby)this.e).a;
  }

  private List<ListModel<mb.a>> b()
  {
    ArrayList localArrayList = new ArrayList();
    if ((this.a != null) && (this.a.size() > 0))
      localArrayList.add(new ListModel(this.a, this.mContext.getString(2131430194), 0));
    if ((this.b != null) && (this.b.size() > 0))
      localArrayList.add(new ListModel(this.b, this.mContext.getString(2131430195), 0));
    this.mDataList.clear();
    if ((this.a != null) && (this.a.size() > 0))
      this.mDataList.addAll(this.a);
    if ((this.b != null) && (this.b.size() > 0))
      this.mDataList.addAll(this.b);
    return localArrayList;
  }

  private void b(int paramInt)
  {
    if (this.g == null)
      this.g = LayoutInflater.from(this.mContext).inflate(2130903198, null);
    TextView localTextView = (TextView)this.g.findViewById(2131231203);
    switch (paramInt)
    {
    default:
    case -100:
    case 0:
    case -7:
    case -99:
    case -8:
    }
    while (true)
    {
      if (this.g != null)
        getFrameworkTemplateUI().setTipsView(this.g);
      return;
      localTextView.setText(2131430205);
      this.g.setOnClickListener(new bcm(this));
      continue;
      this.g.setOnClickListener(null);
      localTextView.setText(2131429123);
      continue;
      this.g.setOnClickListener(null);
      localTextView.setText(2131429117);
      continue;
      this.g.setOnClickListener(null);
      localTextView.setText(2131429128);
    }
  }

  public final void a()
  {
    if (getFrameworkTemplateUI() == null);
    while (true)
    {
      return;
      if (!this.h)
      {
        if (this.g != null)
        {
          getFrameworkTemplateUI().removeExistedTipsView();
          this.g = null;
        }
        getFrameworkTemplateUI().setInfoBarStyle((byte)49);
      }
      else
      {
        if (this.c != null)
          this.c.b();
        ho localho = ho.a();
        if ((this.i == 1) || (this.i == 2))
        {
          if (this.g == null)
            this.g = LayoutInflater.from(this.mContext).inflate(2130903198, null);
          TextView localTextView = (TextView)this.g.findViewById(2131231203);
          this.g.setOnClickListener(new bch(this));
          localTextView.setText(2131429112);
          getFrameworkTemplateUI().setTipsView(this.g);
        }
        else if (!localho.di())
        {
          b(0);
        }
        else if (!xi.b())
        {
          b(localho.dz());
        }
        else
        {
          if (this.g != null)
          {
            getFrameworkTemplateUI().removeExistedTipsView();
            this.g = null;
          }
          if (this.c != null)
          {
            aii localaii = this.c;
            ho.a().di();
            localaii.b();
          }
          getFrameworkTemplateUI().setInfoBarStyle((byte)49);
        }
      }
    }
  }

  public final void a(int paramInt)
  {
    this.i = paramInt;
    a();
    if (this.c != null)
      this.c.a(paramInt);
    this.h = true;
  }

  public final BasePinnedListAdapter<mb.a> createAdapter()
  {
    this.c = new aii(this.mContext, this, b());
    this.c.a(this.i);
    this.k = this.c;
    return this.k;
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.e.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final boolean isPinnedHeaderListView()
  {
    return false;
  }

  public final void loadDataList()
  {
    this.a.clear();
    this.b.clear();
    List localList = this.d.a(true);
    if (localList != null)
    {
      ArrayList localArrayList = new ArrayList();
      int n = localList.size();
      SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
      for (int i1 = 0; i1 < n; i1++)
      {
        mb localmb = (mb)localList.get(i1);
        AppEntity localAppEntity = localSoftwareManager.getAppInfo(localmb.a, 1);
        if (localAppEntity != null)
        {
          localmb.b = localAppEntity.getAppName();
          localArrayList.addAll(localmb.f);
        }
      }
      Collections.sort(localArrayList, new bce.a());
      int i2 = localArrayList.size();
      int i3 = 0;
      if (i3 < i2)
      {
        mb.a locala = (mb.a)localArrayList.get(i3);
        int i4;
        if ((0x1 & locala.e) != 0)
        {
          i4 = 1;
          label180: if (i4 == 0)
            break label209;
          this.b.add(locala);
        }
        label258: 
        while (true)
        {
          i3++;
          break;
          i4 = 0;
          break label180;
          label209: if (locala.i.d)
          {
            if (locala.i.c != 0);
            for (int i5 = 1; ; i5 = 0)
            {
              if (i5 != 0)
                break label258;
              this.a.add(locala);
              break;
            }
          }
        }
      }
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = new ja();
    ((aii)getAdapter()).a(this.m, this.l);
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    aii localaii = (aii)getAdapter();
    if (localaii.a() != paramInt)
      localaii.b(paramInt);
    while (true)
    {
      localaii.notifyDataSetChanged();
      return;
      localaii.b(0);
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    int n = 0;
    switch (paramMenuModel.getId())
    {
    default:
    case 77:
    }
    while (true)
    {
      return true;
      ((NotificationManager)this.mContext.getSystemService("notification")).cancel(19172439);
      List localList = this.d.a(false);
      if ((localList != null) && (localList.size() > 0))
      {
        int i1 = localList.size();
        while (n < i1)
        {
          ja.c((mb)localList.get(n));
          n++;
        }
      }
      nd.a().a(26296);
      this.d.a.c("notification_msg");
      this.mHandler.sendEmptyMessage(-1);
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (paramMenu.findItem(77) == null)
      paramMenu.add(0, 77, 0, QQPimApplication.a().getResources().getString(2131428664)).setIcon(2130838010);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
    a();
    ((NotificationManager)this.mContext.getSystemService("notification")).cancel(19172439);
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(b());
    getAdapter().notifyDataSetChanged();
    if (isReloadData())
      setReloadData(false);
    if ((this.mDataList == null) || (this.mDataList.size() == 0))
      setEmptyText(this.mContext.getString(2131430200));
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }

  final class a
    implements Comparator
  {
    public final int compare(Object paramObject1, Object paramObject2)
    {
      mb.a locala = (mb.a)paramObject1;
      return (int)(((mb.a)paramObject2).h - locala.h);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bce
 * JD-Core Version:    0.6.2
 */