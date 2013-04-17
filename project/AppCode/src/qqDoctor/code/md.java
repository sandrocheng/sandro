import android.content.Context;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class md
  implements Serializable
{
  public static final byte[] a = { 0, 1, 2, 4, 5 };
  private static final int[] g = { 0, 3, 5, 2 };
  public int b;
  public String c;
  public String d;
  public int e;
  public List<Integer> f = new ArrayList();

  public md(int paramInt)
  {
    this.b = paramInt;
    switch (paramInt)
    {
    case 3:
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      this.f = b(paramInt);
      return;
      this.c = QQPimApplication.a().getString(2131429080);
      this.d = QQPimApplication.a().getString(2131429090);
      this.e = 2130837958;
      continue;
      this.c = QQPimApplication.a().getString(2131429085);
      this.d = QQPimApplication.a().getString(2131429091);
      this.e = 2130837984;
      continue;
      this.c = QQPimApplication.a().getString(2131429083);
      this.d = QQPimApplication.a().getString(2131429092);
      this.e = 2130837990;
      continue;
      this.c = QQPimApplication.a().getString(2131429088);
      this.d = QQPimApplication.a().getString(2131429094);
      this.e = 2130837967;
      continue;
      this.c = QQPimApplication.a().getString(2131429089);
      this.d = QQPimApplication.a().getString(2131429095);
      this.e = 2130837994;
    }
  }

  public static String a(int paramInt)
  {
    String str = null;
    switch (paramInt)
    {
    case 3:
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      return str;
      str = QQPimApplication.a().getString(2131429080);
      continue;
      str = QQPimApplication.a().getString(2131429085);
      continue;
      str = QQPimApplication.a().getString(2131429083);
      continue;
      str = QQPimApplication.a().getString(2131429088);
      continue;
      str = QQPimApplication.a().getString(2131429089);
    }
  }

  public static List<Integer> b(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    switch (paramInt)
    {
    case 3:
    default:
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      return localArrayList;
      int[] arrayOfInt = g;
      int i = arrayOfInt.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(Integer.valueOf(arrayOfInt[j]));
      localArrayList.add(Integer.valueOf(11));
      continue;
      localArrayList.add(Integer.valueOf(1));
      localArrayList.add(Integer.valueOf(4));
      continue;
      localArrayList.add(Integer.valueOf(10));
      continue;
      localArrayList.add(Integer.valueOf(6));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     md
 * JD-Core Version:    0.6.2
 */