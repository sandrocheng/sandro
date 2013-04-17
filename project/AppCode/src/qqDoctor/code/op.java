import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.aresengine.FilterConfig;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.ISpecialSmsChecker;
import com.tencent.tmsecure.module.aresengine.InComingSmsFilter;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class op
{
  private static op a = null;
  private ov b = ov.a();
  private AresEngineManager c = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
  private zs d;
  private hh e = hh.a();
  private IContactDao f = new hq(1);
  private IContactDao g = new hq(2);
  private ILastCallLogDao h = im.a();
  private io i = f.g();
  private iq j = f.h();
  private ho k = ho.a();
  private ki l = (ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
  private jp m = new jp("smslog", "mms_pdu", "mms_parts");
  private boolean n = false;
  private List<lt> o = new ArrayList();
  private Map<String, Long> p = new HashMap();
  private lt q = new oq(this);
  private ContentObserver r = new or(this, new Handler(Looper.getMainLooper()));
  private IntelligentSmsHandler s = new os(this);
  private ISpecialSmsChecker t = new ou(this);

  private op()
  {
    QQPimApplication.a();
    this.d = new zs();
  }

  public static op a()
  {
    if (a == null)
      a = new op();
    return a;
  }

  public final void a(lt paramlt)
  {
    synchronized (this.o)
    {
      if (!this.o.contains(paramlt))
        this.o.add(paramlt);
      return;
    }
  }

  public final void b(lt paramlt)
  {
    synchronized (this.o)
    {
      this.o.remove(paramlt);
      return;
    }
  }

  public final boolean b()
  {
    return this.n;
  }

  public final void c()
  {
    this.n = true;
    try
    {
      DataIntercepterBuilder localDataIntercepterBuilder4 = DataIntercepterBuilder.createInComingSmsIntercepterBuilder();
      this.c.addIntercepter(localDataIntercepterBuilder4);
      label19: DataIntercepterBuilder localDataIntercepterBuilder1 = DataIntercepterBuilder.createOutgoingSmsIntercepterBuilder();
      this.c.addIntercepter(localDataIntercepterBuilder1);
      DataIntercepterBuilder localDataIntercepterBuilder2 = DataIntercepterBuilder.createInComingCallIntercepterBuilder();
      this.c.addIntercepter(localDataIntercepterBuilder2);
      DataIntercepterBuilder localDataIntercepterBuilder3 = DataIntercepterBuilder.createSystemCallLogIntercepterBuilder();
      this.c.addIntercepter(localDataIntercepterBuilder3);
      d();
      a(this.q);
      QQPimApplication.a().getContentResolver().registerContentObserver(Uri.parse("content://sms"), true, this.r);
      InComingSmsFilter localInComingSmsFilter = (InComingSmsFilter)this.c.findIntercepter("incoming_sms").dataFilter();
      localInComingSmsFilter.setIntelligentSmsHandler(this.s);
      localInComingSmsFilter.setSpecialSmsChecker(this.t);
      return;
    }
    catch (Exception localException)
    {
      break label19;
    }
  }

  public final void d()
  {
    int i1;
    FilterConfig localFilterConfig8;
    int i2;
    label453: label465: int i3;
    label480: label492: int i4;
    label508: int i5;
    label537: label588: label598: label609: int i6;
    label625: int i7;
    label850: label862: int i8;
    label877: label889: int i9;
    label904: int i10;
    while (true)
    {
      FilterConfig localFilterConfig5;
      FilterConfig localFilterConfig7;
      try
      {
        if (!this.e.g())
          break;
        i1 = this.e.d();
        localFilterConfig5 = new FilterConfig();
        localFilterConfig5.set(256, 2);
        localFilterConfig5.set(1, 2);
        switch (i1)
        {
        default:
          ((InComingSmsFilter)this.c.findIntercepter("incoming_sms").dataFilter()).setConfig(localFilterConfig5);
          FilterConfig localFilterConfig6 = new FilterConfig();
          localFilterConfig6.set(1, 2);
          this.c.findIntercepter("outing_sms").dataFilter().setConfig(localFilterConfig6);
          localFilterConfig7 = new FilterConfig();
          if (this.e.h() != 0)
            break;
          localFilterConfig7.set(1, 0);
          break label1854;
          this.c.findIntercepter("incoming_call").dataFilter().setConfig(localFilterConfig7);
          localFilterConfig8 = new FilterConfig();
          localFilterConfig8.set(1, 2);
          switch (i1)
          {
          default:
            this.c.findIntercepter("system_call").dataFilter().setConfig(localFilterConfig8);
            return;
          case 2:
          case 1:
          case 0:
          case 3:
          }
        case 2:
          localFilterConfig5.set(2, 0);
          localFilterConfig5.set(4, 1);
          localFilterConfig5.set(8, 1);
          localFilterConfig5.set(16, 1);
          localFilterConfig5.set(32, 1);
          localFilterConfig5.set(64, 3);
          localFilterConfig5.set(128, 1);
          continue;
        case 1:
        case 0:
        case 3:
        }
      }
      finally
      {
      }
      localFilterConfig5.set(2, 0);
      localFilterConfig5.set(4, 1);
      localFilterConfig5.set(8, 0);
      localFilterConfig5.set(16, 0);
      localFilterConfig5.set(32, 1);
      localFilterConfig5.set(64, 3);
      localFilterConfig5.set(128, 0);
      continue;
      localFilterConfig5.set(2, 0);
      localFilterConfig5.set(4, 1);
      localFilterConfig5.set(8, 0);
      localFilterConfig5.set(16, 0);
      localFilterConfig5.set(32, 1);
      localFilterConfig5.set(64, 2);
      localFilterConfig5.set(128, 0);
      continue;
      if ((0x1 & this.e.b()) == 0)
        break label1888;
      i2 = 1;
      if (i2 != 0)
      {
        localFilterConfig5.set(2, 0);
        if ((0x2 & this.e.b()) == 0)
          break label1894;
        i3 = 1;
        if (i3 == 0)
          break label588;
        localFilterConfig5.set(4, 1);
        if ((0x8 & this.e.b()) == 0)
          break label1900;
        i4 = 1;
        if (i4 == 0)
          break label598;
        localFilterConfig5.set(8, 0);
      }
      while (true)
      {
        if ((0x40 & this.e.b()) == 0)
          break label1906;
        i5 = 1;
        if (i5 == 0)
          break label609;
        localFilterConfig5.set(16, 0);
        localFilterConfig5.set(32, 1);
        localFilterConfig5.set(64, 2);
        localFilterConfig5.set(128, 0);
        break;
        localFilterConfig5.set(2, 3);
        break label465;
        localFilterConfig5.set(4, 3);
        break label492;
        localFilterConfig5.set(8, 1);
      }
      if ((0x20 & this.e.b()) == 0)
        break label1912;
      i6 = 1;
      if (i6 != 0)
      {
        localFilterConfig5.set(16, 0);
        localFilterConfig5.set(32, 3);
        localFilterConfig5.set(64, 3);
        localFilterConfig5.set(128, 0);
      }
      else
      {
        localFilterConfig5.set(16, 3);
        localFilterConfig5.set(32, 1);
        localFilterConfig5.set(64, 3);
        localFilterConfig5.set(128, 1);
        continue;
        localFilterConfig7.set(1, 1);
        break label1854;
        localFilterConfig7.set(2, 0);
        localFilterConfig7.set(4, 1);
        localFilterConfig7.set(8, 1);
        localFilterConfig7.set(16, 1);
        localFilterConfig7.set(32, 1);
        continue;
        localFilterConfig7.set(2, 0);
        localFilterConfig7.set(4, 1);
        localFilterConfig7.set(8, 0);
        localFilterConfig7.set(16, 0);
        localFilterConfig7.set(32, 0);
        continue;
        localFilterConfig7.set(2, 0);
        localFilterConfig7.set(4, 1);
        localFilterConfig7.set(8, 0);
        localFilterConfig7.set(16, 0);
        localFilterConfig7.set(32, 0);
        continue;
        if ((0x1 & this.e.b()) == 0)
          break label1918;
        i7 = 1;
        if (i7 != 0)
        {
          localFilterConfig7.set(2, 0);
          if ((0x2 & this.e.b()) == 0)
            break label1924;
          i8 = 1;
          if (i8 == 0)
            break label967;
          localFilterConfig7.set(4, 1);
          if ((0x4 & this.e.b()) == 0)
            break label1930;
          i9 = 1;
          if (i9 == 0)
            break label977;
          localFilterConfig7.set(8, 0);
        }
        while (true)
        {
          if ((0x10 & this.e.b()) == 0)
            break label1936;
          i10 = 1;
          label933: if (i10 == 0)
            break label988;
          localFilterConfig7.set(16, 0);
          localFilterConfig7.set(32, 0);
          break;
          localFilterConfig7.set(2, 3);
          break label862;
          label967: localFilterConfig7.set(4, 3);
          break label889;
          label977: localFilterConfig7.set(8, 1);
        }
        label988: localFilterConfig7.set(16, 3);
        localFilterConfig7.set(32, 1);
      }
    }
    localFilterConfig8.set(2, 0);
    localFilterConfig8.set(4, 1);
    localFilterConfig8.set(8, 1);
    localFilterConfig8.set(16, 1);
    if (this.e.c())
    {
      localFilterConfig8.set(64, 2);
      label1055: if (!this.e.f())
        break label1105;
      localFilterConfig8.set(128, 2);
    }
    while (true)
    {
      localFilterConfig8.set(32, 1);
      label1082: localFilterConfig8.set(256, 2);
      break;
      localFilterConfig8.set(64, 3);
      break label1055;
      label1105: localFilterConfig8.set(128, 3);
    }
    localFilterConfig8.set(2, 0);
    localFilterConfig8.set(4, 1);
    localFilterConfig8.set(8, 0);
    localFilterConfig8.set(16, 0);
    if (this.e.c())
    {
      localFilterConfig8.set(64, 2);
      label1165: if (!this.e.f())
        break label1206;
      localFilterConfig8.set(128, 2);
    }
    while (true)
    {
      localFilterConfig8.set(32, 0);
      break;
      localFilterConfig8.set(64, 3);
      break label1165;
      label1206: localFilterConfig8.set(128, 3);
    }
    localFilterConfig8.set(2, 0);
    localFilterConfig8.set(4, 1);
    localFilterConfig8.set(8, 0);
    localFilterConfig8.set(16, 0);
    if (this.e.c())
    {
      localFilterConfig8.set(64, 2);
      label1266: if (!this.e.f())
        break label1307;
      localFilterConfig8.set(128, 2);
    }
    while (true)
    {
      localFilterConfig8.set(32, 3);
      break;
      localFilterConfig8.set(64, 3);
      break label1266;
      label1307: localFilterConfig8.set(128, 3);
    }
    int i11;
    label1334: label1346: int i12;
    label1361: label1373: int i13;
    if ((0x1 & this.e.b()) != 0)
    {
      i11 = 1;
      if (i11 != 0)
      {
        localFilterConfig8.set(2, 0);
        if ((0x2 & this.e.b()) == 0)
          break label1948;
        i12 = 1;
        if (i12 == 0)
          break label1488;
        localFilterConfig8.set(4, 1);
        if ((0x4 & this.e.b()) == 0)
          break label1954;
        i13 = 1;
        label1388: if (i13 == 0)
          break label1498;
        localFilterConfig8.set(8, 0);
        label1401: if ((0x10 & this.e.b()) == 0)
          break label1960;
      }
    }
    label1438: label1954: label1960: for (int i14 = 1; ; i14 = 0)
    {
      if (i14 != 0)
      {
        localFilterConfig8.set(16, 0);
        localFilterConfig8.set(32, 0);
        if (!this.e.c())
          break label1528;
        localFilterConfig8.set(64, 2);
      }
      while (true)
      {
        if (!this.e.f())
          break label1539;
        localFilterConfig8.set(128, 2);
        break;
        localFilterConfig8.set(2, 3);
        break label1346;
        label1488: localFilterConfig8.set(4, 3);
        break label1373;
        label1498: localFilterConfig8.set(8, 1);
        break label1401;
        localFilterConfig8.set(16, 3);
        localFilterConfig8.set(32, 1);
        break label1438;
        label1528: localFilterConfig8.set(64, 3);
      }
      localFilterConfig8.set(128, 3);
      break label1082;
      FilterConfig localFilterConfig1 = new FilterConfig();
      localFilterConfig1.set(1, 2);
      localFilterConfig1.set(2, 3);
      localFilterConfig1.set(4, 3);
      localFilterConfig1.set(8, 3);
      localFilterConfig1.set(16, 3);
      localFilterConfig1.set(32, 3);
      localFilterConfig1.set(64, 3);
      localFilterConfig1.set(128, 3);
      this.c.findIntercepter("incoming_sms").dataFilter().setConfig(localFilterConfig1);
      FilterConfig localFilterConfig2 = new FilterConfig();
      localFilterConfig2.set(1, 2);
      this.c.findIntercepter("outing_sms").dataFilter().setConfig(localFilterConfig2);
      FilterConfig localFilterConfig3 = new FilterConfig();
      if (this.e.h() == 0)
        localFilterConfig3.set(1, 0);
      while (true)
      {
        localFilterConfig3.set(2, 3);
        localFilterConfig3.set(4, 3);
        localFilterConfig3.set(8, 3);
        localFilterConfig3.set(16, 3);
        localFilterConfig3.set(32, 3);
        this.c.findIntercepter("incoming_call").dataFilter().setConfig(localFilterConfig3);
        FilterConfig localFilterConfig4 = new FilterConfig();
        localFilterConfig4.set(1, 2);
        localFilterConfig4.set(2, 3);
        localFilterConfig4.set(4, 3);
        localFilterConfig4.set(8, 3);
        localFilterConfig4.set(64, 3);
        localFilterConfig4.set(128, 3);
        localFilterConfig4.set(32, 3);
        localFilterConfig4.set(256, 3);
        this.c.findIntercepter("system_call").dataFilter().setConfig(localFilterConfig4);
        break;
        localFilterConfig3.set(1, 1);
      }
      label1854: switch (i1)
      {
      default:
      case 2:
      case 1:
      case 0:
      case 3:
      }
      label1888: i2 = 0;
      break label453;
      label1894: i3 = 0;
      break label480;
      label1900: i4 = 0;
      break label508;
      label1906: i5 = 0;
      break label537;
      label1912: i6 = 0;
      break label625;
      label1918: i7 = 0;
      break label850;
      i8 = 0;
      break label877;
      i9 = 0;
      break label904;
      i10 = 0;
      break label933;
      i11 = 0;
      break label1334;
      i12 = 0;
      break label1361;
      i13 = 0;
      break label1388;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     op
 * JD-Core Version:    0.6.2
 */