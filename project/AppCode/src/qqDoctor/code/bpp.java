import QQPIM.SoftListType;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bpp extends blt<kw>
{
  public static String a = "can_run_at_root";
  private AppListManager b = (AppListManager)ManagerCreator.getManager(AppListManager.class);
  private pn d;
  private List<kw> e = new ArrayList();
  private List<kw> f = new ArrayList();
  private alv g;
  private List<kw> h;
  private int i;
  private Dialog j;
  private Handler k = new bpq(this);

  public bpp(Context paramContext)
  {
    super(paramContext);
    if (pn.a == null)
      pn.a = new pn();
    this.d = pn.a;
  }

  public final void a()
  {
    this.j.show();
    this.k.sendEmptyMessage(0);
  }

  public final void a(int paramInt)
  {
    if (this.i == 1)
      a.a(getActivity());
    while (true)
    {
      return;
      if (this.i == 2)
      {
        a.a(getActivity(), 0);
      }
      else if (this.i == 0)
      {
        this.mListView.setTag(Integer.valueOf(paramInt));
        kw localkw = (kw)getAdapter().getDataList().get(paramInt);
        boolean bool1 = localkw.isSystemApp();
        boolean bool2 = localkw.m();
        if ((bool1) && (bool2))
        {
          Dialog localDialog = new Dialog(this.mContext);
          localDialog.setIcon(2130838143);
          localDialog.setTitle(2131428561);
          localDialog.setMessage(2131429195);
          localDialog.setPositiveButton(2131429198, new bps(this, localDialog), 2);
          localDialog.setNegativeButton(2131427379, new bpt(localDialog), 2);
          localDialog.show();
        }
        else
        {
          this.j.show();
          this.k.sendEmptyMessage(0);
        }
      }
    }
  }

  public final BasePinnedListAdapter<kw> createAdapter()
  {
    this.g = new alv(this, d());
    return this.g;
  }

  public final List<ListModel<kw>> d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.f, this.mContext.getString(2131428974), 0));
    localArrayList.add(new ListModel(this.e, this.mContext.getString(2131428975), 0));
    return localArrayList;
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    while (true)
    {
      kw localkw2;
      try
      {
        this.e.clear();
        this.f.clear();
        Iterator localIterator1 = pn.a().iterator();
        if (!localIterator1.hasNext())
          break;
        localkw2 = (kw)localIterator1.next();
        localkw2.b(1);
        localkw2.e(0);
        if (localkw2.m())
        {
          this.f.add(localkw2);
          continue;
        }
      }
      finally
      {
      }
      this.e.add(localkw2);
    }
    this.mDataList.clear();
    this.mDataList.addAll(this.f);
    if (this.i == 0)
      this.mDataList.addAll(this.e);
    this.h = new ArrayList();
    Iterator localIterator2 = this.f.iterator();
    while (localIterator2.hasNext())
    {
      kw localkw1 = (kw)localIterator2.next();
      if ((!this.d.a(localkw1)) && (!this.b.contains(localkw1.getPackageName(), SoftListType.WHITELIST_COMMON)))
        this.h.add(localkw1);
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.i = getActivity().getIntent().getIntExtra(a, 2);
    ((alv)getAdapter()).a(this.i);
    if (this.i != 0)
      Toast.makeText(this.mContext, this.mContext.getText(2131428988), 1).show();
    this.j = new Dialog(this.mContext);
    this.j.addProgressDialog();
    this.j.setMessage(2131429199);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a(paramInt);
  }

  public final void onResume()
  {
    if (isReloadData())
      this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(d());
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    if (this.mDataList.size() <= 0)
      setEmptyText(2131429747);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428001);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpp
 * JD-Core Version:    0.6.2
 */