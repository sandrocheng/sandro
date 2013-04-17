import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class acj
  implements IPackageChangedListener
{
  protected Context a;
  private Handler b;
  private Dialog c;
  private SoftwareManager d;
  private acj.a e;
  private final List<ms> f;
  private final List<ms> g;
  private PackageChangedManager h;

  public acj(Context paramContext)
  {
    this.a = paramContext;
    this.c = a.a(this.a, this.a.getString(2131429199));
    this.d = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    this.f = new ArrayList();
    this.g = new ArrayList();
    this.b = new acl(this);
    if (this.h == null)
      this.h = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.h.addListener(this);
  }

  private void c(List<String> paramList)
  {
    int i = 0;
    if (i < paramList.size())
    {
      int j;
      label46: ms localms;
      label88: String str1;
      if (this.e != null)
      {
        acj.a locala = this.e;
        List localList = this.g;
        String str2 = (String)paramList.get(i);
        j = 0;
        if (j >= localList.size())
          break label168;
        localms = (ms)localList.get(j);
        if (str2.equals(localms.e.packageName))
          locala.b(localms);
      }
      else
      {
        str1 = (String)paramList.get(i);
        kw localkw = a.a(this.d.getAppInfo(str1, 1), false);
        if (localkw != null)
        {
          if (!localkw.isSystemApp())
            break label174;
          ((Activity)this.a).runOnUiThread(new acm(this, localkw));
        }
      }
      while (true)
      {
        i++;
        break;
        j++;
        break label46;
        label168: localms = null;
        break label88;
        try
        {
          label174: this.d.uninstallApp(str1, (Activity)this.a, 0);
        }
        catch (Exception localException)
        {
          ha.b(TMSApplication.getApplicaionContext(), 2131427510);
        }
      }
    }
  }

  public final void a()
  {
    if (this.h != null)
      this.h.removeListener(this);
  }

  public final void a(acj.a parama)
  {
    this.e = parama;
  }

  public final void a(List<ms> paramList)
  {
    this.b.obtainMessage(2, 0, 0).sendToTarget();
    new Thread(new ack(this, paramList)).start();
  }

  public final void b(List<ms> paramList)
  {
    if (this.e != null);
    this.g.clear();
    this.f.clear();
    Iterator localIterator2;
    if (paramList.size() > 0)
    {
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        ms localms2 = (ms)localIterator1.next();
        if (localms2.e.apkType == 2)
          this.f.add(localms2);
        else
          this.g.add(localms2);
      }
      if (this.f.size() > 0)
        localIterator2 = this.f.iterator();
    }
    label425: label706: label715: label741: 
    while (true)
    {
      ms localms1;
      File localFile;
      if (localIterator2.hasNext())
      {
        localms1 = (ms)localIterator2.next();
        String str3 = localms1.e.path;
        if (str3 != null)
        {
          localFile = new File(str3);
          if ((!localFile.exists()) || (localFile.isDirectory()));
        }
      }
      else
      {
        for (boolean bool3 = localFile.delete(); ; bool3 = true)
        {
          if (!bool3)
            break label741;
          localms1.b = 1;
          if (this.e == null)
            break;
          this.e.a(localms1);
          break;
          new StringBuilder("^^ statck sizea ").append(this.g.size()).toString();
          ArrayList localArrayList2;
          if (this.g.size() > 0)
          {
            ArrayList localArrayList1 = new ArrayList();
            for (int i = 0; i < this.g.size(); i++)
              localArrayList1.add(((ms)this.g.get(i)).e.packageName);
            localArrayList2 = new ArrayList();
            ArrayList localArrayList3 = new ArrayList();
            ArrayList localArrayList4 = new ArrayList();
            int j = 0;
            if (j < localArrayList1.size())
            {
              String str2 = (String)localArrayList1.get(j);
              kw localkw = a.a(this.d.getAppInfo(str2, 65), false);
              if (localkw != null)
              {
                if (!localkw.isSystemApp())
                  break label425;
                localArrayList3.add(localkw);
              }
              while (true)
              {
                j++;
                break;
                localArrayList2.add(localkw.getPackageName());
                localArrayList4.add(localkw);
              }
            }
            if (localArrayList3.size() > 0)
            {
              boolean bool2 = fy.a((Activity)this.a, localArrayList3);
              new StringBuilder("UninstallListener delete sys App ").append(bool2).toString();
            }
            if (localArrayList2.size() > 0)
            {
              if (ScriptHelper.canRunAtRoot() != 0)
                break label715;
              StringBuilder localStringBuilder = new StringBuilder();
              boolean bool1 = fy.b(localArrayList2);
              new StringBuilder("UninstallListener delete no sys App ").append(bool1).toString();
              String str1 = localStringBuilder.toString().toLowerCase().trim();
              new StringBuilder("^^ statck sizeb ").append(this.g.size()).toString();
              if (!"failed".equals(str1))
                break label706;
              bool1 = fy.a((Activity)this.a, localArrayList4);
              new StringBuilder("UninstallListener no sys App use uninstallSysApp method ").append(bool1).toString();
              if ((!bool1) && (str1.length() > 0))
                ha.a(this.a, this.a.getString(2131427778));
            }
          }
          while (true)
          {
            new StringBuilder("^^ statck sizec ").append(this.g.size()).toString();
            this.b.obtainMessage(2, 1, 0).sendToTarget();
            if (this.e != null)
              this.e.a();
            return;
            c(localArrayList2);
            break;
            this.b.obtainMessage(2, 1, 0).sendToTarget();
            c(localArrayList2);
          }
        }
      }
    }
  }

  public final void onPackageAdded(String paramString)
  {
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    for (int i = 0; i < this.g.size(); i++)
    {
      ms localms = (ms)this.g.get(i);
      if (paramString.equals(localms.e.packageName))
      {
        this.g.remove(localms);
        localms.b = 1;
        if (this.e != null)
          this.e.a(localms);
        if ((this.g.size() <= 0) && (this.e != null))
          this.e.a();
      }
    }
  }

  public static abstract interface a
  {
    public abstract void a();

    public abstract void a(ms paramms);

    public abstract void b(ms paramms);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acj
 * JD-Core Version:    0.6.2
 */