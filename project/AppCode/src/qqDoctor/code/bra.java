import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class bra extends blt<kw>
{
  private BaseView a;
  private rm b;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private boolean g = false;
  private long h = 0L;
  private boolean i;
  private Handler j = new brb(this);

  public bra(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.a = paramBaseView;
    this.b = new rm();
  }

  private void a()
  {
    if (!this.i)
      return;
    long l1 = 0L;
    int k = 0;
    int m = 0;
    label15: int i1;
    long l2;
    if (k < 5)
    {
      if (((kw)this.mDataList.get(k)).U() <= 0)
        break label183;
      i1 = m + ((kw)this.mDataList.get(k)).U();
      l2 = l1 + ((kw)this.mDataList.get(k)).S();
    }
    for (int n = i1; ; n = m)
    {
      k++;
      m = n;
      l1 = l2;
      break label15;
      if (getFrameworkTemplateUI() == null)
        break;
      if (m > 0)
      {
        FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
        String str = this.mContext.getString(2131429773);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(m);
        arrayOfObject[1] = a.b(l1);
        localFrameworkTemplateUI.updateInfoBarTextWithMiddleStyle(String.format(str, arrayOfObject));
        break;
      }
      getFrameworkTemplateUI().updateInfoBarTextWithMiddleStyle(this.mContext.getString(2131429774));
      break;
      label183: l2 = l1;
    }
  }

  private void a(String paramString, int paramInt)
  {
    kw localkw = new kw();
    localkw.setAppName(paramString);
    localkw.setPackageName(paramString);
    localkw.setIcon(this.mContext.getResources().getDrawable(paramInt));
    localkw.n(-1);
    this.mDataList.add(localkw);
  }

  private void a(List<List<File>> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      for (int k = 0; k < 5; k++)
        if (this.mDataList.get(k) != null)
        {
          ((kw)this.mDataList.get(k)).a((List)paramList.get(k));
          ((kw)this.mDataList.get(k)).g(a.e((List)paramList.get(k)));
          ((kw)this.mDataList.get(k)).n(((List)paramList.get(k)).size());
        }
    }
  }

  private void d()
  {
    if (!this.i);
    while (true)
    {
      return;
      if (getFrameworkTemplateUI() != null)
      {
        FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
        String str = this.mContext.getString(2131429776);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = a.b(this.h);
        localFrameworkTemplateUI.updateInfoBarTextWithMiddleStyle(String.format(str, arrayOfObject));
      }
    }
  }

  private amb e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    return new amb(this, localArrayList);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    OperatingModel localOperatingModel = new OperatingModel(1, 2131429760);
    localOperatingModel.setEnable(false);
    localArrayList.add(localOperatingModel);
    return localArrayList;
  }

  public final FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.a.getFrameworkTemplateUI();
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    String str = Environment.getExternalStorageDirectory().getAbsolutePath();
    a(this.b.a(new File(str), new rm.b(this)));
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onCreate()
  {
    super.onCreate();
    if (!Environment.getExternalStorageState().equals("mounted"))
      setEmptyText(2131430172);
    while (true)
    {
      return;
      a(this.mContext.getString(2131429761), 2130837601);
      a(this.mContext.getString(2131429762), 2130837602);
      a(this.mContext.getString(2131429763), 2130837600);
      a(this.mContext.getString(2131429764), 2130837603);
      a(this.mContext.getString(2131429765), 2130837599);
      refreshListData();
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.b.a = true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
    if (localCheckBoxView == null);
    while (true)
    {
      return;
      if (localCheckBoxView.getVisibility() == 0)
        localCheckBoxView.onClick(localCheckBoxView);
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
      if (((amb)getAdapter()).c().size() > 0)
      {
        ((OperatingModel)getOperatingBarDataList().get(0)).setAction(true);
        ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
        refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
        new Thread(new brc(this)).start();
      }
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.i = true;
    if (!Environment.getExternalStorageState().equals("mounted"))
      setEmptyText(2131430172);
    while (true)
    {
      return;
      if ((!this.e) && (!this.f))
      {
        this.e = true;
        this.b.a = false;
        this.mHandler.sendEmptyMessage(-1);
      }
      else if (this.g)
      {
        d();
      }
      else
      {
        a();
      }
    }
  }

  public final void onStop()
  {
    super.onStop();
    this.i = false;
  }

  public final void refreshListData()
  {
    BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1));
    localBasePinnedListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    if (this.d)
      if ((this.e) && (!this.f))
      {
        long l = 0L;
        for (int k = 0; k < 5; k++)
          l += ((kw)this.mDataList.get(k)).S();
        this.h = l;
        a();
        ((amb)getAdapter()).a(true);
        this.e = false;
        this.f = true;
      }
    while (true)
    {
      return;
      this.d = true;
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bra
 * JD-Core Version:    0.6.2
 */