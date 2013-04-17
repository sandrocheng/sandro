import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.FileObserver;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.BaseWindow;
import com.tencent.tmsecure.common.BaseService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class yf extends BaseService
{
  private static SoftList g;
  private BaseWindow a;
  private boolean b;
  private boolean c;
  private Context d;
  private ArrayList<yf.a> e = new ArrayList();
  private ActivityManager f;
  private String h = "";
  private Handler i;

  public static void a()
  {
    g = ((AppListManager)ManagerCreator.getManager(AppListManager.class)).loadAppList(SoftListType.DEEPCLEAN_SOFTWARE_LIST);
  }

  private String c()
  {
    try
    {
      if (this.f == null)
        this.f = ((ActivityManager)this.d.getSystemService("activity"));
      List localList = this.f.getRunningTasks(1);
      if (localList.size() > 0)
      {
        String str2 = ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName();
        str1 = str2;
        return str1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str1 = "";
        continue;
        str1 = "";
      }
    }
  }

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.d = paramContext;
    g = ((AppListManager)ManagerCreator.getManager(AppListManager.class)).loadAppList(SoftListType.DEEPCLEAN_SOFTWARE_LIST);
    for (int j = 0; j < g.vctSofts.size(); j++);
    this.a = new BaseWindow(this.d);
    this.a.setOnCancelLisnetner(new yg(this));
  }

  public void onDestory()
  {
    super.onDestory();
    for (int j = 0; j < this.e.size(); j++)
      ((yf.a)this.e.get(j)).stopWatching();
    this.e.clear();
    this.c = false;
  }

  public void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
    if (!this.c)
    {
      ArrayList localArrayList = fi.a();
      if (localArrayList != null)
      {
        for (int j = 0; j < localArrayList.size(); j++)
        {
          File localFile = new File((String)localArrayList.get(j) + "/.tmfs/");
          if ((localFile.exists()) && (localFile.isDirectory()))
          {
            yf.a locala = new yf.a(localFile.getAbsolutePath());
            locala.startWatching();
            this.e.add(locala);
          }
        }
        this.c = true;
      }
    }
  }

  public final class a extends FileObserver
  {
    public a(String arg2)
    {
      super();
    }

    public final void onEvent(int paramInt, String paramString)
    {
      switch (paramInt)
      {
      default:
      case 1073741840:
      case 1073741856:
      }
      label165: 
      while (true)
      {
        return;
        String str;
        if (!yf.a(yf.this))
          str = yf.b(yf.this);
        for (int i = 0; ; i++)
        {
          if (i >= yf.b().vctSofts.size())
            break label165;
          if (((SoftElementInfo)yf.b().vctSofts.get(i)).pkgname.equals(str))
          {
            SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
            yf.a(yf.this, localSoftwareManager.getAppInfo(str, 1).getAppName());
            yf.c(yf.this);
            yf.a(yf.this, true);
            Message localMessage = yf.d(yf.this).obtainMessage(1);
            yf.d(yf.this).sendMessage(localMessage);
            break;
            break;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yf
 * JD-Core Version:    0.6.2
 */