import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class qt
{
  private static qt c;
  public hn a = new hn((byte)0);
  sl b;
  private Handler d = new qu(this, QQPimApplication.a().getMainLooper());

  private qt(Context paramContext)
  {
  }

  private lx a(String paramString)
  {
    label512: 
    while (true)
    {
      lx locallx;
      try
      {
        hn localhn = this.a;
        Cursor localCursor = localhn.a.a("lottery_color_egg_config", null, "id='" + paramString + "'", null, null, null, null);
        if (localCursor == null)
        {
          localhn.a.b();
          locallx = null;
          if ((locallx == null) || (!Environment.getExternalStorageState().equals("mounted")))
            break label512;
          if (!locallx.e)
            break label474;
          long l1 = System.currentTimeMillis();
          long l2 = locallx.j;
          if (l2 >= l1)
            break label403;
          locallx = null;
          return locallx;
        }
        if (localCursor.getCount() <= 0)
        {
          localhn.a.b();
          localCursor.close();
          locallx = null;
          continue;
        }
        localCursor.moveToFirst();
        locallx = new lx();
        locallx.b = localCursor.getString(localCursor.getColumnIndex("id"));
        locallx.a = localCursor.getString(localCursor.getColumnIndex("tips_id"));
        locallx.c = localCursor.getString(localCursor.getColumnIndex("bitmap_url"));
        if (localCursor.getInt(localCursor.getColumnIndex("is_has_bitmap")) > 0)
        {
          locallx.e = true;
          locallx.g = localCursor.getString(localCursor.getColumnIndex("toast"));
          locallx.f = localCursor.getInt(localCursor.getColumnIndex("track"));
          locallx.j = localCursor.getLong(localCursor.getColumnIndex("end_time"));
          locallx.h = localCursor.getString(localCursor.getColumnIndex("get_prize_url"));
          locallx.i = localCursor.getString(localCursor.getColumnIndex("check_url"));
          locallx.k = localCursor.getString(localCursor.getColumnIndex("prize_id"));
          localhn.a.b();
          localCursor.close();
          continue;
        }
      }
      finally
      {
      }
      locallx.e = false;
      continue;
      label403: if (locallx.d == null)
      {
        Drawable localDrawable = c(locallx.c);
        if (localDrawable != null)
        {
          locallx.d = localDrawable;
        }
        else
        {
          Message localMessage2 = new Message();
          localMessage2.what = 1;
          localMessage2.obj = locallx;
          this.d.sendMessage(localMessage2);
          locallx = null;
          continue;
          label474: Message localMessage1 = new Message();
          localMessage1.what = 1;
          localMessage1.obj = locallx;
          this.d.sendMessage(localMessage1);
          locallx = null;
          continue;
          locallx = null;
        }
      }
    }
  }

  public static qt a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new qt(paramContext);
      qt localqt = c;
      return localqt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private ld b(String paramString)
  {
    while (true)
    {
      try
      {
        hn localhn = this.a;
        Cursor localCursor = localhn.a.a("color_egg_activity_config", null, "id='" + paramString + "'", null, null, null, null);
        if (localCursor == null)
        {
          localhn.a.b();
          localld = null;
          return localld;
        }
        if (localCursor.getCount() <= 0)
        {
          localhn.a.b();
          localCursor.close();
          localld = null;
          continue;
        }
        localCursor.moveToFirst();
        ld localld = new ld();
        localld.b = localCursor.getString(localCursor.getColumnIndex("id"));
        localld.a = localCursor.getString(localCursor.getColumnIndex("tips_id"));
        localld.c = localCursor.getString(localCursor.getColumnIndex("toast"));
        localld.f = localCursor.getLong(localCursor.getColumnIndex("end_time"));
        if (localCursor.getInt(localCursor.getColumnIndex("is_had_show")) > 0)
        {
          bool = true;
          localld.e = bool;
          localld.d = localCursor.getString(localCursor.getColumnIndex("url"));
          localhn.a.b();
          localCursor.close();
          continue;
        }
      }
      finally
      {
      }
      boolean bool = false;
    }
  }

  private static Drawable c(String paramString)
  {
    String str = dx.d + File.separator + paramString.hashCode() + ".png.temp";
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inScaled = false;
    Bitmap localBitmap = BitmapFactory.decodeFile(str, localOptions);
    BitmapDrawable localBitmapDrawable;
    if (localBitmap != null)
    {
      localBitmapDrawable = new BitmapDrawable(localBitmap);
      localBitmapDrawable.setTargetDensity(QQPimApplication.a().getResources().getDisplayMetrics());
    }
    while (true)
    {
      return localBitmapDrawable;
      localBitmapDrawable = null;
    }
  }

  public final List<lx> a()
  {
    while (true)
    {
      hn localhn;
      Cursor localCursor;
      ArrayList localArrayList1;
      try
      {
        long l = System.currentTimeMillis();
        this.a.a(l);
        localhn = this.a;
        localCursor = localhn.a.a("SELECT id FROM lottery_color_egg_config");
        if (localCursor == null)
        {
          localhn.a.b();
          localObject2 = null;
          localObject3 = null;
          if (localObject2 != null)
          {
            int i = localObject2.size();
            localObject3 = null;
            if (i != 0)
              break label199;
          }
          return localObject3;
        }
        if (localCursor.getCount() <= 0)
        {
          localhn.a.b();
          localCursor.close();
          localObject2 = null;
          continue;
        }
        localCursor.moveToFirst();
        localArrayList1 = new ArrayList();
        if (!localCursor.isAfterLast())
        {
          localArrayList1.add(localCursor.getString(localCursor.getColumnIndex("id")));
          localCursor.moveToNext();
          continue;
        }
      }
      finally
      {
      }
      localCursor.close();
      localhn.a.b();
      Object localObject2 = localArrayList1;
      continue;
      label199: ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localObject2.iterator();
      while (localIterator.hasNext())
        localArrayList2.add(a((String)localIterator.next()));
      Object localObject3 = localArrayList2;
    }
  }

  public final ma a(int paramInt)
  {
    while (true)
    {
      ma localma;
      try
      {
        hn localhn1 = this.a;
        Cursor localCursor = localhn1.a.a("normal_color_egg_config", null, "value_n=" + paramInt, null, null, null, null);
        if (localCursor == null)
        {
          localhn1.a.b();
          localma = null;
          if (localma != null)
            break label384;
          localma = null;
          return localma;
        }
        if (localCursor.getCount() <= 0)
        {
          localhn1.a.b();
          localCursor.close();
          localma = null;
          continue;
        }
        localCursor.moveToFirst();
        localma = new ma();
        localma.b = String.valueOf(localCursor.getInt(localCursor.getColumnIndex("value_n")));
        localma.a = String.valueOf(localCursor.getString(localCursor.getColumnIndex("tips_id")));
        localma.c = localCursor.getString(localCursor.getColumnIndex("bitmap_url"));
        if (localCursor.getInt(localCursor.getColumnIndex("is_has_bitmap")) > 0)
        {
          localma.e = true;
          localma.j = localCursor.getString(localCursor.getColumnIndex("weibo_share_wording"));
          localma.i = localCursor.getString(localCursor.getColumnIndex("weibo_share_content"));
          localma.g = localCursor.getString(localCursor.getColumnIndex("toast"));
          localma.f = localCursor.getInt(localCursor.getColumnIndex("track"));
          localma.k = localCursor.getLong(localCursor.getColumnIndex("end_time"));
          if (localCursor.getInt(localCursor.getColumnIndex("is_share_weibo")) <= 0)
            break label375;
          localma.h = true;
          localhn1.a.b();
          localCursor.close();
          continue;
        }
      }
      finally
      {
      }
      localma.e = false;
      continue;
      label375: localma.h = false;
      continue;
      label384: if (localma.k < System.currentTimeMillis())
      {
        hn localhn2 = this.a;
        int i = Integer.valueOf(localma.b).intValue();
        localhn2.a.a("normal_color_egg_config", "value_n=" + i, null);
        localhn2.a.b();
        localma = null;
      }
      else if (Environment.getExternalStorageState().equals("mounted"))
      {
        if (localma.e)
        {
          long l = System.currentTimeMillis();
          if (localma.k < l)
          {
            localma = null;
          }
          else if (localma.d == null)
          {
            Drawable localDrawable = c(localma.c);
            if (localDrawable != null)
            {
              localma.d = localDrawable;
            }
            else
            {
              Message localMessage2 = new Message();
              localMessage2.what = 0;
              localMessage2.obj = localma;
              this.d.sendMessage(localMessage2);
              localma = null;
            }
          }
        }
        else
        {
          Message localMessage1 = new Message();
          localMessage1.what = 0;
          localMessage1.obj = localma;
          this.d.sendMessage(localMessage1);
          localma = null;
        }
      }
    }
  }

  public final void a(ld paramld)
  {
    try
    {
      hn localhn = this.a;
      if (localhn.a(paramld.b, "color_egg_activity_config", "id"))
        localhn.b(paramld.b, "color_egg_activity_config", "id");
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("id", paramld.b);
      localContentValues.put("tips_id", paramld.a);
      localContentValues.put("toast", paramld.c);
      localContentValues.put("end_time", Long.valueOf(paramld.f));
      if (paramld.e)
      {
        i = 1;
        localContentValues.put("is_had_show", Integer.valueOf(i));
        localContentValues.put("url", paramld.d);
        localhn.a.a("color_egg_activity_config", null, localContentValues);
        localhn.a.b();
        return;
      }
      int i = 0;
    }
    finally
    {
    }
  }

  public final void a(lx paramlx)
  {
    try
    {
      this.a.a(paramlx);
      Message localMessage = new Message();
      localMessage.what = 1;
      localMessage.obj = paramlx;
      this.d.sendMessage(localMessage);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(ma paramma)
  {
    try
    {
      this.a.a(paramma);
      Message localMessage = new Message();
      localMessage.what = 0;
      localMessage.obj = paramma;
      this.d.sendMessage(localMessage);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List<ld> b()
  {
    while (true)
    {
      hn localhn;
      Cursor localCursor;
      ArrayList localArrayList1;
      try
      {
        long l = System.currentTimeMillis();
        this.a.a(l);
        localhn = this.a;
        localCursor = localhn.a.a("SELECT id FROM color_egg_activity_config");
        if (localCursor == null)
        {
          localhn.a.b();
          localObject2 = null;
          localObject3 = null;
          if (localObject2 != null)
          {
            int i = localObject2.size();
            localObject3 = null;
            if (i != 0)
              break label199;
          }
          return localObject3;
        }
        if (localCursor.getCount() <= 0)
        {
          localhn.a.b();
          localCursor.close();
          localObject2 = null;
          continue;
        }
        localCursor.moveToFirst();
        localArrayList1 = new ArrayList();
        if (!localCursor.isAfterLast())
        {
          localArrayList1.add(localCursor.getString(localCursor.getColumnIndex("id")));
          localCursor.moveToNext();
          continue;
        }
      }
      finally
      {
      }
      localCursor.close();
      localhn.a.b();
      Object localObject2 = localArrayList1;
      continue;
      label199: ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = localObject2.iterator();
      while (localIterator.hasNext())
        localArrayList2.add(b((String)localIterator.next()));
      Object localObject3 = localArrayList2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qt
 * JD-Core Version:    0.6.2
 */