import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.LinkedHashMap;

public final class bqa extends BaseTabView
{
  public bqa(Context paramContext)
  {
    super(paramContext);
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131429759)), new bra(this.mContext, this));
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131429758)), new bqs(this.mContext, this));
    return localLinkedHashMap;
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
    nd.a().a(26449);
  }

  public final void onDestroy()
  {
    super.onDestroy();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131428138);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqa
 * JD-Core Version:    0.6.2
 */