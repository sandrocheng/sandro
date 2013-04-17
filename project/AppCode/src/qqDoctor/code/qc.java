import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;

public final class qc
{
  public static boolean g;
  public static boolean h;
  ArrayList<kw> a = new ArrayList();
  OptimizeManager b;
  public int c;
  public Context d;
  Handler e;
  public QScannerManager f;
  public boolean i;
  public Thread j;

  public qc(Context paramContext, Handler paramHandler)
  {
    this.e = paramHandler;
    this.d = paramContext;
    new iu(QQPimApplication.a());
    this.f = ((QScannerManager)ManagerCreator.getManager(QScannerManager.class));
  }

  public static int a()
  {
    long l1 = f.f().b.getLong("last_time_of_check_new", 0L);
    int k;
    if (l1 == 0L)
    {
      k = -1;
      return k;
    }
    long l2 = System.currentTimeMillis();
    long l3;
    if (l1 > 0L)
    {
      l3 = (l2 - l1) / 86400000L;
      if (l3 < 0L);
    }
    while (true)
    {
      k = (int)l3;
      break;
      l3 = 0L;
    }
  }

  public static int a(int paramInt)
  {
    int k = 2;
    if ((a() > 0) || (f.f().b.getBoolean("last_check_is_optimization", true)) || ((paramInt <= 100) && (paramInt >= 85)));
    while (true)
    {
      return k;
      if ((paramInt <= 84) && (paramInt >= 60))
      {
        if (f.f().b.getInt("last_danger_of_check_new", 0) > 0)
          k = 0;
        else
          k = 1;
      }
      else if ((paramInt <= 59) && (paramInt >= 0))
        k = 0;
    }
  }

  public final void a(int paramInt, lc paramlc)
  {
    this.e.removeMessages(paramInt);
    Message localMessage = this.e.obtainMessage(paramInt, 2, 2, paramlc);
    this.e.sendMessage(localMessage);
  }

  public static abstract interface a
  {
    public abstract void a(lc paramlc);

    public abstract void b(lc paramlc);

    public abstract void c(lc paramlc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qc
 * JD-Core Version:    0.6.2
 */