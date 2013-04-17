import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class brd extends blt<kw>
{
  private final zo a = zo.a();
  private List<kw> b = new ArrayList();
  private List<kw> d = new ArrayList();

  public brd(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kw>> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.d, this.mContext.getString(2131428130), 0));
    localArrayList.add(new ListModel(this.b, this.mContext.getString(2131428129), 0));
    return localArrayList;
  }

  public final BasePinnedListAdapter<kw> createAdapter()
  {
    return new ame(this, a());
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(1, 2131428601));
    return localArrayList;
  }

  public final void loadDataList()
  {
    this.mDataList.clear();
    this.mDataList = a.b(this.c.getInstalledApp(1, 2));
    this.d.clear();
    this.b.clear();
    Iterator localIterator = this.mDataList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if ((!new hg().a.equals(localkw.getPackageName())) && (!this.a.e(localkw)))
      {
        localkw.b(1);
        kw.w();
        if (localkw.isSystemApp())
          this.b.add(localkw);
        else
          this.d.add(localkw);
      }
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
    refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    if (localCheckBoxView.getVisibility() == 0)
      localCheckBoxView.onClick(localCheckBoxView);
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
      nd.a().a(26236);
      ((OperatingModel)getOperatingBarDataList().get(0)).setAction(true);
      ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
      refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
      getListView().setEnabled(false);
      if (((ame)getAdapter()).d().size() != 0)
      {
        Iterator localIterator = ((ame)getAdapter()).d().iterator();
        while (localIterator.hasNext())
        {
          kw localkw = (kw)localIterator.next();
          this.a.a(localkw, true);
        }
        getActivity().finish();
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(a());
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429749);
    paramFrameworkTemplateUI.updateInfoBarText(2131429750);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brd
 * JD-Core Version:    0.6.2
 */