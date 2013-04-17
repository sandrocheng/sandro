import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.List;

final class bbm
  implements Runnable
{
  bbm(bbl parambbl)
  {
  }

  public final void run()
  {
    if ((bbk.a(this.a.a) != null) && (bbk.a(this.a.a).size() > 0))
    {
      String[] arrayOfString = new String[bbk.a(this.a.a).size()];
      for (int i = 0; i < arrayOfString.length; i++)
        arrayOfString[i] = ((kw)bbk.a(this.a.a).get(i)).getPackageName();
      bbk.b(this.a.a).clearTrafficInfo(arrayOfString);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbm
 * JD-Core Version:    0.6.2
 */