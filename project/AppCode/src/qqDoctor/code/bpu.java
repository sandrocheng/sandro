import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.List;

public final class bpu extends blt<kw>
{
  protected Handler a = new bpy(this);
  private int b = 0;
  private ho d = ho.a();
  private SoftwareManager e = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);

  public bpu(Context paramContext)
  {
    super(paramContext);
  }

  private void a(kw paramkw)
  {
    try
    {
      this.e.goToInstalledAppDetails(paramkw.getPackageName());
      nd.a().a(22);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
        ha.b(this.mContext, 2131429531);
    }
  }

  public final BasePinnedListAdapter<kw> createAdapter()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new alx(this, localArrayList);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    OperatingModel localOperatingModel = new OperatingModel(1, 2131429734);
    localOperatingModel.setEnable(false);
    localArrayList.add(localOperatingModel);
    return localArrayList;
  }

  public final View getFooterView()
  {
    return LayoutInflater.from(this.mContext).inflate(2130903298, null);
  }

  public final void loadDataList()
  {
    if (this.mDataList != null)
      this.mDataList.clear();
    while (true)
    {
      bpx localbpx = new bpx(this);
      pt.a().a(localbpx);
      return;
      this.mDataList = new ArrayList();
    }
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateLoadingTemplateUI = false;
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= this.mDataList.size());
    while (true)
    {
      return;
      kw localkw = (kw)this.mDataList.get(paramInt);
      if (this.d.bX())
      {
        Dialog localDialog = new Dialog(this.mContext);
        localDialog.setTitle(2131428434);
        View localView = LayoutInflater.from(this.mContext).inflate(2130903051, null);
        ((TextView)localView.findViewById(2131230761)).setText(2131429519);
        CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
        localCheckBoxView.setChecked(true);
        ((TextView)localView.findViewById(2131230748)).setText(this.mContext.getString(2131428872));
        localDialog.setView(localView);
        localDialog.setPositiveButton(2131428152, new bpv(this, localkw, localCheckBoxView, localDialog), 1);
        localDialog.setNegativeButton(2131427379, new bpw(localDialog), 2);
        localDialog.show();
      }
      else
      {
        a(localkw);
      }
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
      if ((this.mDataList == null) || (this.mDataList.size() == 0))
      {
        ha.a(this.mContext, 2131429481);
      }
      else
      {
        ((OperatingModel)getOperatingBarDataList().get(0)).setAction(true);
        ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
        String str = this.mContext.getString(2131429734);
        ((OperatingModel)getOperatingBarDataList().get(0)).setText(str);
        refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
        pt.a().a(new bpz(this));
        nd.a().a(23);
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    this.mDataList.clear();
    this.b = 0;
    ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(false);
    ((OperatingModel)getOperatingBarDataList().get(0)).setText(this.mContext.getString(2131429734));
    refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    this.b = this.mDataList.size();
    BasePinnedListAdapter localBasePinnedListAdapter = getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localBasePinnedListAdapter.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    if ((getView() == null) || (!getView().isShown()))
    {
      if (this.b > 0)
        break label234;
      setEmptyText(2131428743);
    }
    while (true)
    {
      return;
      int n = 0;
      int i2;
      for (int i1 = 0; n < this.mDataList.size(); i1 = i2)
      {
        i2 = (int)(i1 + ((kw)this.mDataList.get(n)).I());
        n++;
      }
      String str5;
      Object[] arrayOfObject;
      if (i1 > 0)
      {
        String str4 = a.b(i1);
        str5 = this.mContext.getString(2131428233);
        arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(this.b);
        arrayOfObject[1] = str4;
      }
      for (String str3 = String.format(str5, arrayOfObject); ; str3 = this.mContext.getString(2131428234))
      {
        getFrameworkTemplateUI().updateInfoBarText(str3);
        break;
      }
      label234: ((OperatingModel)getOperatingBarDataList().get(0)).setEnable(true);
      int i = this.mDataList.size();
      int j = 0;
      int m;
      for (int k = 0; j < i; k = m)
      {
        m = (int)(k + ((kw)this.mDataList.get(j)).I());
        j++;
      }
      String str1 = this.mContext.getString(2131429734);
      String str2 = str1 + "(" + a.b(k) + ")";
      ((OperatingModel)getOperatingBarDataList().get(0)).setText(str2);
      refreshOperatingBar((OperatingModel)getOperatingBarDataList().get(0));
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131428002);
    getFrameworkTemplateUI().updateInfoBarText("");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpu
 * JD-Core Version:    0.6.2
 */