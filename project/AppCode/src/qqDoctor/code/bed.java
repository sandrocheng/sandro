import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bed extends BaseListView<kx>
{
  private Dialog a;
  private jf b;
  private List<kx> c = new ArrayList();
  private List<kx> d = new ArrayList();
  private Handler e = new bee(this);

  public bed(Context paramContext)
  {
    super(paramContext);
  }

  private List<ListModel<kx>> a()
  {
    ArrayList localArrayList = new ArrayList();
    ListModel localListModel1 = new ListModel(this.c, this.mContext.getString(2131428116), 0);
    ListModel localListModel2 = new ListModel(this.d, this.mContext.getString(2131428117), 0);
    this.mDataList.clear();
    this.mDataList.addAll(this.c);
    this.mDataList.addAll(this.d);
    localArrayList.add(localListModel1);
    localArrayList.add(localListModel2);
    return localArrayList;
  }

  private static void a(List<kx> paramList)
  {
    if (paramList == null)
      return;
    int i = paramList.size();
    int j = 0;
    label14: int k;
    if (j < i)
    {
      kx localkx = (kx)paramList.get(j);
      if ((localkx != null) && (akk.a(localkx) > 0))
        break label74;
      paramList.remove(localkx);
      k = j - 1;
    }
    for (int m = i - 1; ; m = i)
    {
      int n = k + 1;
      i = m;
      j = n;
      break label14;
      break;
      label74: k = j;
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new akk(this.mContext, this, a());
  }

  public final void loadDataList()
  {
    if (!this.b.a())
      this.b.b();
    this.c.clear();
    this.d.clear();
    this.c.addAll(this.b.a(false));
    this.d.addAll(this.b.a(true));
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
    a(this.c);
    a(this.d);
    new Thread(new beg(this, localArrayList)).start();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.b = new jf();
    this.a = new Dialog(this.mContext);
    this.a.setCancelable(false);
    this.a.addProgressDialog();
    this.a.setMessage(2131429559);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Context localContext = this.mContext;
    kx localkx = (kx)this.mDataList.get(paramInt);
    bei localbei = new bei(this, paramInt);
    Dialog localDialog = new Dialog(localContext);
    localDialog.setTitle(2131429098);
    LinearLayout localLinearLayout = new LinearLayout(localContext);
    localLinearLayout.setOrientation(1);
    byte[] arrayOfByte = localkx.a();
    int i = arrayOfByte.length;
    int j = 0;
    int k = -1;
    if (j < i)
    {
      int m = arrayOfByte[j];
      int n = k + 1;
      View localView;
      TextView localTextView2;
      ImageView localImageView;
      if (m != -1)
      {
        localView = LayoutInflater.from(localContext).inflate(2130903163, null);
        TextView localTextView1 = (TextView)localView.findViewById(2131231054);
        localTextView2 = (TextView)localView.findViewById(2131231056);
        localImageView = (ImageView)localView.findViewById(2131231055);
        localTextView1.setText(md.a(n));
        switch (m)
        {
        default:
        case 0:
        case 1:
        case 2:
        }
      }
      while (true)
      {
        localLinearLayout.addView(localView);
        j++;
        k = n;
        break;
        localTextView2.setText(2131429073);
        localImageView.setImageResource(2130838107);
        continue;
        localTextView2.setText(2131429074);
        localImageView.setImageResource(2130838106);
        continue;
        localTextView2.setText(2131429075);
        localImageView.setImageResource(2130838105);
      }
    }
    localDialog.setContentView(localLinearLayout);
    String str;
    if ((ScriptHelper.canRunAtRoot() == 0) && (ho.a().by()))
    {
      if (!localkx.g)
        break label357;
      str = localContext.getString(2131429100);
    }
    while (true)
    {
      localDialog.setPositiveButton(str, new er(localbei, localDialog), 2);
      localDialog.setNeutralButton(2131427379, new es(localDialog), 2);
      try
      {
        localDialog.show();
        return;
        label357: str = localContext.getString(2131429099);
      }
      catch (Exception localException)
      {
        while (true)
          localException.getMessage();
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    getFrameworkTemplateUI().setInfoBarStyle((byte)49);
    boolean bool = xi.a();
    ((akk)getAdapter()).a();
    ((akk)getAdapter()).a(bool);
    this.e.sendEmptyMessage(0);
  }

  public final void refreshListData()
  {
    ((akk)getAdapter()).setDataList(a());
    getAdapter().notifyDataSetChanged();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429566);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bed
 * JD-Core Version:    0.6.2
 */