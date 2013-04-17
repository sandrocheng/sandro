import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.networkload.NetworkLoadTaskListener;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;

public final class anf extends BaseView
  implements View.OnClickListener
{
  private ButtonView a = null;
  private int b = 1;
  private boolean c = false;
  private kw d;
  private DownloadServiceBinder e;
  private kv f;
  private BaseServiceConnection g = new BaseServiceConnection(WeekRecDialog.class);
  private Handler h = new ang(this, this.mContext.getMainLooper());
  private NetworkLoadTaskListener<kv> i = new anh(this);

  public anf(Context paramContext)
  {
    super(paramContext, 2130903120);
  }

  private void b()
  {
    TMSService.startService(new of());
    this.e = ((DownloadServiceBinder)TMSService.bindService(of.class, this.g));
    if ((this.d != null) && (this.e != null))
    {
      if (Environment.getExternalStorageState().equals("mounted"))
        break label74;
      ha.b(this.mContext, this.mContext.getString(2131429485));
      this.c = false;
    }
    while (true)
    {
      return;
      label74: this.c = true;
      this.e.registListener(this.i);
      if ((this.f == null) || (this.f.d == null))
        this.f = new kv(this.d);
      of.a(this.f);
    }
  }

  private static boolean c()
  {
    return new File(Environment.getExternalStorageDirectory() + File.separator + "QQSecureDownload" + File.separator + "com.tencent.benchmark.apk").exists();
  }

  public final void onClick(View paramView)
  {
    if (!this.c)
      ha.b(this.mContext, this.mContext.getString(2131429485));
    while (true)
    {
      return;
      switch (this.b)
      {
      default:
        break;
      case 1:
        nd.a().a(26462);
        this.f.isOnChangeRetry = false;
        this.e.startTask(this.f);
        this.h.sendEmptyMessage(1);
        break;
      case 2:
        ha.a(this.mContext, 2131427523);
        break;
      case 3:
        String str = Environment.getExternalStorageDirectory() + File.separator + "QQSecureDownload" + File.separator + "com.tencent.benchmark.apk";
        if (c())
        {
          if (a.f(str))
          {
            try
            {
              ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class)).installApp(new File(str));
              getActivity().finish();
            }
            catch (Exception localException)
            {
              while (true)
                ha.b(TMSApplication.getApplicaionContext(), 2131427509);
            }
          }
          else
          {
            new File(str).delete();
            this.h.sendEmptyMessage(1);
          }
        }
        else
          this.h.sendEmptyMessage(1);
        break;
      case 4:
        this.e.continueTask(this.f);
        this.h.sendEmptyMessage(1);
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = new kw();
    this.d.setPackageName("com.tencent.benchmark");
    this.d.setAppName(this.mContext.getString(2131430311));
    this.d.d("http://tools.3g.qq.com/j/TencentBenchMark");
    this.d.setApkPath(Environment.getExternalStorageDirectory() + File.separator + "QQSecureDownload" + File.separator + "com.tencent.benchmark.apk");
    this.a = ((ButtonView)findViewById(2131230908));
    this.a.setOnClickListener(this);
    this.a.setText(this.mContext.getResources().getString(2131427429));
    b();
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.h.sendEmptyMessage(3);
  }

  public final void onResume()
  {
    super.onResume();
    this.h.sendEmptyMessage(1);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430311);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anf
 * JD-Core Version:    0.6.2
 */