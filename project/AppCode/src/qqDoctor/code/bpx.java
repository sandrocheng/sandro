import android.os.Handler;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

final class bpx
  implements pt.a
{
  bpx(bpu parambpu)
  {
  }

  public final void a()
  {
    this.a.a.sendEmptyMessage(2);
  }

  public final void a(kw paramkw)
  {
    int i;
    if (paramkw.I() > 0L)
    {
      i = 0;
      if (i >= bpu.b(this.a).size())
        break label114;
      if (!((kw)bpu.c(this.a).get(i)).getPackageName().equals(paramkw.getPackageName()))
        break label108;
    }
    label108: label114: for (int j = 0; ; j = 1)
    {
      if (j != 0)
      {
        bpu.d(this.a).getAppInfo(paramkw, 1);
        paramkw.b(0);
        bpu.e(this.a).add(paramkw);
        bpu.f(this.a).sendEmptyMessage(-2);
      }
      return;
      i++;
      break;
    }
  }

  public final void b()
  {
    bpu.g(this.a).sendEmptyMessage(-2);
    this.a.a.sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpx
 * JD-Core Version:    0.6.2
 */