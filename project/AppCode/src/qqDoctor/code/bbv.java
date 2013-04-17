import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import java.util.List;

final class bbv
  implements dv
{
  bbv(bbu parambbu, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    if (paramObject == null)
      ha.a(bbu.a(this.b), bbu.b(this.b).getResources().getString(2131428398));
    while (true)
    {
      return;
      switch (((Integer)paramObject).intValue())
      {
      default:
        ha.a(bbu.g(this.b), bbu.h(this.b).getResources().getString(2131428398));
        break;
      case 0:
        int i = this.a.size();
        for (int j = 0; j < i; j++)
        {
          mb localmb = (mb)this.a.get(j);
          localmb.e = (0x1 | localmb.e);
          bbu.c(this.b).b(localmb);
        }
        bbu.d(this.b).sendEmptyMessage(-1);
        ha.a(bbu.e(this.b), bbu.f(this.b).getResources().getString(2131430204));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbv
 * JD-Core Version:    0.6.2
 */