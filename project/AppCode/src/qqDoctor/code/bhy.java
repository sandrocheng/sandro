import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bhy extends bhu
{
  private List<mf> d = new ArrayList();
  private List<mf> e = new ArrayList();

  public bhy(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext, paramBaseView, false);
  }

  protected final String a()
  {
    int i = this.e.size() + this.d.size();
    String str = this.mContext.getString(2131429953);
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
      if (!this.e.remove(parammf))
        this.d.remove(parammf);
      this.mHandler.sendEmptyMessage(-2);
      if ((ho.a().y()) && (new ji().a() <= 1))
      {
        String str1 = parammf.b;
        Context localContext = this.mContext;
        String str2 = String.format(localContext.getString(2131429950), new Object[] { str1 });
        Dialog localDialog = new Dialog(localContext);
        localDialog.setTitle(2131429947);
        localDialog.setMessage(str2);
        localDialog.setPositiveButton(2131429983, new fw(localDialog), 2);
        localDialog.show();
        ho.a().x();
      }
    }
  }

  protected final List<ListModel<mf>> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.d, this.mContext.getString(2131428116), 0));
    localArrayList.add(new ListModel(this.e, this.mContext.getString(2131428117), 0));
    this.mDataList.clear();
    this.mDataList.addAll(this.d);
    this.mDataList.addAll(this.e);
    return localArrayList;
  }

  public final BasePinnedListAdapter<mf> createAdapter()
  {
    this.a = new akp(this.mContext, this, b(), false);
    return this.a;
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return super.getFrameworkTemplateUI();
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    this.e.clear();
    this.d.clear();
    PackageManager localPackageManager = this.mContext.getPackageManager();
    List localList1 = localPackageManager.getInstalledPackages(0);
    fv localfv = this.b;
    long l1 = System.currentTimeMillis();
    Iterator localIterator1;
    if ((localList1 == null) || (localList1.size() == 0))
    {
      this.b.b(localList1);
      this.b.a(localList1);
      localIterator1 = localList1.iterator();
    }
    while (true)
    {
      label79: if (!localIterator1.hasNext())
        break label414;
      PackageInfo localPackageInfo1 = (PackageInfo)localIterator1.next();
      if (localPackageInfo1 != null)
      {
        mf localmf = new mf();
        localmf.b = localPackageManager.getApplicationLabel(localPackageInfo1.applicationInfo).toString().trim();
        localmf.a = localPackageInfo1.packageName;
        if ((0x1 & localPackageInfo1.applicationInfo.flags) != 0);
        for (int i = 1; ; i = 0)
        {
          if (i == 0)
            break label399;
          this.e.add(localmf);
          break label79;
          ArrayList localArrayList1 = new ArrayList();
          Intent localIntent = new Intent("android.intent.action.MAIN");
          localIntent.addCategory("android.intent.category.LAUNCHER");
          List localList2 = localfv.c.queryIntentActivities(localIntent, 0);
          if (localList2 != null)
          {
            int j = localList2.size();
            for (int k = 0; k < j; k++)
              localArrayList1.add(((ResolveInfo)localList2.get(k)).activityInfo.packageName);
          }
          if (localArrayList1.size() == 0)
            break;
          ArrayList localArrayList2 = new ArrayList();
          Iterator localIterator2 = localList1.iterator();
          while (localIterator2.hasNext())
          {
            PackageInfo localPackageInfo2 = (PackageInfo)localIterator2.next();
            if (!localArrayList1.contains(StringUtil.assertNotNullString(localPackageInfo2.packageName)))
              localArrayList2.add(localPackageInfo2);
          }
          localList1.removeAll(localArrayList2);
          long l2 = System.currentTimeMillis();
          new StringBuilder().append(l2 - l1).toString();
          break;
        }
        label399: this.d.add(localmf);
      }
    }
    label414: this.b.c(this.d);
    this.b.c(this.e);
    this.mHandler.sendEmptyMessage(-2);
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
 * Qualified Name:     bhy
 * JD-Core Version:    0.6.2
 */