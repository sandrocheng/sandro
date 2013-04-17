import android.content.pm.PackageStats;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.IMemoryHelper.MemoryInfo;
import java.util.ArrayList;
import java.util.List;

public final class bxe
  implements IMemoryHelper
{
  private IMemoryHelper a;

  public bxe(IMemoryHelper paramIMemoryHelper)
  {
    this.a = paramIMemoryHelper;
  }

  public final boolean clearAllCacheData()
  {
    return false;
  }

  public final ArrayList<PackageStats> getAllAppPackageStats(List<String> paramList)
  {
    return this.a.getAllAppPackageStats(paramList);
  }

  public final PackageStats getAppPackageStats(String paramString)
  {
    return new PackageStats(paramString);
  }

  public final long getFreeMemery()
  {
    return this.a.getFreeMemery();
  }

  public final IMemoryHelper.MemoryInfo[] getRamSize(int[] paramArrayOfInt)
  {
    return null;
  }

  public final IMemoryHelper.MemoryInfo[] getRamSize(String[] paramArrayOfString)
  {
    return this.a.getRamSize(paramArrayOfString);
  }

  public final long getTotalMemery()
  {
    return this.a.getTotalMemery();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxe
 * JD-Core Version:    0.6.2
 */