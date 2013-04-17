import android.os.Handler;

final class aoy
  implements Runnable
{
  aoy(aou paramaou)
  {
  }

  private void a()
  {
    synchronized (aou.o(this.a))
    {
      try
      {
        aou.o(this.a).wait();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  public final void run()
  {
    int i = 1;
    label180: 
    do
    {
      int m;
      do
        while (true)
        {
          if ((i == 0) || (aou.a(this.a)))
            break label413;
          switch (aou.x(this.a))
          {
          default:
            ha.b(aou.z(this.a), "mNeedVerifyCode:" + aou.A(this.a) + ", mCurrentState:" + aou.x(this.a));
            break;
          case 1:
            aou localaou3 = this.a;
            long l3 = aou.c(this.a).a;
            String str3 = aou.c(this.a).b;
            aou.c(this.a);
            m = aou.a(localaou3, l3, str3, null, aou.c(this.a).c, aou.y(this.a));
            if (m != -1)
              break label180;
            i = 0;
          case 2:
          case 3:
          case 4:
          }
        }
      while (m != 1);
      a();
    }
    while (!aou.a(this.a));
    while (true)
    {
      return;
      aou localaou2 = this.a;
      long l2 = aou.c(this.a).a;
      String str2 = aou.c(this.a).b;
      aou.c(this.a);
      int k = aou.a(localaou2, l2, str2, null, aou.y(this.a));
      if (k == -1)
      {
        i = 0;
        break;
      }
      if (k != 1)
        break;
      a();
      if (!aou.a(this.a))
        break;
      continue;
      aou localaou1 = this.a;
      long l1 = aou.c(this.a).a;
      String str1 = aou.c(this.a).b;
      aou.c(this.a);
      int j = aou.b(localaou1, l1, str1, null, aou.y(this.a));
      if ((j == 0) || (j == -1))
      {
        i = 0;
        break;
      }
      if (j != 1)
        break;
      a();
      if (!aou.a(this.a))
        break;
      continue;
      i = 0;
      break;
      label413: if (aou.x(this.a) == 4)
        aou.B(this.a).sendEmptyMessage(502);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoy
 * JD-Core Version:    0.6.2
 */