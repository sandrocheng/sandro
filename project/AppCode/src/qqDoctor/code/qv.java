import java.io.File;

final class qv
  implements abu.a
{
  qv(qt paramqt, ma paramma)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    this.a.d = locallv.f;
    this.a.e = true;
    String str = dx.d + File.separator + parammp.g + ".png.temp";
    if (!new File(str).exists())
      a.a(locallv.f, str);
    this.b.a.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qv
 * JD-Core Version:    0.6.2
 */