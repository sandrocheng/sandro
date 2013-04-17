import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class bmh extends BaseListView
{
  private ij a;
  private dv<kw> b = new bmi(this);

  public bmh(Context paramContext)
  {
    super(paramContext);
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ald(localContext, localArrayList, this);
  }

  public final void loadDataList()
  {
    this.mDataList.clear();
    ArrayList localArrayList1 = this.a.a();
    jt localjt = new jt();
    ArrayList localArrayList2 = (ArrayList)localjt.a(localjt.j, null, null, "id ASC");
    int i = localArrayList1.size();
    for (int j = 0; j < i; j++)
    {
      int k = localArrayList2.size();
      for (int m = 0; m < k; m++)
        if (((dr)localArrayList1.get(j)).a.equals(((kw)localArrayList2.get(m)).getPackageName()))
          this.mDataList.add(localArrayList2.get(m));
    }
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    if (ij.a == null)
      ij.a = new ij();
    this.a = ij.a;
    ((ald)this.mAdapter).a(this.b);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    super.refreshListData();
    BaseListAdapter localBaseListAdapter = (BaseListAdapter)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localBaseListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    if (this.mDataList.size() == 0)
      setEmptyText(2131429670);
    while (true)
    {
      String str1 = this.mContext.getString(2131429602);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.mDataList.size());
      String str2 = String.format(str1, arrayOfObject);
      if (getFrameworkTemplateUI() != null)
        getFrameworkTemplateUI().updateInfoBarText(str2);
      return;
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427360);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmh
 * JD-Core Version:    0.6.2
 */