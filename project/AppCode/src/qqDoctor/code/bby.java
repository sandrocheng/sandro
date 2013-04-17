import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.NotificationAdblockReportActivity;
import com.tencent.qqpimsecure.ui.activity.NotificationAdblockSettingActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseTabView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ViewFramework;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.LinkedHashMap;

public final class bby extends BaseTabView
{
  public int a = -1;
  private Dialog b;
  private ArrayList<TabModel> c;
  private boolean d = false;
  private Handler e = new bbz(this);
  private bbp f;
  private bce g;

  public bby(Context paramContext)
  {
    super(paramContext);
  }

  private void a()
  {
    FrameworkTemplateUI localFrameworkTemplateUI = getFrameworkTemplateUI();
    if ((this.d) && (localFrameworkTemplateUI != null))
      if ((this.a != 1) && (this.a != 2))
        localFrameworkTemplateUI.setOptionButtonPopStyle(b());
    while (true)
    {
      return;
      localFrameworkTemplateUI.setOptionButtonStyle((byte)16);
      continue;
      if (localFrameworkTemplateUI != null)
        localFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    if (paramInt == -99)
    {
      Dialog localDialog1 = new Dialog(paramContext);
      localDialog1.setTitle(paramContext.getString(2131429036));
      localDialog1.setMessage(2131429034);
      localDialog1.setPositiveButton(2131429537, new bcc(localDialog1), 2);
      localDialog1.show();
    }
    while (true)
    {
      return;
      if (paramInt == -8)
      {
        Dialog localDialog2 = new Dialog(paramContext);
        localDialog2.setTitle(paramContext.getString(2131429036));
        localDialog2.setMessage(2131429127);
        localDialog2.setPositiveButton(2131429537, new bcd(localDialog2), 2);
        localDialog2.show();
      }
    }
  }

  private ArrayList<TabModel> b()
  {
    if (this.c == null)
    {
      this.c = new ArrayList(2);
      TabModel localTabModel1 = new TabModel(1, 0, this.mContext.getResources().getDrawable(2130838196), null, this.mContext.getString(2131427411));
      this.c.add(localTabModel1);
      TabModel localTabModel2 = new TabModel(2, 0, this.mContext.getResources().getDrawable(2130838280), null, this.mContext.getString(2131427697));
      this.c.add(localTabModel2);
    }
    return this.c;
  }

  public final LinkedHashMap<TabModel, ViewFramework> getTabDataMap()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    TabModel localTabModel1 = new TabModel(0, 0, null, null, this.mContext.getString(2131430192));
    this.g = new bce(this.mContext, this);
    localLinkedHashMap.put(localTabModel1, this.g);
    TabModel localTabModel2 = new TabModel(1, 0, null, null, this.mContext.getString(2131430193));
    this.f = new bbp(this.mContext, this);
    localLinkedHashMap.put(localTabModel2, this.f);
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
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public final void onCreate()
  {
    super.onCreate();
    if (getActivity().getIntent().getBooleanExtra("EXTRA_FROM_NOTIFICATION", false))
      nd.a().a(26290);
    ((NotificationManager)this.mContext.getSystemService("notification")).cancel(19172439);
    this.e.sendEmptyMessageDelayed(2, 200L);
  }

  public final void onOptionClick(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent(this.mContext, NotificationAdblockReportActivity.class);
      this.mContext.startActivity(localIntent2);
      continue;
      nd.a().a(26297);
      if ((this.a != 1) && (this.a != 2))
      {
        Intent localIntent1 = new Intent(this.mContext, NotificationAdblockSettingActivity.class);
        localIntent1.putExtra("root_state", this.a);
        this.mContext.startActivity(localIntent1);
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    ((NotificationManager)this.mContext.getSystemService("notification")).cancel(19172439);
  }

  public final void onShowPopOptionMenu()
  {
    super.onShowPopOptionMenu();
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  public final void onTabClick(TabModel paramTabModel)
  {
    super.onTabClick(paramTabModel);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
    paramFrameworkTemplateUI.setTitleTextData(2131430192);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setOptionButtonPopStyle(b());
    a();
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bby
 * JD-Core Version:    0.6.2
 */