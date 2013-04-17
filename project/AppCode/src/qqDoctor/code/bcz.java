import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bcz extends BasePinnedListView<kx>
{
  public static String a = "CanRunAtRoot";
  private md b = (md)getActivity().getIntent().getSerializableExtra("Serializable");
  private List<kx> c = new ArrayList();
  private List<kx> d = new ArrayList();
  private jf e;
  private Dialog f;
  private int g = getActivity().getIntent().getIntExtra(a, 0);
  private View h;
  private Handler i = new bdb(this);
  private View.OnClickListener j = new bdf(this);
  private View.OnClickListener k = new bdg(this);
  private View.OnClickListener l = new bdh(this);

  public bcz(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kx>> a()
  {
    ArrayList localArrayList = new ArrayList();
    ListModel localListModel1 = new ListModel(this.c, this.mContext.getString(2131429096), 0);
    ListModel localListModel2 = new ListModel(this.d, this.mContext.getString(2131429566), 0);
    this.mDataList.clear();
    this.mDataList.addAll(this.c);
    this.mDataList.addAll(this.d);
    localArrayList.add(localListModel1);
    localArrayList.add(localListModel2);
    return localArrayList;
  }

  private void a(int paramInt)
  {
    if (this.h == null)
      this.h = LayoutInflater.from(this.mContext).inflate(2130903198, null);
    TextView localTextView = (TextView)this.h.findViewById(2131231203);
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
      getFrameworkTemplateUI().setTipsView(this.h);
      return;
      localTextView.setText(2131429115);
      this.h.setOnClickListener(new bdi(this));
      continue;
      this.h.setOnClickListener(null);
      localTextView.setText(2131429122);
      continue;
      this.h.setOnClickListener(null);
      localTextView.setText(2131429116);
      continue;
      this.h.setOnClickListener(null);
      localTextView.setText(2131429128);
    }
  }

  private String b()
  {
    int m = this.b.b;
    String str = null;
    switch (m)
    {
    case 3:
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.mDataList.size());
      return String.format(str, arrayOfObject);
      str = this.mContext.getString(2131429104);
      continue;
      str = this.mContext.getString(2131429105);
      continue;
      str = this.mContext.getString(2131429106);
      continue;
      str = this.mContext.getString(2131429109);
      continue;
      str = this.mContext.getString(2131429110);
    }
  }

  public final BasePinnedListAdapter<kx> createAdapter()
  {
    return new akh(this.mContext, this, this.b, a());
  }

  public final boolean isPinnedHeaderListView()
  {
    return true;
  }

  public final void loadDataList()
  {
    if (!this.e.a())
      this.e.b();
    this.c.addAll(this.e.a(false, false, this.b.f));
    this.c.addAll(this.e.a(true, false, this.b.f));
    this.d.addAll(this.e.a(false, true, this.b.f));
    this.d.addAll(this.e.a(true, true, this.b.f));
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.c.iterator();
    while (localIterator1.hasNext())
    {
      kx localkx2 = (kx)localIterator1.next();
      if (localkx2.c == null)
      {
        AppEntity localAppEntity2 = localSoftwareManager.getAppInfo(localkx2.b, 1);
        if (localAppEntity2 != null)
        {
          localkx2.c = localAppEntity2.getAppName();
          localArrayList.add(localkx2);
        }
      }
    }
    Iterator localIterator2 = this.d.iterator();
    while (localIterator2.hasNext())
    {
      kx localkx1 = (kx)localIterator2.next();
      if (localkx1.c == null)
      {
        AppEntity localAppEntity1 = localSoftwareManager.getAppInfo(localkx1.b, 1);
        if (localAppEntity1 != null)
        {
          localkx1.c = localAppEntity1.getAppName();
          localArrayList.add(localkx1);
        }
      }
    }
    new Thread(new bdd(this, localArrayList)).start();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = new jf();
    this.f = new Dialog(this.mContext);
    this.f.setCancelable(false);
    this.f.addProgressDialog();
    this.f.setMessage(2131429559);
    ((akh)getAdapter()).a(this.j, this.k, this.l);
    this.i.sendEmptyMessage(0);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((((kx)this.mDataList.get(paramInt)).g) || (this.g != 0))
      return;
    akh localakh = (akh)getAdapter();
    if (localakh.a() != paramInt)
      localakh.b(paramInt);
    while (true)
    {
      localakh.notifyDataSetChanged();
      break;
      localakh.b(-1);
    }
  }

  public final void onResume()
  {
    super.onResume();
    getFrameworkTemplateUI().removeExistedTipsView();
    getFrameworkTemplateUI().setInfoBarStyle((byte)49);
    boolean bool = ho.a().by();
    if (this.g == 0)
      if (bool)
        getFrameworkTemplateUI().updateInfoBarText(b());
    while (true)
    {
      ((akh)getAdapter()).a(this.g);
      ((akh)getAdapter()).a(bool);
      return;
      a(ho.a().dy());
      continue;
      if (this.h == null)
        this.h = LayoutInflater.from(this.mContext).inflate(2130903198, null);
      TextView localTextView = (TextView)this.h.findViewById(2131231203);
      this.h.setOnClickListener(new bda(this));
      localTextView.setText(2131429112);
      getFrameworkTemplateUI().setTipsView(this.h);
    }
  }

  public final void refreshListData()
  {
    getAdapter().setDataList(a());
    getAdapter().notifyDataSetChanged();
    if (this.g == 0)
      getFrameworkTemplateUI().updateInfoBarText(b());
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(this.b.c);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcz
 * JD-Core Version:    0.6.2
 */