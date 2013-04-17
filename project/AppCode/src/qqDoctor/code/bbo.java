import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.LinkedHashMap;

public final class bbo extends BaseTabView
{
  private bax a;
  private int b;

  public bbo(Context paramContext)
  {
    super(paramContext);
  }

  public final void a()
  {
    this.a.setReloadData(true);
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    boolean bool = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).isSupportTrafficState();
    if (bool)
      localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131427746)), new bbk(this.mContext, this));
    TabModel localTabModel = new TabModel(1, 0, null, null, this.mContext.getString(2131427747));
    bax localbax = new bax(this.mContext, this, bool);
    localLinkedHashMap.put(localTabModel, localbax);
    this.a = ((bax)localbax);
    return localLinkedHashMap;
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
    setDefaultTab(((Activity)this.mContext).getIntent().getIntExtra("first_tab", 0));
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    super.onResume();
  }

  public final void onTabClick(TabModel paramTabModel)
  {
    super.onTabClick(paramTabModel);
    this.b = paramTabModel.getID();
    if (this.b == 1)
      nd.a().a(26192);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131427745);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbo
 * JD-Core Version:    0.6.2
 */