import QQPIM.EListType;
import QQPIM.FBWBList;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class acg extends pe
{
  private UpdateManager k = null;

  public acg(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1, paramBoolean2);
  }

  private static void g()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = new hq(0).a().iterator();
    while (localIterator1.hasNext())
    {
      lf locallf2 = (lf)localIterator1.next();
      FBWBList localFBWBList2 = new FBWBList();
      localFBWBList2.setListtype(EListType.ELT_Black.value());
      localFBWBList2.setPhone(locallf2.phonenum);
      localArrayList.add(localFBWBList2);
    }
    Iterator localIterator2 = new hq(1).a().iterator();
    while (localIterator2.hasNext())
    {
      lf locallf1 = (lf)localIterator2.next();
      FBWBList localFBWBList1 = new FBWBList();
      localFBWBList1.setListtype(EListType.ELT_White.value());
      localFBWBList1.setPhone(locallf1.phonenum);
      localArrayList.add(localFBWBList1);
    }
    int i = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportWBList(localArrayList);
    if ((i != 0) && (a.b(i) == fc.a));
  }

  public final void a(int paramInt)
  {
    nd.a().a(26176, paramInt);
  }

  protected final void a(Context paramContext, CheckResult paramCheckResult, IRetryListener paramIRetryListener)
  {
    String str1 = paramContext.getString(2131428062);
    String str2 = paramCheckResult.mMessage;
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(str1);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131429925, new ej(localDialog, paramIRetryListener), 1);
    localDialog.setNeutralButton(2131429929, new ek(localDialog, paramIRetryListener), 2);
    localDialog.setOnCancelListener(new el(localDialog, paramIRetryListener));
    try
    {
      localDialog.show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  protected final void a(CheckResult paramCheckResult, int paramInt)
  {
    if (paramInt == 0)
    {
      km localkm = f.d();
      long l = System.currentTimeMillis();
      localkm.a.putLong("last_time_of_update", l).commit();
      localkm.a.putBoolean("ever_update", true).commit();
      if (!this.f)
      {
        zs localzs = new zs();
        new zv(localzs, false, new mk(), null).start();
        localzs.a();
      }
      Context localContext = this.b.getApplicationContext();
      if (aan.b == null)
        aan.b = new aan(localContext);
      new Thread(new aap(aan.b)).start();
    }
  }

  protected final void a(CheckResult paramCheckResult, IUpdateListener paramIUpdateListener)
  {
    this.k.update(paramCheckResult.mUpdateInfoList, paramIUpdateListener);
    if ((paramCheckResult != null) && (paramCheckResult.mUpdateInfoList != null))
      for (int i = 0; i < paramCheckResult.mUpdateInfoList.size(); i++)
      {
        new StringBuilder("131072 UpdateInfoManager doUpdate mCheckResult.mUpdateInfoList.get(i).flag ").append(((UpdateInfo)paramCheckResult.mUpdateInfoList.get(i)).flag).toString();
        if (((UpdateInfo)paramCheckResult.mUpdateInfoList.get(i)).flag == 262144)
          yf.a();
      }
    g();
  }

  protected final void b(int paramInt)
  {
  }

  public final void e()
  {
    this.k.check(925422, this.i);
  }

  protected final void f()
  {
    if (this.k != null)
      this.k.cancel();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acg
 * JD-Core Version:    0.6.2
 */