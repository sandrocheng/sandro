import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.tencent.qqpimsecure.ui.activity.SystemOptimizeActivity;
import com.tencent.qqpimsecure.ui.activity.systemoptimize.UserWhiteListSettingActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bre extends BaseListView<kw>
{
  private final zo a = zo.a();
  private final SoftwareManager b = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);

  public bre(Context paramContext)
  {
    super(paramContext);
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ListView localListView = getListView();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    return new amc(localContext, this, localListView, localArrayList);
  }

  public final void loadDataList()
  {
    List localList = a.b(this.b.getInstalledApp(1, 2));
    this.mDataList.clear();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if ((!new hg().a.equals(localkw.getPackageName())) && (this.a.e(localkw)))
      {
        localkw.b(1);
        this.mDataList.add(localkw);
      }
    }
    this.mDataList.add(0, null);
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, SystemOptimizeActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      nd.a().a(26235);
      getActivity().startActivity(new Intent(this.mContext, UserWhiteListSettingActivity.class));
    }
    while (true)
    {
      return;
      this.a.a((kw)this.mDataList.get(paramInt), false);
      this.mDataList.remove(paramInt);
      getAdapter().notifyDataSetChanged();
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131429717);
  }

  public final void refreshListData()
  {
    BaseListAdapter localBaseListAdapter = (BaseListAdapter)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    localBaseListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429751);
    paramFrameworkTemplateUI.updateInfoBarText(2131429752);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bre
 * JD-Core Version:    0.6.2
 */