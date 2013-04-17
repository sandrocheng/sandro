import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

final class aog extends Handler
{
  aog(aoa paramaoa)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 1;
    if ((aoa.a(this.a) == null) || (aoa.a(this.a).i))
      return;
    lc locallc2;
    int i1;
    label486: int i2;
    label550: int i3;
    switch (paramMessage.what)
    {
    case 103:
    case 104:
    default:
    case 101:
    case 105:
      while (true)
      {
        aoa.U(this.a);
        break;
        lc locallc5 = (lc)paramMessage.obj;
        aoa.R(this.a).c.remove(locallc5);
        locallc5.c = new Long(0L);
        locallc5.b = 3006;
        aoa.R(this.a).f.add(locallc5);
        aoa.h(this.a).l();
        aoa.S(this.a);
        aoa.a(this.a, null);
        aoa.T(this.a);
        continue;
        lc locallc4 = (lc)paramMessage.obj;
        aoa.R(this.a).c.remove(locallc4);
        aoa.R(this.a).d.remove(locallc4);
        locallc4.b = 2011;
        aoa.R(this.a).d.add(locallc4);
        aoa.S(this.a);
        aoa.a(this.a, null);
      }
    case 102:
      lc locallc3 = (lc)paramMessage.obj;
      switch (((Integer)locallc3.d).intValue())
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
      while (true)
      {
        aoa.h(this.a).l();
        aoa.S(this.a);
        aoa.a(this.a, null);
        aoa.T(this.a);
        aoa.U(this.a);
        break;
        locallc3.b = 4008;
        aoa.R(this.a).d.remove(locallc3);
        aoa.R(this.a).f.add(locallc3);
        continue;
        locallc3.b = 2009;
        continue;
        locallc3.b = 3008;
        aoa.R(this.a).d.remove(locallc3);
        aoa.R(this.a).f.add(locallc3);
        continue;
        locallc3.b = 2010;
      }
    case 106:
      locallc2 = (lc)paramMessage.obj;
      i1 = 0;
      if (i1 < aoa.R(this.a).d.size())
      {
        if (((lc)aoa.R(this.a).d.get(i1)).b == 2004)
          aoa.R(this.a).d.remove(i1);
      }
      else
      {
        i2 = 0;
        if (i2 < aoa.R(this.a).c.size())
        {
          if (((lc)aoa.R(this.a).c.get(i2)).b != 1006)
            break label769;
          aoa.R(this.a).c.remove(i2);
        }
        if (((List)locallc2.c).size() <= 0)
          break label781;
        locallc2.b = 1002;
        i3 = 0;
        label638: if (i3 >= aoa.R(this.a).c.size())
          break label1086;
        if (((lc)aoa.R(this.a).c.get(i3)).b != 1002)
          break label775;
        aoa.R(this.a).c.set(i3, locallc2);
      }
      break;
    case 107:
    case 108:
    case 109:
    case 110:
    }
    while (true)
    {
      if (i == 0)
        aoa.R(this.a).c.add(locallc2);
      while (true)
      {
        aoa.h(this.a).l();
        aoa.S(this.a);
        aoa.a(this.a, null);
        aoa.T(this.a);
        aoa.U(this.a);
        break;
        i1++;
        break label486;
        label769: i2++;
        break label550;
        label775: i3++;
        break label638;
        label781: locallc2.b = 4009;
        aoa.R(this.a).f.add(locallc2);
      }
      lc locallc1 = (lc)paramMessage.obj;
      int j = 0;
      label820: if (j < aoa.R(this.a).d.size())
      {
        if (((lc)aoa.R(this.a).d.get(j)).b == 2004)
          aoa.R(this.a).d.remove(j);
      }
      else
        locallc1.b = 1006;
      for (int k = 0; ; k++)
      {
        int m = aoa.R(this.a).c.size();
        int n = 0;
        if (k < m)
        {
          if (((lc)aoa.R(this.a).c.get(k)).b == 1006)
          {
            aoa.R(this.a).c.set(k, locallc1);
            n = i;
          }
        }
        else
        {
          if (n == 0)
            aoa.R(this.a).c.add(locallc1);
          aoa.h(this.a).l();
          aoa.S(this.a);
          aoa.a(this.a, null);
          break;
          j++;
          break label820;
        }
      }
      aoa.S(this.a);
      aoa.V(this.a);
      aoa.U(this.a);
      break;
      String str = (String)paramMessage.obj;
      aoa.a(this.a, str);
      break;
      aoa.g(this.a);
      aoa.i(this.a);
      break;
      label1086: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aog
 * JD-Core Version:    0.6.2
 */