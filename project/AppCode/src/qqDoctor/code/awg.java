import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow;
import com.tencent.qqpimsecure.ui.activity.FilterSettingActivity;
import com.tencent.qqpimsecure.ui.activity.InterceptBlackWhiteActivity;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public final class awg extends BaseTabView
{
  private AresEngineManager a;
  private jp b;
  private ho c;
  private ov d;
  private ArrayList<TabModel> e;
  private DataHandler.DataHandlerCallback f = new awh(this);
  private Handler g = new awi(this);

  public awg(Context paramContext)
  {
    super(paramContext);
  }

  public final void a()
  {
    setTabMessage(0, this.b.e());
    setTabMessage(1, this.c.G());
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(new TabModel(0, 0, null, null, this.mContext.getString(2131427716)), new avu(this.mContext, this));
    localLinkedHashMap.put(new TabModel(1, 0, null, null, this.mContext.getString(2131427715)), new auu(this.mContext, this));
    return localLinkedHashMap;
  }

  public final void onBackClick()
  {
    Intent localIntent = getActivity().getIntent();
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      localContext.startActivity(new Intent(localContext, MainActivity.class));
    }
    super.onBackClick();
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
    this.a = ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class));
    this.b = new jp("smslog", "mms_pdu", "mms_parts");
    this.c = ho.a();
    this.d = ov.a();
    if (getActivity().getIntent().getBooleanExtra("is_from_notification", false))
      nd.a().a(26187);
    int i = this.b.e();
    int j = this.c.G();
    if ("tab_call".equals(getActivity().getIntent().getStringExtra("tab_name")))
      setDefaultTab(1);
    while (true)
    {
      this.d.a(false);
      if ((i > 0) || (j > 0))
        this.d.a(false, false, false);
      if (ToastSuspensionWindow.a == null)
        ToastSuspensionWindow.a = new ToastSuspensionWindow();
      ToastSuspensionWindow.a.h.sendEmptyMessage(4);
      return;
      if ((i == 0) && (j > 0))
        setDefaultTab(1);
      else
        setDefaultTab(0);
    }
  }

  public final void onDestroy()
  {
    this.d.a(true, true);
    super.onDestroy();
  }

  public final void onOptionClick(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 4:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      nd.a().a(26095);
      Intent localIntent3 = new Intent(this.mContext, FilterSettingActivity.class);
      this.mContext.startActivity(localIntent3);
      continue;
      Intent localIntent2 = new Intent(this.mContext, InterceptBlackWhiteActivity.class);
      localIntent2.putExtra("CONTACT_TYPE", 0);
      this.mContext.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent(this.mContext, InterceptBlackWhiteActivity.class);
      localIntent1.putExtra("CONTACT_TYPE", 1);
      this.mContext.startActivity(localIntent1);
    }
  }

  public final void onPause()
  {
    super.onPause();
    if (ToastSuspensionWindow.a == null)
      ToastSuspensionWindow.a = new ToastSuspensionWindow();
    ToastSuspensionWindow.a.h.sendEmptyMessage(4);
    try
    {
      this.a.findIntercepter("incoming_sms").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("outing_sms").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("incoming_call").dataHandler().removeCallback(this.f);
      this.a.findIntercepter("system_call").dataHandler().removeCallback(this.f);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void onResume()
  {
    super.onResume();
    setTabMessage(0, this.b.e());
    setTabMessage(1, this.c.G());
    try
    {
      this.a.findIntercepter("incoming_sms").dataHandler().addCallback(this.f);
      this.a.findIntercepter("outing_sms").dataHandler().addCallback(this.f);
      this.a.findIntercepter("incoming_call").dataHandler().addCallback(this.f);
      this.a.findIntercepter("system_call").dataHandler().addCallback(this.f);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void onStart()
  {
    super.onStart();
    this.d.a(false, true);
    a.a(this, 2131427329);
  }

  public final void onStop()
  {
    this.d.a(true, true);
    super.onStop();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131427982);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    if (this.e == null)
    {
      this.e = new ArrayList(3);
      TabModel localTabModel1 = new TabModel(2, 0, this.mContext.getResources().getDrawable(2130837538), null, this.mContext.getString(2131428005));
      this.e.add(localTabModel1);
      TabModel localTabModel2 = new TabModel(3, 0, this.mContext.getResources().getDrawable(2130838360), null, this.mContext.getString(2131428004));
      this.e.add(localTabModel2);
      TabModel localTabModel3 = new TabModel(4, 0, this.mContext.getResources().getDrawable(2130838280), null, this.mContext.getString(2131427719));
      this.e.add(localTabModel3);
    }
    paramFrameworkTemplateUI.setOptionButtonPopStyle(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     awg
 * JD-Core Version:    0.6.2
 */