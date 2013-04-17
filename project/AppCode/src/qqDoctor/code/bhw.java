import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class bhw
  implements Runnable
{
  bhw(bhv parambhv)
  {
  }

  public final void run()
  {
    if ((sv.b == null) || (sv.b.size() == 0))
    {
      fv localfv = new fv(bhv.a(this.a));
      HashMap localHashMap = new HashMap();
      Iterator localIterator = localfv.b.a("tb_software_lock_count", "id ASC").iterator();
      while (localIterator.hasNext())
      {
        mo localmo = (mo)localIterator.next();
        String str = localmo.a;
        if ((str != null) && (!str.equals("")))
          localHashMap.put(str, Integer.valueOf(localmo.b));
      }
      sv.b = localHashMap;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhw
 * JD-Core Version:    0.6.2
 */