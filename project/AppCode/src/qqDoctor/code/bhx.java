import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bhx extends bhu
{
  private List<mf> d = new ArrayList();

  public bhx(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext, paramBaseView, true);
  }

  protected final String a()
  {
    int i = this.d.size();
    String str = this.mContext.getString(2131429952);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    return String.format(str, arrayOfObject);
  }

  public final void a(mf parammf)
  {
    if (parammf == null);
    while (true)
    {
      return;
      this.d.remove(parammf);
      this.mHandler.sendEmptyMessage(-2);
    }
  }

  protected final List<ListModel<mf>> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.d, null, 1, false));
    this.mDataList.clear();
    this.mDataList.addAll(this.d);
    return localArrayList;
  }

  public final BasePinnedListAdapter<mf> createAdapter()
  {
    this.a = new akp(this.mContext, this, b(), true);
    return this.a;
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return super.getFrameworkTemplateUI();
  }

  public final boolean isPinnedHeaderListView()
  {
    return false;
  }

  public final void loadDataList()
  {
    this.d.clear();
    this.d = this.c.b();
    fv localfv = this.b;
    List localList = this.d;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (true)
    {
      mf localmf;
      if (localIterator.hasNext())
        localmf = (mf)localIterator.next();
      try
      {
        PackageInfo localPackageInfo2 = localfv.c.getPackageInfo(localmf.a, 4096);
        localPackageInfo1 = localPackageInfo2;
        if (localPackageInfo1 != null)
          continue;
        localArrayList.add(localmf);
        continue;
        localList.removeAll(localArrayList);
        this.mHandler.sendEmptyMessage(-2);
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
          PackageInfo localPackageInfo1 = null;
      }
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
  }

  public final void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    super.refreshListData();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhx
 * JD-Core Version:    0.6.2
 */