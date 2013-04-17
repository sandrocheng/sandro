import java.io.Serializable;
import java.util.List;

public final class mu
  implements Serializable
{
  public long a = 0L;
  public int b = 0;
  public String c;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  public int g = 0;
  public String h;
  public List<ms> i = null;

  public mu()
  {
  }

  public mu(long paramLong, int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5, List<ms> paramList)
  {
    this.a = paramLong;
    this.b = paramInt1;
    this.c = paramString;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    this.g = paramInt5;
    this.i = paramList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mu
 * JD-Core Version:    0.6.2
 */