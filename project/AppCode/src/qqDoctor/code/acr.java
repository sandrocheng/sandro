import android.content.Context;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

public final class acr
{
  public static int a = 1;
  public static int b = 2;
  private acr.c c = acr.c.a;
  private List<QScanResultEntity> d;
  private int e = 0;
  private int f;
  private boolean g = false;
  private Context h;
  private Handler i = new acs(this);
  private Timer j;
  private QScannerManager k;
  private QScanListener l = new acu(this);
  private acr.d m;
  private ho n;
  private mu o;

  public acr(Context paramContext)
  {
    this.h = paramContext;
    this.n = ho.a();
    this.k = ((QScannerManager)ManagerCreator.getManager(QScannerManager.class));
  }

  public final void a()
  {
    if (this.j != null)
      this.j.cancel();
  }

  public final void a(acr.a parama)
  {
    this.c = acr.c.b;
    this.e = 0;
    this.o = new mu();
    this.f = 0;
    this.g = false;
    new Thread(new acv(this, parama)).start();
    acr.b localb = acr.b.j;
    this.m.a(localb, 0);
  }

  public final void a(acr.c paramc)
  {
    this.c = paramc;
  }

  public final void a(acr.d paramd)
  {
    this.m = paramd;
  }

  public final void b()
  {
    if (this.j != null)
      this.j.cancel();
    this.c = acr.c.f;
  }

  public final void c()
  {
    this.k.cancelScan();
    this.c = acr.c.c;
    acr.b localb = acr.b.c;
    this.m.a(localb, 0);
  }

  public final void d()
  {
    this.c = acr.c.a;
    this.e = -1;
    this.o = null;
    if (this.d != null)
      this.d.clear();
  }

  public final boolean e()
  {
    if (this.c == acr.c.b);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean f()
  {
    if (this.c == acr.c.c);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean g()
  {
    if (this.c == acr.c.a);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean h()
  {
    return this.g;
  }

  public final void i()
  {
    this.k.cancelScan();
    this.k.freeScanner();
  }

  public final List<ms> j()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.d != null)
    {
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        QScanResultEntity localQScanResultEntity = (QScanResultEntity)localIterator.next();
        switch (localQScanResultEntity.type)
        {
        default:
          break;
        case 2:
        case 3:
        case 8:
          ms localms = new ms();
          localms.e = localQScanResultEntity;
          localms.b = 0;
          if (localQScanResultEntity.type == 8)
            localQScanResultEntity.discription = this.h.getString(2131428040);
          localArrayList.add(localms);
        }
      }
    }
    return localArrayList;
  }

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[2];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
    }
  }

  public static enum b
  {
    static
    {
      b[] arrayOfb = new b[11];
      arrayOfb[0] = a;
      arrayOfb[1] = b;
      arrayOfb[2] = c;
      arrayOfb[3] = d;
      arrayOfb[4] = e;
      arrayOfb[5] = f;
      arrayOfb[6] = g;
      arrayOfb[7] = h;
      arrayOfb[8] = i;
      arrayOfb[9] = j;
      arrayOfb[10] = k;
    }
  }

  public static enum c
  {
    static
    {
      c[] arrayOfc = new c[6];
      arrayOfc[0] = a;
      arrayOfc[1] = b;
      arrayOfc[2] = c;
      arrayOfc[3] = d;
      arrayOfc[4] = e;
      arrayOfc[5] = f;
    }
  }

  public static final class d
  {
    public d(brp parambrp)
    {
    }

    public final void a(acr.b paramb, int paramInt)
    {
      int i = 1;
      switch (brp.1.b[paramb.ordinal()])
      {
      case 7:
      case 9:
      case 10:
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
        while (true)
        {
          return;
          brp.a(this.a, 3, brp.o(this.a).getString(2131428558), -1);
          continue;
          System.currentTimeMillis();
          brp.p(this.a);
          new hd();
          continue;
          brp.a(this.a, 3, brp.q(this.a).getString(2131428533) + "," + brp.r(this.a).getString(2131428539), -1);
          brp.a(this.a, brp.s(this.a), brp.t(this.a).getString(2131428016), 0);
          continue;
          brp.a(this.a, 3, brp.u(this.a).getString(2131428540), -1);
          continue;
          int j = brp.E(this.a).size();
          int k = 0;
          label246: String str1;
          String str2;
          int m;
          if (j > 0)
          {
            str1 = brp.v(this.a).getString(2131428546);
            if (k == 0)
              break label323;
            str2 = str1 + brp.w(this.a).getString(2131428547);
            i = -1;
            m = 3;
          }
          while (true)
          {
            brp.a(this.a, m, str2, i);
            break;
            k = i;
            break label246;
            label323: m = 2;
            str2 = str1 + brp.x(this.a).getString(2131428548);
          }
          brp.a(this.a, 0, brp.y(this.a).getString(2131428544), -1);
          brp.a(this.a, brp.s(this.a), brp.z(this.a).getString(2131428354), 0);
          continue;
          brp.a(this.a, 0, brp.A(this.a).getString(2131428106), -1);
          brp.a(this.a, brp.s(this.a), brp.B(this.a).getString(2131428009), 0);
        }
      case 11:
      }
      if (paramInt == 0)
      {
        if (brp.C(this.a) != acr.a.a)
          break label522;
        nd.a().a(26198);
      }
      while (true)
      {
        brp.a(this.a, brp.s(this.a), null, 8);
        brp.D(this.a).sendEmptyMessage(13);
        break;
        label522: if (brp.C(this.a) == acr.a.b)
          nd.a().a(26199);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acr
 * JD-Core Version:    0.6.2
 */