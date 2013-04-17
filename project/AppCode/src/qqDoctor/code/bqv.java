import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.tencent.qqpimsecure.ui.activity.systemoptimize.UserWhiteListActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bqv extends blt<kw>
{
  protected Handler a = new bqz(this);
  private List<kw> b = new ArrayList();
  private List<kw> d = new ArrayList();
  private ContextMenuDialog e;
  private List<Integer> f = new ArrayList();
  private zo g = zo.a();
  private ho h = ho.a();
  private boolean i = false;
  private Handler j;

  public bqv(Context paramContext)
  {
    super(paramContext);
    vh.a();
    this.j = new bqw(this);
  }

  private void d()
  {
    this.f.clear();
    alz localalz = (alz)getAdapter();
    Iterator localIterator = this.mDataList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if (this.g.c(localkw))
      {
        kw.w();
        this.f.add(Integer.valueOf(localalz.b(localkw)));
      }
      else
      {
        kw.w();
      }
    }
  }

  private List<ListModel<kw>> e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.d, this.mContext.getString(2131428130), 0));
    localArrayList.add(new ListModel(this.b, this.mContext.getString(2131428129), 0));
    return localArrayList;
  }

  public final void a()
  {
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if (localFrameworkTemplateUI != null)
    {
      localFrameworkTemplateUI.setOptionNotifyImg(2130838102);
      this.i = true;
      if (this.h.dI())
        this.j.sendEmptyMessageDelayed(1, 2000L);
    }
  }

  public final BasePinnedListAdapter<kw> createAdapter()
  {
    return new alz(this, e());
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(1, 2131429732));
    return localArrayList;
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    this.b = new ArrayList();
    this.d = new ArrayList();
    this.f.clear();
    Iterator localIterator = this.g.i().iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if ((!localkw.getPackageName().equals(new hg().a)) && (localkw.G() > 0L) && (zo.d(localkw)))
      {
        if (localkw.isSystemApp())
          this.b.add(localkw);
        while (true)
        {
          localkw.b(1);
          if (!this.g.b(localkw))
            break label170;
          localkw.c(true);
          break;
          this.d.add(localkw);
        }
        label170: localkw.c(false);
      }
    }
    this.mDataList.clear();
    this.mDataList.addAll(this.d);
    this.mDataList.addAll(this.b);
    d();
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = new ContextMenuDialog(this.mContext);
    ArrayList localArrayList = new ArrayList();
    ContextMenuModel localContextMenuModel = new ContextMenuModel();
    localContextMenuModel.name = this.mContext.getString(2131427960);
    localContextMenuModel.eventCode = 1;
    localArrayList.add(localContextMenuModel);
    this.e.setDataAdapter(localArrayList);
    this.e.setOnItemClickListener(new bqx(this));
    this.e.setTitle(this.mContext.getString(2131428414));
    nd.a().g();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int k;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      k = ((AdapterView.AdapterContextMenuInfo)paramContextMenuInfo).position;
      if (!((kw)this.mDataList.get(k)).getPackageName().equals(new hg().a))
        break label50;
    }
    while (true)
    {
      return;
      label50: this.e.setContextItemPosition(k);
      this.e.show();
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    if (localCheckBoxView.getVisibility() == 0)
    {
      localCheckBoxView.onClick(localCheckBoxView);
      if (!localCheckBoxView.getChecked())
        a();
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if (((alz)getAdapter()).c().size() != 0)
      {
        ((OperatingModel)getOperatingBarDataList().get(0)).setAction(true);
        ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
        refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
        getListView().setEnabled(false);
        new Thread(new bqy(this)).start();
        nd.a().a(21);
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    if (this.i)
      this.h.dH();
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if (localFrameworkTemplateUI != null)
    {
      localFrameworkTemplateUI.setOptionNotifyImg(-1);
      this.i = false;
    }
    nd.a().a(26234);
    getActivity().startActivity(new Intent(this.mContext, UserWhiteListActivity.class));
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
    if (this.mDataList.size() != 0)
    {
      d();
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(e());
    ((alz)getAdapter()).a(this.f);
    ((alz)getAdapter()).a();
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if (localFrameworkTemplateUI != null)
    {
      long l = vh.f();
      localFrameworkTemplateUI.setInfoBarStyle((byte)52);
      localFrameworkTemplateUI.setInfoBarRamAndProcessCount(a.c(l << 10), this.mDataList.size());
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429731);
    long l = vh.f();
    paramFrameworkTemplateUI.setInfoBarStyle((byte)52);
    paramFrameworkTemplateUI.setInfoBarRamAndProcessCount(a.c(l << 10), this.mDataList.size());
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)21);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqv
 * JD-Core Version:    0.6.2
 */