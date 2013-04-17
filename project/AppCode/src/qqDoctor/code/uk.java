import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.ArrayList;

public final class uk extends abu
{
  private static String d = "MMSThumbnailLoaderService";
  private final Handler e = new Handler();

  public final void a(mp parammp)
  {
    if (parammp == null)
      return;
    fo localfo = (fo)parammp;
    ArrayList localArrayList = new ArrayList();
    int i = localfo.b.size();
    int j = 0;
    label30: adg localadg;
    int k;
    int m;
    uk.a locala;
    int n;
    label201: Bitmap localBitmap1;
    if (j < i)
      if ((((adg)localfo.b.get(j)).b() != 0) && (((adg)localfo.b.get(j)).b() != 4) && (((adg)localfo.b.get(j)).b() != 5))
      {
        localadg = (adg)localfo.b.get(j);
        if (localadg.b() != 1)
          break label301;
        Bitmap localBitmap3 = BitmapFactory.decodeFile(((adh)localadg).e());
        k = localBitmap3.getWidth();
        m = localBitmap3.getHeight();
        localBitmap3.recycle();
        locala = new uk.a();
        n = ft.d(TMSApplication.getApplicaionContext());
        if (k < m)
          break label274;
        locala.a = (n * 3 / 5);
        locala.b = (3 * (m * n) / (k * 5));
        localBitmap1 = gz.a(((adh)localadg).e(), locala.a, locala.b);
      }
    while (true)
    {
      label224: Bitmap localBitmap2;
      if (localBitmap1 == null)
        if (((adg)localfo.b.get(j)).b() == 2)
          localBitmap2 = BitmapFactory.decodeResource(QQPimApplication.a().getResources(), 2130838042);
      while (true)
      {
        localArrayList.add(localBitmap2);
        j++;
        break label30;
        label274: locala.a = (n / 3);
        locala.b = (m * n / (k * 3));
        break label201;
        label301: if (localadg.b() == 3)
        {
          localBitmap1 = gz.b(((adm)localadg).e(), 200, 100);
          break label224;
        }
        if (localadg.b() != 2)
          break label419;
        localBitmap1 = null;
        break label224;
        if (((adg)localfo.b.get(j)).b() == 3)
        {
          localBitmap2 = BitmapFactory.decodeResource(QQPimApplication.a().getResources(), 2130838355);
          continue;
          if (localArrayList.size() <= 0)
            break;
          localfo.a = localArrayList;
          this.e.post(new ul(localfo));
          break;
        }
        localBitmap2 = localBitmap1;
      }
      label419: localBitmap1 = null;
    }
  }

  protected final void b()
  {
    super.b();
  }

  final class a
  {
    int a;
    int b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     uk
 * JD-Core Version:    0.6.2
 */