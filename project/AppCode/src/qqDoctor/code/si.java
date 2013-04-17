import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.File;
import java.util.List;

public final class si
{
  public static si a;
  ik b;
  public sl c;
  private Handler d = new sj(this, QQPimApplication.a().getMainLooper());

  private si(Context paramContext)
  {
    this.b = new ik(paramContext);
  }

  public static si a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new si(paramContext);
      si localsi = a;
      return localsi;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private List<lu> b()
  {
    try
    {
      List localList = this.b.a;
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String a(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default:
      str = null;
    case 1201:
    case 1202:
    }
    while (true)
    {
      return str;
      str = "Android_Main";
      continue;
      str = "Android_Main_TopRight";
    }
  }

  public final lu a(String paramString)
  {
    while (true)
    {
      try
      {
        ik localik = this.b;
        int i = 0;
        if (i < localik.a.size())
        {
          if (((lu)localik.a.get(i)).c.equals(paramString))
          {
            locallu = (lu)localik.a.get(i);
            if ((locallu == null) || (!Environment.getExternalStorageState().equals("mounted")))
              break label300;
            if (!locallu.g)
              break label288;
            long l1 = System.currentTimeMillis();
            if (locallu.e >= l1)
            {
              long l2 = locallu.d;
              if (l2 <= l1)
                continue;
            }
            locallu = null;
            return locallu;
          }
          i++;
          continue;
        }
        locallu = null;
        continue;
        if (locallu.f != null)
          continue;
        String str = dx.b + File.separator + locallu.c.hashCode() + ".png.temp";
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inScaled = false;
        Bitmap localBitmap = BitmapFactory.decodeFile(str, localOptions);
        if (localBitmap != null)
        {
          localBitmapDrawable = new BitmapDrawable(localBitmap);
          localBitmapDrawable.setTargetDensity(QQPimApplication.a().getResources().getDisplayMetrics());
          if (localBitmapDrawable == null)
            break label276;
          locallu.f = localBitmapDrawable;
          this.b.b(locallu);
          continue;
        }
      }
      finally
      {
      }
      BitmapDrawable localBitmapDrawable = null;
      continue;
      label276: b(locallu);
      lu locallu = null;
      continue;
      label288: b(locallu);
      locallu = null;
      continue;
      label300: locallu = null;
    }
  }

  public final void a()
  {
    while (true)
    {
      int i;
      try
      {
        List localList = b();
        long l = System.currentTimeMillis();
        i = -1 + localList.size();
        if (i >= 0)
        {
          if (((lu)localList.get(i)).e < l)
          {
            lu locallu = (lu)localList.get(i);
            a.d(dx.b + File.separator + locallu.c + ".png.temp");
            ((lu)localList.get(i)).g = false;
            localList.remove(i);
          }
        }
        else
        {
          this.b.a();
          return;
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
      i--;
    }
  }

  public final void a(lu paramlu)
  {
    try
    {
      this.b.a(paramlu);
      Message localMessage = new Message();
      localMessage.obj = paramlu;
      this.d.sendMessage(localMessage);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void b(lu paramlu)
  {
    if (this.c == null)
      this.c = new sl();
    try
    {
      lv locallv = new lv();
      locallv.b = 0;
      locallv.g = paramlu.c.hashCode();
      locallv.d = paramlu.a;
      locallv.a = 0;
      locallv.i = new sk(this, paramlu);
      this.c.b(locallv);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     si
 * JD-Core Version:    0.6.2
 */