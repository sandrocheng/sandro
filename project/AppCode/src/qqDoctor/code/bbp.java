import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
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
import java.util.List;

public final class bbp extends BasePinnedListView<mb>
{
  private List<mb> a = new ArrayList();
  private List<mb> b = new ArrayList();
  private aik c;
  private ja d;
  private BaseView e;
  private boolean f = false;
  private Dialog g;
  private int h = -1;
  private Handler i = new bbq(this);
  private View j;
  private BasePinnedListAdapter<mb> k;

  public bbp(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.e = paramBaseView;
    this.h = ((bby)this.e).a;
  }

  private List<ListModel<mb>> b()
  {
    ArrayList localArrayList = new ArrayList();
    this.mDataList.clear();
    if (this.b.size() > 0)
      localArrayList.add(new ListModel(this.b, this.mContext.getString(2131430197), 0));
    if (this.a.size() > 0)
      localArrayList.add(new ListModel(this.a, this.mContext.getString(2131430196), 0));
    this.mDataList.addAll(this.b);
    this.mDataList.addAll(this.a);
    return localArrayList;
  }

  private void b(int paramInt)
  {
    if (this.j == null)
      this.j = LayoutInflater.from(this.mContext).inflate(2130903198, null);
    TextView localTextView = (TextView)this.j.findViewById(2131231203);
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
      if (this.j != null)
        getFrameworkTemplateUI().setTipsView(this.j);
      return;
      localTextView.setText(2131430205);
      this.j.setOnClickListener(new bbt(this));
      continue;
      this.j.setOnClickListener(null);
      localTextView.setText(2131429123);
      continue;
      this.j.setOnClickListener(null);
      localTextView.setText(2131429117);
      continue;
      this.j.setOnClickListener(null);
      localTextView.setText(2131429128);
    }
  }

  public final void a()
  {
    if (getFrameworkTemplateUI() == null);
    label294: 
    while (true)
    {
      return;
      if (!this.f)
      {
        if (this.j != null)
        {
          getFrameworkTemplateUI().removeExistedTipsView();
          this.j = null;
        }
        getFrameworkTemplateUI().setInfoBarStyle((byte)49);
      }
      else
      {
        ho localho = ho.a();
        if (this.c != null)
          this.c.a();
        if ((this.h == 1) || (this.h == 2))
        {
          if (this.j != null)
          {
            getFrameworkTemplateUI().removeExistedTipsView();
            this.j = null;
          }
          getFrameworkTemplateUI().setInfoBarStyle((byte)50);
          getFrameworkTemplateUI().updateInfoBarText(this.mContext.getString(2131429130));
        }
        while (true)
        {
          if (this.h == 0)
            break label294;
          if (this.j == null)
            this.j = LayoutInflater.from(this.mContext).inflate(2130903198, null);
          TextView localTextView = (TextView)this.j.findViewById(2131231203);
          this.j.setOnClickListener(new bbs(this));
          localTextView.setText(2131429112);
          getFrameworkTemplateUI().setTipsView(this.j);
          break;
          if (!localho.di())
          {
            b(0);
          }
          else if ((localho.di()) && (!xi.b()))
          {
            b(localho.dz());
          }
          else
          {
            if (this.j != null)
            {
              getFrameworkTemplateUI().removeExistedTipsView();
              this.j = null;
            }
            if (this.c != null)
            {
              aik localaik = this.c;
              ho.a().di();
              localaik.a();
            }
            getFrameworkTemplateUI().setInfoBarStyle((byte)49);
          }
        }
      }
    }
  }

  public final void a(int paramInt)
  {
    this.h = paramInt;
    a();
    if (this.c != null)
      this.c.a(paramInt);
    this.f = true;
  }

  public final BasePinnedListAdapter<mb> createAdapter()
  {
    this.c = new aik(this.mContext, this, b());
    this.c.a(this.h);
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
    List localList = this.d.a(false);
    if (localList != null)
    {
      int m = localList.size();
      SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
      int n = 0;
      if (n < m)
      {
        mb localmb = (mb)localList.get(n);
        int i1;
        if (localmb.d)
        {
          if (localmb.c == 0)
            break label149;
          i1 = 1;
          label89: if (i1 == 0);
        }
        else
        {
          AppEntity localAppEntity = localSoftwareManager.getAppInfo(localmb.a, 1);
          if (localAppEntity != null)
          {
            localmb.b = localAppEntity.getAppName();
            if (localmb.c != 2)
              break label155;
            this.b.add(localmb);
          }
        }
        while (true)
        {
          n++;
          break;
          label149: i1 = 0;
          break label89;
          label155: if ((localmb.c == 1) || (localmb.c == 0))
            this.a.add(localmb);
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
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return true;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
    a();
  }

  public final void refreshListData()
  {
    getAdapter().clearDataList();
    getAdapter().setDataList(b());
    getAdapter().notifyDataSetChanged();
    if (isReloadData())
      setReloadData(false);
    if ((this.mDataList == null) || (this.mDataList.size() == 0))
      setEmptyText(this.mContext.getString(2131430201));
    while (true)
    {
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbp
 * JD-Core Version:    0.6.2
 */