import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;

public abstract class bhu extends BasePinnedListView<mf>
  implements View.OnClickListener
{
  protected akp a;
  protected fv b;
  protected ji c;
  private BaseView d;
  private CheckBoxView e;
  private boolean f;

  public bhu(Context paramContext, BaseView paramBaseView, boolean paramBoolean)
  {
    super(paramContext);
    this.d = paramBaseView;
    this.f = paramBoolean;
  }

  protected abstract String a();

  protected abstract List<ListModel<mf>> b();

  public BasePinnedListAdapter<mf> createAdapter()
  {
    return null;
  }

  public FrameworkTemplateUI getFrameworkTemplateUI()
  {
    return this.d.getFrameworkTemplateUI();
  }

  public View getView()
  {
    return getMainView();
  }

  public boolean isPinnedHeaderListView()
  {
    if (!this.f);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onClick(View paramView)
  {
    boolean bool1 = true;
    switch (paramView.getId())
    {
    default:
      return;
    case 2131231680:
    }
    nd.a().a(26426);
    ho localho = ho.a();
    boolean bool2 = localho.co();
    boolean bool3;
    label52: label73: CheckBoxView localCheckBoxView;
    if (!bool2)
    {
      bool3 = bool1;
      localho.H(bool3);
      if (!bool2)
        break label178;
      sv.a(this.mContext).a();
      localCheckBoxView = this.e;
      if (bool2)
        break label191;
    }
    while (true)
    {
      localCheckBoxView.setChecked(bool1);
      this.a.notifyDataSetChanged();
      if ((!localho.cq()) || (!bool2))
        break;
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131429948);
      localDialog.setMessage(2131429949);
      localDialog.setPositiveButton(2131429983, new fx(localDialog), 2);
      localDialog.show();
      ho.a().cp();
      break;
      bool3 = false;
      break label52;
      label178: sv.a(this.mContext).b();
      break label73;
      label191: bool1 = false;
    }
  }

  protected void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
  }

  public void onCreate()
  {
    super.onCreate();
    ViewGroup localViewGroup = (ViewGroup)getListView().getParent();
    View localView = LayoutInflater.from(this.mContext).inflate(2130903354, null);
    this.e = ((CheckBoxView)localView.findViewById(2131231680));
    localViewGroup.addView(localView, 0);
    this.e.setOnClickListener(this);
    this.b = new fv(this.mContext);
    this.c = new ji();
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  public void onResume()
  {
    super.onResume();
    boolean bool = ho.a().co();
    this.e.setChecked(bool);
  }

  public void refreshListData()
  {
    super.refreshListData();
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    String str;
    int i;
    if (localFrameworkTemplateUI != null)
    {
      str = a();
      if (str != null)
        localFrameworkTemplateUI.updateInfoBarText(str);
    }
    else
    {
      getAdapter().setDataList(b());
      getAdapter().notifyDataSetChanged();
      if (isReloadData())
        setReloadData(false);
      if ((this.mDataList != null) && (this.mDataList.size() != 0))
        break label104;
      if (!this.f)
        break label98;
      i = 2131429990;
      label86: setEmptyText(i);
    }
    while (true)
    {
      return;
      str = "";
      break;
      label98: i = 2131429991;
      break label86;
      label104: hideEmptyView();
    }
  }

  protected void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhu
 * JD-Core Version:    0.6.2
 */