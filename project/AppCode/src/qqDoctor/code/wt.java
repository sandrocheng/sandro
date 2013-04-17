import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class wt
  implements lt
{
  wt(wr paramwr)
  {
  }

  public final boolean a(SmsEntity paramSmsEntity)
  {
    ff.a("kfc", "check");
    boolean bool1 = false;
    if (paramSmsEntity != null)
    {
      String str1 = paramSmsEntity.phonenum;
      bool1 = false;
      if (str1 != null)
        break label26;
    }
    while (true)
    {
      return bool1;
      label26: paramSmsEntity.phonenum = paramSmsEntity.phonenum.replace("+86", "");
      int i = wr.b(this.a).A();
      wr.n();
      if ((wr.c(this.a)) && (Math.abs(System.currentTimeMillis() - wr.d(this.a)) < 1000 * (i * 60)))
      {
        String str2 = wr.e(this.a);
        bool1 = false;
        if (str2 != null)
        {
          boolean bool3 = paramSmsEntity.phonenum.equals(wr.e(this.a));
          bool1 = false;
          if (bool3)
          {
            ff.a("kfc", "send by user: " + wr.e(this.a) + " " + wr.f(this.a));
            ff.a("kfc", paramSmsEntity.body);
            wr.a(this.a, paramSmsEntity.body);
            wr.g(this.a);
            bool1 = false;
          }
        }
      }
      else
      {
        boolean bool2 = wr.a(this.a, paramSmsEntity);
        bool1 = false;
        if (bool2)
        {
          ff.a("kfc", "sms was blocked by AresEngine");
          ff.a("kfc", "from: " + paramSmsEntity.phonenum + ", body: " + paramSmsEntity.body);
          if (2 != wr.h(this.a))
            break;
          bool1 = true;
        }
      }
    }
    if (wr.i(this.a) == 0)
    {
      int j = (int)((System.currentTimeMillis() - wr.j(this.a)) / 1000L);
      if (j > 0)
        wr.b(this.a).l(j);
    }
    wr.a(this.a, 2);
    SmsEntity localSmsEntity = wr.k(this.a).a(paramSmsEntity);
    if ((localSmsEntity != null) && (localSmsEntity.body != null))
    {
      if (localSmsEntity.body.equals(wr.l(this.a)))
        break label448;
      wr.b(this.a, localSmsEntity.phonenum);
      wr.c(this.a, localSmsEntity.body);
      wr.a(this.a, wr.m(this.a), wr.l(this.a));
    }
    while (true)
    {
      bool1 = true;
      break;
      label448: ff.a("kfc", "repeated sms, AresEngine's bug xxxxxxx");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wt
 * JD-Core Version:    0.6.2
 */