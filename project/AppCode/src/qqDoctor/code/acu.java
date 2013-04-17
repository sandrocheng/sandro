import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import java.util.Random;
import java.util.Timer;

final class acu extends QScanListener
{
  private boolean a = false;

  acu(acr paramacr)
  {
  }

  public final void onCloudScan()
  {
    int i = 80;
    if (!acr.b(this.b).aB())
    {
      acr.c(this.b).pauseScan();
      Random localRandom = new Random();
      localRandom.nextInt(6);
      int j = 1 + localRandom.nextInt(5);
      Message localMessage = acr.d(this.b).obtainMessage(1);
      localMessage.arg1 = j;
      acr.d(this.b).sendMessage(localMessage);
    }
    while (true)
    {
      return;
      if (acr.e(this.b) != null)
        acr.e(this.b).cancel();
      acr.a(this.b, acr.b(this.b, 2));
      acr localacr = this.b;
      if (acr.f(this.b) > i)
        i = acr.f(this.b);
      acr.c(localacr, i);
      acr.d(this.b, acr.f(this.b));
      acr.a(this.b, acr.b.h, 0);
    }
  }

  public final void onCloudScanError(int paramInt)
  {
    if (!acr.b(this.b).aD())
    {
      Message localMessage = acr.d(this.b).obtainMessage(2);
      localMessage.arg1 = paramInt;
      acr.d(this.b).sendMessage(localMessage);
    }
    acr.d locald = acr.g(this.b);
    nd.a().a(26174, paramInt);
    brp.F(locald.a);
  }

  public final void onPackageScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
    if (acr.h(this.b) == null)
      return;
    acr.i(this.b);
    int i = 5 + (int)(0.8D * paramInt);
    acr localacr1 = this.b;
    if (acr.f(this.b) > i)
      i = acr.f(this.b);
    acr.c(localacr1, i);
    acr.d(this.b, acr.f(this.b));
    switch (paramQScanResultEntity.type)
    {
    default:
    case 3:
    case 8:
    case 2:
    }
    while (true)
    {
      acr localacr2 = this.b;
      int j = acr.a;
      acr.j(this.b);
      acr.a(localacr2, j, acr.h(this.b).d, acr.h(this.b).g, paramQScanResultEntity);
      break;
      mu localmu3 = acr.h(this.b);
      localmu3.d = (1 + localmu3.d);
      mu localmu4 = acr.h(this.b);
      localmu4.f = (1 + localmu4.f);
      continue;
      mu localmu1 = acr.h(this.b);
      localmu1.g = (1 + localmu1.g);
      mu localmu2 = acr.h(this.b);
      localmu2.f = (1 + localmu2.f);
    }
  }

  public final void onScanCanceled()
  {
    this.b.a(acr.c.c);
  }

  public final void onScanContinue()
  {
  }

  public final void onScanFinished(ArrayList<QScanResultEntity> paramArrayList)
  {
    super.onScanFinished(paramArrayList);
    this.b.a();
    acr.a(this.b, paramArrayList);
    if (this.b.f())
      acr.a(this.b, acr.b.k, 1);
    while (true)
    {
      return;
      if (this.b.e())
      {
        this.b.a(acr.c.e);
        acr.a(this.b, acr.b.k, 0);
      }
    }
  }

  public final void onScanPaused()
  {
    this.b.a(acr.c.d);
  }

  public final void onScanStarted()
  {
    int i = 5;
    if (acr.e(this.b) != null)
      acr.e(this.b).cancel();
    acr localacr = this.b;
    if (acr.f(this.b) > i)
      i = acr.f(this.b);
    acr.c(localacr, i);
    this.a = false;
    acr.d(this.b, acr.f(this.b));
    acr.a(this.b, acr.b.d, 0);
  }

  public final void onSdcardScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
    if (!this.a)
    {
      acr.a(this.b, acr.b.f, 0);
      this.a = true;
    }
    acr.i(this.b);
    int i = 5 + (int)(0.8D * paramInt);
    acr localacr1 = this.b;
    if (acr.f(this.b) > i)
      i = acr.f(this.b);
    acr.c(localacr1, i);
    acr.d(this.b, acr.f(this.b));
    switch (paramQScanResultEntity.type)
    {
    default:
    case 3:
    case 8:
    case 2:
    }
    while (true)
    {
      acr localacr2 = this.b;
      int j = acr.b;
      acr.j(this.b);
      acr.a(localacr2, j, acr.h(this.b).d, acr.h(this.b).g, paramQScanResultEntity);
      return;
      mu localmu3 = acr.h(this.b);
      localmu3.d = (1 + localmu3.d);
      mu localmu4 = acr.h(this.b);
      localmu4.f = (1 + localmu4.f);
      continue;
      mu localmu1 = acr.h(this.b);
      localmu1.g = (1 + localmu1.g);
      mu localmu2 = acr.h(this.b);
      localmu2.f = (1 + localmu2.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acu
 * JD-Core Version:    0.6.2
 */