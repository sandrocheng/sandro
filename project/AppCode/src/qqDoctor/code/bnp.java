import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareCenterActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.LinkedHashMap;

public final class bnp extends BaseTabView
{
  public static boolean a = false;

  public bnp(Context paramContext)
  {
    super(paramContext);
    new bnq().start();
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131430164)), new bns(this.mContext, this));
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131430165)), new bnr(this.mContext, this));
    return localLinkedHashMap;
  }

  public final void onBackClick()
  {
    Intent localIntent1 = getActivity().getIntent();
    boolean bool = false;
    if (localIntent1 != null)
      bool = localIntent1.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      Intent localIntent2 = new Intent(localContext, SoftwareCenterActivity.class);
      localIntent2.putExtra("extra_back_to_main", true);
      localContext.startActivity(localIntent2);
    }
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
    paramUIConfigModel.mCreateImageLoaderService = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    if (!Environment.getExternalStorageState().equals("mounted"))
      ha.b(this.mContext, 2131427825);
    if (getActivity().getIntent().getBooleanExtra("IS_FROM_NOTIFICATION", false))
      nd.a().a(26433);
    nd.a().a(26046);
    ov.a().j();
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427878);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131427513);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)51);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnp
 * JD-Core Version:    0.6.2
 */