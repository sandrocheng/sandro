import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.uilib.view.template.LoadingTemplateUI;
import java.util.LinkedHashMap;

public final class bhv extends BaseTabView
{
  public bhv(Context paramContext)
  {
    super(paramContext);
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131429951)), new bhy(this.mContext, this));
    localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131429947)), new bhx(this.mContext, this));
    return localLinkedHashMap;
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
  }

  public final void onResume()
  {
    super.onResume();
    new Thread(new bhw(this)).start();
  }

  public final void onTabClick(TabModel paramTabModel)
  {
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    int i;
    if (localFrameworkTemplateUI != null)
    {
      LoadingTemplateUI localLoadingTemplateUI = localFrameworkTemplateUI.getLoadingTemplateUI();
      if ((localLoadingTemplateUI != null) && (localLoadingTemplateUI.isShown()))
      {
        i = 1;
        if (i == 0)
          break label40;
      }
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label40: super.onTabClick(paramTabModel);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131429944);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhv
 * JD-Core Version:    0.6.2
 */