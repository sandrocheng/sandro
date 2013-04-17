import java.util.List;
import java.util.Set;

final class rk
  implements Runnable
{
  rk(rj paramrj, int paramInt)
  {
  }

  public final void run()
  {
    String str = ft.a(rj.a(this.b));
    if (str == null)
      return;
    if (rj.b(this.b).ap() != 0L)
    {
      List localList2 = rj.c(this.b).a();
      for (int i = -1 + localList2.size(); i >= 0; i--)
        if (((mk)localList2.get(i)).protocolType == 1)
          localList2.remove(i);
      if (localList2.size() > 0)
      {
        a.a(localList2, rj.a("ss_", str), str);
        label121: rj.b(this.b).c(0L);
        rj.b(this.b).e(System.currentTimeMillis());
      }
    }
    else if (rj.b(this.b).aq() != 0L)
    {
      List localList1 = rj.d(this.b).a();
      if ((localList1 == null) || (localList1.size() <= 0))
        break label277;
      a.a(localList1, rj.a("sc_", str), str);
    }
    while (true)
    {
      rj.b(this.b).d(0L);
      rj.b(this.b).f(System.currentTimeMillis());
      rj.e(this.b).remove(Integer.valueOf(this.a));
      rj.f(this.b);
      break;
      a.d(rj.a("ss_", str));
      break label121;
      label277: a.d(rj.a("sc_", str));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rk
 * JD-Core Version:    0.6.2
 */