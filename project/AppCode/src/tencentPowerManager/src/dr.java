import android.content.Context;
import android.graphics.Rect;
import com.tencent.powermanager.uilib.view.fireflyView.FireflyPointView;
import java.util.ArrayList;

public final class dr
{
  public ArrayList<dr.a> a;
  public FireflyPointView b;
  public int c;
  private int d;
  private int e;
  private final Context f;

  public dr(int paramInt1, int paramInt2, Context paramContext)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.f = paramContext;
    this.a = new ArrayList();
    this.b = new FireflyPointView(this.f);
  }

  private int a(int paramInt1, dr.a parama, Rect paramRect1, Rect paramRect2, int paramInt2)
  {
    dr.a[] arrayOfa = new dr.a[4];
    arrayOfa[0] = parama;
    arrayOfa[1] = a();
    arrayOfa[2] = a();
    arrayOfa[3] = a();
    int i = 3 * (arrayOfa[1].a - arrayOfa[0].a);
    int j = 3 * (arrayOfa[2].a - arrayOfa[1].a) - i;
    int k = arrayOfa[3].a - arrayOfa[0].a - i - j;
    int m = 3 * (arrayOfa[1].b - arrayOfa[0].b);
    int n = 3 * (arrayOfa[2].b - arrayOfa[1].b) - m;
    int i1 = arrayOfa[3].b - arrayOfa[0].b - m - n;
    Rect localRect = new Rect(paramRect1);
    paramRect1.left -= this.b.a / 2;
    paramRect1.right -= this.b.a / 2;
    int i2 = paramInt1;
    dr.a locala;
    if ((i2 < 400.0F + paramInt1) && (i2 < 2000.0F))
    {
      float f1 = (float)(0.0025D * ((i2 - paramInt1) % 400.0F));
      float f2 = f1 * f1;
      float f3 = f2 * f1;
      int i3 = (int)(f3 * k + f2 * j + f1 * i + arrayOfa[0].a);
      locala = new dr.a((int)(f3 * i1 + f2 * n + f1 * m + arrayOfa[0].b));
      if (!paramRect2.contains(locala.a, locala.b))
        break label419;
      this.a.add(locala);
      int i5 = locala.b;
      while (i5 < paramInt2 - this.b.b)
      {
        i5 += 3;
        this.a.add(new dr.a(i5));
      }
      i2 = -1;
    }
    label419: label511: 
    while (true)
    {
      return i2;
      int i4;
      if ((locala.a < 0) || (locala.a > this.d))
        i4 = 1;
      while (true)
      {
        if ((i4 != 0) || (localRect.contains(locala.a, locala.b)))
          break label511;
        this.a.add(locala);
        i2++;
        break;
        if ((locala.b < 0) || (locala.b > this.e))
          i4 = 1;
        else
          i4 = 0;
      }
    }
  }

  private dr.a a()
  {
    return new dr.a((int)((1000.0D * Math.random() + this.e / 2) % this.e));
  }

  public final void a(Rect paramRect1, Rect paramRect2, int paramInt)
  {
    int i = (int)(10000.0D * Math.random());
    int j = (int)(10000.0D * Math.random());
    int k = i % this.d;
    int m = j % this.e;
    int n;
    int i1;
    label80: int i5;
    label105: int i2;
    label113: int i3;
    Object localObject1;
    label194: int i4;
    if (this.d - k < k)
    {
      n = this.d - k;
      if (this.e - m >= m)
        break label274;
      i1 = this.e - m;
      if (n >= i1)
        break label287;
      if (this.d - k >= k)
        break label281;
      i5 = this.d;
      k = i5;
      i2 = m;
      dr.a locala = new dr.a(i2);
      new StringBuilder("restrictRect::").append(paramRect1.left).append(", ").append(paramRect1.right).append(", ").append(paramRect1.top).append(", ").append(paramRect1.bottom).append(", ").toString();
      i3 = 0;
      localObject1 = locala;
      if (i3 >= 1200.0D)
        break label314;
      i4 = a(i3, (dr.a)localObject1, paramRect1, paramRect2, paramInt);
      if (this.a.size() <= 1)
        break label315;
    }
    label274: label281: label287: label314: label315: for (Object localObject2 = (dr.a)this.a.get(-1 + this.a.size()); ; localObject2 = localObject1)
    {
      if (i4 > i3)
      {
        i3 = i4;
        localObject1 = localObject2;
        break label194;
        n = k;
        break;
        i1 = m;
        break label80;
        i5 = 0;
        break label105;
        if (this.e - m < m)
        {
          i2 = this.e;
          break label113;
        }
        i2 = 0;
        break label113;
      }
      return;
    }
  }

  public final class a
  {
    public int a;
    public int b;

    public a(int arg2)
    {
      this.a = this$1;
      int i;
      this.b = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dr
 * JD-Core Version:    0.6.2
 */