import QQPIM.CloudCmd;
import QQPIM.CloudInfo;
import android.app.AlertDialog.Builder;
import android.content.Context;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateInfo;
import java.util.ArrayList;
import java.util.List;

public final class ss extends pe
{
  private ho k;
  private boolean l;
  private aaq m;

  public ss(Context paramContext, boolean paramBoolean, String paramString)
  {
    super(paramContext, paramBoolean, false);
    this.k = ho.a();
    if (this.k.P())
      g();
    this.m = new aaq(this.b, paramString);
  }

  public ss(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1, paramBoolean2);
    this.m = new aaq(this.b, "");
    this.k = ho.a();
    if (this.k.P())
      g();
  }

  public static String a(CheckResult paramCheckResult)
  {
    String str = null;
    if (paramCheckResult != null)
    {
      int i = paramCheckResult.mUpdateInfoList.size();
      str = null;
      if (i > 0)
        str = (String)((UpdateInfo)paramCheckResult.mUpdateInfoList.get(0)).data1;
    }
    return str;
  }

  public static boolean a(Context paramContext, CloudInfo paramCloudInfo)
  {
    String str1;
    boolean bool;
    if ((!paramCloudInfo.getCloudcmds().isEmpty()) && (paramCloudInfo.getCloudcmds().get(0) != null) && (((CloudCmd)paramCloudInfo.getCloudcmds().get(0)).cmdid == 200))
    {
      str1 = a(aaq.a(paramContext, paramCloudInfo));
      String str2 = qx.a().f();
      if ((str1 != null) && (str1.equals(str2)))
        bool = false;
    }
    while (true)
    {
      return bool;
      String str3 = ho.a().cD();
      if ((str3 != null) && (str1 != null) && (str3.equals(str1)))
        bool = false;
      else
        bool = true;
    }
  }

  public static void b(Context paramContext, CloudInfo paramCloudInfo)
  {
    String str1 = a(aaq.a(paramContext, paramCloudInfo));
    ho localho = ho.a();
    String str2 = localho.aR();
    if ((str1 != null) && ((str2 == null) || (!str2.equals(str1))))
    {
      localho.i(str1);
      localho.t(true);
    }
  }

  private void g()
  {
    new AlertDialog.Builder(this.b).setTitle(2131427692).setMessage(2131427796).setPositiveButton(2131427397, new su(this)).setNegativeButton(2131427379, new st(this)).show();
  }

  public final void a(int paramInt)
  {
    nd.a().a(26177, paramInt);
  }

  protected final void a(Context paramContext, CheckResult paramCheckResult, IRetryListener paramIRetryListener)
  {
    a.a(paramContext, paramCheckResult, this.l, paramIRetryListener);
  }

  protected final void a(CheckResult paramCheckResult, int paramInt)
  {
    if ((paramCheckResult != null) && (paramCheckResult.mUpdateInfoList != null) && (!paramCheckResult.mUpdateInfoList.isEmpty()))
    {
      String str1 = a(this.d);
      ho localho = ho.a();
      String str2 = localho.aR();
      if ((str1 != null) && ((str2 == null) || (!str2.equals(str1))))
      {
        localho.i(str1);
        localho.t(true);
      }
    }
    if (paramInt == 0);
    try
    {
      zs localzs = new zs();
      new zv(localzs, false, new mk(), null).start();
      localzs.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(CheckResult paramCheckResult, IUpdateListener paramIUpdateListener)
  {
    this.m.a(paramCheckResult);
    if (this.e != null)
      this.e.a(this.g);
  }

  public final void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  protected final void b(int paramInt)
  {
  }

  public final void e()
  {
    this.m.a(this.i);
  }

  protected final void f()
  {
    this.m.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ss
 * JD-Core Version:    0.6.2
 */