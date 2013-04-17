import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeAddEncryFileListActivity;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeFolderGridActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class arz extends BaseView
{
  protected static int a = 1;
  protected Dialog b;
  protected asn c;
  protected ib d;
  rv e;
  protected boolean f;
  protected List<lj> g;
  protected int h;
  protected ajd i;
  protected AdapterView.OnItemClickListener j;
  private String k;
  private int l;
  private boolean m;
  private boolean n;
  private Handler o;
  private Messenger p;
  private BroadcastReceiver q;

  public arz(Context paramContext, int paramInt)
  {
  }

  private void a(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (paramFrameworkTemplateUI == null)
      return;
    paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
    int i1;
    if (this.l == 0)
    {
      i1 = 2131429813;
      label25: paramFrameworkTemplateUI.setTitleTextData(i1);
      if (!this.f)
        break label77;
      paramFrameworkTemplateUI.setBackButtonStyle((byte)0);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838323);
    }
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setBackGroundColor(this.mContext, 2131296276);
      paramFrameworkTemplateUI.setTitleBarLayoutPadding();
      break;
      i1 = 2131429938;
      break label25;
      label77: paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838328);
      if ((this.g == null) || (this.g.size() == 0))
        paramFrameworkTemplateUI.setOptionButtonEnable(false);
      else
        paramFrameworkTemplateUI.setOptionButtonEnable(true);
    }
  }

  private Dialog c(ArrayList<lj> paramArrayList)
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131429942);
    localDialog.setMessage(2131429857);
    localDialog.setPositiveButton(2131428152, new ase(this, localDialog, paramArrayList), 1);
    localDialog.setNegativeButton(2131427379, new asf(localDialog), 2);
    localDialog.show();
    return localDialog;
  }

  protected void a()
  {
    this.b = a.a(this.mContext, this.mContext.getString(2131429871), false, null);
    this.c = new asn(this.mContext);
    getActivity().registerReceiver(this.q, new IntentFilter("filesafe.reloadData"));
  }

  public final void a(ArrayList<String> paramArrayList)
  {
    fi.a(this.mContext, paramArrayList, this.p);
  }

  protected void b()
  {
    List localList = getOperatingBarDataList();
    if ((localList == null) || (localList.size() == 0))
    {
      a(getFrameworkTemplateUI());
      return;
    }
    Iterator localIterator = localList.iterator();
    label34: OperatingModel localOperatingModel;
    String str;
    label86: label92: int i3;
    if (localIterator.hasNext())
    {
      localOperatingModel = (OperatingModel)localIterator.next();
      if (localOperatingModel.getID() != 0)
        break label160;
      if (this.l != 0)
        break label137;
      if (this.h != 0)
        break label122;
      str = this.mContext.getString(2131429838);
      localOperatingModel.setText(str);
      if (!this.f)
        break label154;
      i3 = 8;
      label103: localOperatingModel.setVisible(i3);
    }
    label122: 
    do
    {
      localOperatingModel.setNumber(0);
      refreshOperatingBar(localOperatingModel);
      break label34;
      break;
      str = this.mContext.getString(2131429842);
      break label86;
      localOperatingModel.setText(this.mContext.getString(2131429845));
      break label92;
      i3 = 0;
      break label103;
      if (localOperatingModel.getID() == 1)
      {
        localOperatingModel.setEnable(false);
        if (this.f);
        for (int i2 = 0; ; i2 = 8)
        {
          localOperatingModel.setVisible(i2);
          break;
        }
      }
    }
    while (localOperatingModel.getID() != 2);
    label137: label154: label160: if (this.f);
    for (int i1 = 0; ; i1 = 8)
    {
      localOperatingModel.setVisible(i1);
      localOperatingModel.setCheck(false);
      break;
    }
  }

  public final void b(ArrayList<lj> paramArrayList)
  {
    fi.b(this.mContext, paramArrayList, this.p);
  }

  public final rv c()
  {
    if (this.e == null)
      this.e = new rv();
    return this.e;
  }

  public List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131429845, 1));
    localArrayList.add(new OperatingModel(1, 2131429851, 0));
    localArrayList.add(new OperatingModel(2, 2131427349, 2));
    ((OperatingModel)localArrayList.get(0)).setVisible(0);
    ((OperatingModel)localArrayList.get(1)).setVisible(8);
    ((OperatingModel)localArrayList.get(2)).setVisible(8);
    return localArrayList;
  }

  public void loadDataList()
  {
    super.loadDataList();
    if (!ho.a().dG())
    {
      this.n = false;
      fi.b(this.mContext);
      while (true)
        if (!this.n)
          try
          {
            Thread.sleep(50L);
            fi.a(this.mContext, this.p);
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
    }
    if (this.d == null)
      this.d = new ib();
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) || (paramInt1 == 2));
    for (this.m = false; ; this.m = true)
      return;
  }

  public void onBackClick()
  {
    if (this.f)
      onOptionClick(0);
    while (true)
    {
      return;
      super.onBackClick();
      if (this.l == a)
        getActivity().finishActivityWithAnim();
    }
  }

  protected void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mEmptyTemplateType = 1;
  }

  public void onCreate()
  {
    super.onCreate();
    a();
    if (this.p == null)
      this.p = new Messenger(this.o);
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if (this.f)
      return;
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    ContextMenuDialog localContextMenuDialog = new ContextMenuDialog((Activity)this.mContext);
    ArrayList localArrayList = new ArrayList();
    localContextMenuDialog.setContextItemPosition(localAdapterContextMenuInfo.position);
    ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
    localContextMenuModel1.name = this.mContext.getString(2131429851);
    localContextMenuModel1.eventCode = 1;
    localArrayList.add(localContextMenuModel1);
    ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
    localContextMenuModel2.name = this.mContext.getString(2131429853);
    localContextMenuModel2.eventCode = 2;
    localArrayList.add(localContextMenuModel2);
    ContextMenuModel localContextMenuModel3;
    if (this.l == 0)
    {
      localContextMenuModel3 = new ContextMenuModel();
      if (this.h != 0)
        break label232;
    }
    label232: for (String str = this.mContext.getString(2131429881); ; str = this.mContext.getString(2131429882))
    {
      localContextMenuModel3.name = str;
      localContextMenuModel3.eventCode = 3;
      localArrayList.add(localContextMenuModel3);
      localContextMenuDialog.setDataAdapter(localArrayList);
      localContextMenuDialog.setOnItemClickListener(new asb(this, localContextMenuDialog));
      localContextMenuDialog.setTitle(this.mContext.getString(2131429861));
      localContextMenuDialog.show();
      break;
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    getActivity().unregisterReceiver(this.q);
  }

  public void onHandlerMessage(Message paramMessage)
  {
    super.onHandlerMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if (this.b != null)
        this.b.dismiss();
      refreshListData();
    }
  }

  public void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    super.onOperatingBarClick(paramOperatingModel);
    int i1 = paramOperatingModel.getID();
    Intent localIntent1;
    if (i1 == 0)
      if (this.l == 0)
      {
        localIntent1 = new Intent(this.mContext, FileSafeFolderGridActivity.class);
        if (this.h == 0)
        {
          localIntent1.putExtra("type", 0);
          getActivity().startActivityForResult(localIntent1, 1);
        }
      }
    while (true)
    {
      return;
      localIntent1.putExtra("type", 1);
      break;
      Intent localIntent2 = new Intent(this.mContext, FileSafeAddEncryFileListActivity.class);
      localIntent2.putExtra("type", 101);
      getActivity().startActivityForResult(localIntent2, 2);
      continue;
      if (i1 == 1)
        c(this.i.b());
      else if ((i1 == 2) && (this.g != null) && (this.g.size() > 0))
        this.i.a();
    }
  }

  public void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    if ((this.g == null) || (this.g.size() == 0))
    {
      ha.b(this.mContext, this.mContext.getString(2131429909));
      return;
    }
    if (!this.f);
    for (boolean bool = true; ; bool = false)
    {
      this.f = bool;
      refreshListData();
      break;
    }
  }

  public void onPause()
  {
    super.onPause();
    this.m = true;
  }

  public void onResume()
  {
    super.onResume();
    if (this.m)
      this.mHandler.sendEmptyMessage(-1);
    while (true)
    {
      return;
      if (this.g != null);
      for (int i1 = this.g.size(); ; i1 = 0)
      {
        if (i1 != 0)
          break label57;
        setEmptyImage(2130837705);
        break;
      }
      label57: hideEmptyView();
    }
  }

  public void refreshListData()
  {
    super.refreshListData();
    b();
  }

  protected void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    a(paramFrameworkTemplateUI);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arz
 * JD-Core Version:    0.6.2
 */