import android.os.SystemClock;
import com.tencent.tmsecure.exception.BadExpiryDataException;
import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.Array;
import java.security.SecureRandom;

final class bst
{
  int a;
  long b;
  long c;

  bst(boolean paramBoolean)
  {
    a.a(new Class[] { bsv.class });
    long l1 = SystemClock.uptimeMillis();
    long l2 = SDKUtil.getSDKVersion();
    long l3 = System.getProperty("os.version", "wtf").hashCode();
    SecureRandom localSecureRandom = new SecureRandom((l1 + l2 * l3).getBytes());
    int i;
    do
      i = 101 + localSecureRandom.nextInt(900);
    while (a(i));
    this.a = i;
    int j = this.a;
    int[] arrayOfInt1 = new int[100];
    double d = Math.sqrt(j);
    for (int k = -1 + (int)d; ; k++)
      if ((k + 1) * (k + 1) > j)
      {
        arrayOfInt1[0] = k;
        if (k * k != j)
          break;
        return;
      }
    int[] arrayOfInt2 = new int[5];
    arrayOfInt2[1] = 1;
    arrayOfInt2[2] = 0;
    arrayOfInt2[3] = (-arrayOfInt1[0]);
    arrayOfInt2[4] = 1;
    int[] arrayOfInt3 = { 100, 5 };
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt3);
    int m = 0;
    int n = 1;
    int i1 = 0;
    label235: label236: int i7;
    int i8;
    long l4;
    long l5;
    int i9;
    int i10;
    if (n >= 100)
    {
      break label455;
      i7 = m;
      i8 = n - 1;
      l4 = 0L;
      l5 = 1L;
      i9 = 0;
      i10 = 1;
    }
    while (true)
    {
      if ((l4 >= 200L) && (i9 != 0))
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = getClass();
        arrayOfClass[1] = bsv.class;
        a.a(arrayOfClass);
        this.b = l4;
        this.c = l5;
        a();
        break;
        if (arrayOfInt2[1] < 0)
        {
          arrayOfInt2[1] = (-arrayOfInt2[1]);
          arrayOfInt2[2] = (-arrayOfInt2[2]);
          arrayOfInt2[3] = (-arrayOfInt2[3]);
          arrayOfInt2[4] = (-arrayOfInt2[4]);
        }
        int i2 = a(a(a(arrayOfInt2[1], Math.abs(arrayOfInt2[2])), Math.abs(arrayOfInt2[3])), Math.abs(arrayOfInt2[4]));
        if (i2 > 1)
        {
          arrayOfInt2[1] /= i2;
          arrayOfInt2[2] /= i2;
          arrayOfInt2[3] /= i2;
          arrayOfInt2[4] /= i2;
        }
        for (m = 0; ; m++)
        {
          if (m >= i1)
          {
            label455: if (m < i1)
              break label236;
            arrayOfInt[i1][1] = arrayOfInt2[1];
            arrayOfInt[i1][2] = arrayOfInt2[2];
            arrayOfInt[i1][3] = arrayOfInt2[3];
            arrayOfInt[i1][4] = arrayOfInt2[4];
            i1++;
            arrayOfInt1[n] = ((int)Math.floor((arrayOfInt2[1] + d * arrayOfInt2[2]) / (arrayOfInt2[3] + d * arrayOfInt2[4])));
            int i3 = arrayOfInt1[n];
            arrayOfInt2[1] -= i3 * arrayOfInt2[3];
            arrayOfInt2[2] -= i3 * arrayOfInt2[4];
            int i4 = arrayOfInt2[1] * arrayOfInt2[3] - j * (arrayOfInt2[2] * arrayOfInt2[4]);
            int i5 = arrayOfInt2[1] * arrayOfInt2[4] - arrayOfInt2[2] * arrayOfInt2[3];
            int i6 = arrayOfInt2[1] * arrayOfInt2[1] - j * (arrayOfInt2[2] * arrayOfInt2[2]);
            arrayOfInt2[1] = i4;
            arrayOfInt2[2] = i5;
            arrayOfInt2[3] = i6;
            arrayOfInt2[4] = 0;
            n++;
            break;
          }
          int[] arrayOfInt4 = arrayOfInt[m];
          if ((arrayOfInt4[1] == arrayOfInt2[1]) && (arrayOfInt4[2] == arrayOfInt2[2]) && (arrayOfInt4[3] == arrayOfInt2[3]) && (arrayOfInt4[4] == arrayOfInt2[4]))
            break label235;
        }
      }
      int i11 = i10 + 1;
      l4 = 0L;
      int i12 = i11 - 1;
      l5 = 1L;
      if (i12 < 0)
      {
        if (l4 >= 1000000L)
          throw new RuntimeException();
      }
      else
      {
        if (i11 <= i8);
        for (int i13 = arrayOfInt1[i12]; ; i13 = arrayOfInt1[(i7 + (i12 - i7) % i8)])
        {
          long l6 = l5 + l4 * i13;
          i12--;
          l5 = l4;
          l4 = l6;
          break;
        }
      }
      long l7 = l4 * l4;
      long l8 = l5 * l5;
      long l9 = l8 * j;
      long l10 = 1000L * l7;
      if ((l4 >= 200L) && (999L * l9 < l10) && (l10 < l9 * 1001L) && (i9 == 0) && (((paramBoolean) && (l7 < l8 * j)) || ((!paramBoolean) && (l7 > l8 * j))))
      {
        i9 = 1;
        i10 = i11;
      }
      else
      {
        i10 = i11;
      }
    }
  }

  private static final int a(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    if (j == 0);
    while (true)
    {
      return i;
      if (i == 0)
      {
        i = j;
      }
      else
      {
        if (j < i)
        {
          int m = j;
          j = i;
          i = m;
          break;
        }
        int k;
        do
        {
          j = i;
          i = k;
          k = j % i;
        }
        while (k != 0);
      }
    }
  }

  private static final boolean a(int paramInt)
  {
    int i = -1 + (int)Math.sqrt(paramInt);
    if ((i + 1) * (i + 1) > paramInt)
      if (i * i != paramInt)
        break label37;
    label37: for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break;
    }
  }

  final void a()
    throws BadExpiryDataException
  {
    long l1 = this.a;
    long l2 = this.b;
    long l3 = this.c;
    if (l2 < 200L)
      throw new BadExpiryDataException();
    long l4 = l2 * l2;
    long l5 = l1 * (l3 * l3);
    long l6 = l5 * 1000L;
    long l7 = l4 * 1000L;
    if ((l7 <= l6 - l5) || (l7 >= l5 + l6))
      throw new BadExpiryDataException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bst
 * JD-Core Version:    0.6.2
 */