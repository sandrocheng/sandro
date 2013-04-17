import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper.Pair;
import java.util.ArrayList;

public final class bxc
  implements IAutoBootHelper
{
  public final ArrayList<IAutoBootHelper.Pair<String, Boolean>> getAllAutoBootApps()
  {
    return new ArrayList();
  }

  public final boolean setAutoBootEnable(String paramString, boolean paramBoolean)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxc
 * JD-Core Version:    0.6.2
 */