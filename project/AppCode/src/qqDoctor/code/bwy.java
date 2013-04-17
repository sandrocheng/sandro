import com.tencent.tmsecure.utils.ScriptHelper.Callback;
import java.util.ArrayList;
import java.util.List;

public final class bwy
  implements ScriptHelper.Callback
{
  public final void onFinish(int paramInt)
  {
    if (paramInt == 0)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add("chmod 666 /sys/devices/system/cpu/kernel_max");
      localArrayList.add("chmod 666 /sys/devices/system/cpu/online");
      localArrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/");
      localArrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*");
      localArrayList.add("chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/stats/");
      localArrayList.add("chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/stats/*");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwy
 * JD-Core Version:    0.6.2
 */