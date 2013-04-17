import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

final class ajq
  implements abu.a
{
  ajq(ajo paramajo)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    mq localmq = (mq)parammp;
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)localmq.b;
    int i = ajo.a(this.a, localmq.g);
    lr locallr = (lr)ajo.d(this.a).get(i);
    if (this.a.d())
    {
      if ((localBitmapDrawable != null) && (localBitmapDrawable.getBitmap() != null))
        localBitmapDrawable.getBitmap().recycle();
      for (locallr.c = false; ; locallr.c = true)
      {
        locallr.d = false;
        ajo.k(this.a);
        int j = ajo.a(this.a);
        if (j <= ajo.e())
          ajo.e(this.a).sendEmptyMessage(1);
        return;
      }
    }
    if ((i >= ajo.f(this.a).a) && (i <= ajo.f(this.a).b))
      if ((i < ajo.g(this.a).a) || (i > ajo.g(this.a).b))
        break label377;
    label377: for (boolean bool2 = true; ; bool2 = false)
    {
      boolean bool1;
      if (localBitmapDrawable != null)
      {
        if (ajo.h(this.a).size() >= 60)
        {
          Integer localInteger = Integer.valueOf(ajo.i(this.a));
          ajo.a(this.a, localInteger);
        }
        if (ajo.j(this.a).size() != ajo.h(this.a).size())
        {
          ajo.j(this.a);
          ajo.h(this.a);
        }
        ajo.a(this.a, localmq.g, i, localBitmapDrawable);
        locallr.c = false;
        bool1 = bool2;
      }
      while (true)
      {
        locallr.d = false;
        this.a.a(localmq, bool1);
        break;
        locallr.c = true;
        bool1 = bool2;
        continue;
        if ((localBitmapDrawable != null) && (localBitmapDrawable.getBitmap() != null))
        {
          localBitmapDrawable.getBitmap().recycle();
          locallr.c = false;
          bool1 = false;
        }
        else
        {
          locallr.c = true;
          bool1 = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajq
 * JD-Core Version:    0.6.2
 */