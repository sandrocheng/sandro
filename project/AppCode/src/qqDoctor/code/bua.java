import com.tencent.tmsecure.module.aresengine.DataFilter;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.aresengine.DataMonitor;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class bua<T extends TelephonyEntity>
  implements DataIntercepter<T>
{
  private DataMonitor<T> a;
  private DataFilter<T> b;
  private DataHandler c;

  public bua(DataMonitor<T> paramDataMonitor, DataFilter<T> paramDataFilter, DataHandler paramDataHandler)
  {
    this.a = paramDataMonitor;
    this.b = paramDataFilter;
    this.c = paramDataHandler;
  }

  public final DataFilter<T> dataFilter()
  {
    return this.b;
  }

  public final DataHandler dataHandler()
  {
    return this.c;
  }

  public final DataMonitor<T> dataMonitor()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bua
 * JD-Core Version:    0.6.2
 */