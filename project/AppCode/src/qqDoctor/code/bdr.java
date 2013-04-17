import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionInfoActivity;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionTrustAppListActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class bdr extends BaseListView<md>
{
  private BaseView a;
  private View b;
  private Dialog c;
  private xi.a d = new bds(this);
  private Handler e = new bdz(this);

  public bdr(Context paramContext, BaseView paramBaseView)
  {
    super(paramContext);
    this.a = paramBaseView;
    this.c = new Dialog(this.mContext);
    this.c.setCancelable(false);
    this.c.addProgressDialog();
    this.c.setMessage(2131429559);
  }

  private void a(int paramInt)
  {
    if (this.b == null)
      this.b = LayoutInflater.from(this.mContext).inflate(2130903198, null);
    TextView localTextView = (TextView)this.b.findViewById(2131231203);
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
      this.a.getFrameworkTemplateUI().setTipsView(this.b);
      return;
      localTextView.setText(2131429115);
      this.b.setOnClickListener(new beb(this));
      continue;
      this.b.setOnClickListener(null);
      localTextView.setText(2131429122);
      continue;
      this.b.setOnClickListener(null);
      localTextView.setText(2131429116);
      continue;
      this.b.setOnClickListener(null);
      localTextView.setText(2131429128);
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    if (paramInt == -99)
    {
      Dialog localDialog = new Dialog(paramContext);
      localDialog.setTitle(paramContext.getString(2131429035));
      localDialog.setMessage(2131429034);
      localDialog.setPositiveButton(2131429537, new bdw(localDialog), 2);
      localDialog.show();
    }
    while (true)
    {
      return;
      if (paramInt == -8)
        b(paramContext);
    }
  }

  private static void b(Context paramContext)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(paramContext.getString(2131429035));
    localDialog.setMessage(2131429127);
    localDialog.setPositiveButton(2131429537, new bdx(localDialog), 2);
    localDialog.show();
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 0));
    return new akj(localContext, localArrayList);
  }

  public final View getView()
  {
    return getMainView();
  }

  public final void loadDataList()
  {
    this.mDataList = xf.a();
    this.e.sendEmptyMessage(1);
  }

  public final void onCreate()
  {
    super.onCreate();
    ho localho = ho.a();
    boolean bool;
    int i;
    int k;
    if (((bdq)this.a).a == 0)
    {
      bool = localho.by();
      i = ho.a().dy();
      if (bool)
        break label82;
      if ((i != -99) && (i != -7))
        break label76;
      k = 1;
      if (k == 0)
        break label82;
      this.c.show();
      xi.a(this.mContext, this.d);
    }
    label189: 
    while (true)
    {
      return;
      label76: k = 0;
      break;
      label82: if (!bool)
      {
        if (i == -8);
        for (int j = 1; ; j = 0)
        {
          if (j != 0)
            break label189;
          Dialog localDialog = new Dialog(this.mContext);
          localDialog.setTitle(this.mContext.getString(2131428561));
          localDialog.setMessage(2131429131);
          localDialog.setPositiveButton(2131427397, new bdt(this, localDialog), 1);
          localDialog.setNegativeButton(2131427379, new bdv(localDialog), 2);
          localDialog.show();
          a(this.mContext, i);
          break;
        }
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Intent localIntent = new Intent(this.mContext, PermissionInfoActivity.class);
    localIntent.putExtra("Serializable", (Serializable)this.mDataList.get(paramInt));
    localIntent.putExtra(bcz.a, ((bdq)this.a).a);
    this.mContext.startActivity(localIntent);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 72:
    }
    while (true)
    {
      return true;
      this.mContext.startActivity(new Intent(this.mContext, PermissionTrustAppListActivity.class));
    }
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (paramMenu.findItem(72) == null)
      paramMenu.add(0, 72, 0, QQPimApplication.a().getResources().getString(2131429566)).setIcon(2130838004);
    return true;
  }

  public final void onResume()
  {
    super.onResume();
    this.a.getFrameworkTemplateUI().removeExistedTipsView();
    this.a.getFrameworkTemplateUI().setInfoBarStyle((byte)50);
    boolean bool = xi.a();
    if (((bdq)this.a).a == 0)
      if (bool)
      {
        int i = new jf().c();
        String str1 = this.mContext.getString(2131429114);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i);
        String str2 = String.format(str1, arrayOfObject);
        this.a.getFrameworkTemplateUI().updateInfoBarText(str2);
      }
    while (true)
    {
      this.e.sendEmptyMessage(0);
      return;
      a(ho.a().dy());
      continue;
      if (this.b == null)
        this.b = LayoutInflater.from(this.mContext).inflate(2130903198, null);
      TextView localTextView = (TextView)this.b.findViewById(2131231203);
      this.b.setOnClickListener(new bdy(this));
      localTextView.setText(2131429112);
      this.a.getFrameworkTemplateUI().setTipsView(this.b);
    }
  }

  public final void refreshListData()
  {
    BaseListAdapter localBaseListAdapter = (BaseListAdapter)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 0));
    localBaseListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdr
 * JD-Core Version:    0.6.2
 */