import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;

public final class hn
{
  public hs a;

  public hn()
  {
    QQPimApplication.a();
    this.a = hs.a();
  }

  public hn(byte paramByte)
  {
    this.a = hs.a();
  }

  public final void a(long paramLong)
  {
    this.a.a("color_egg_activity_config", "end_time<" + paramLong, null);
    this.a.a("lottery_color_egg_config", "end_time<" + paramLong, null);
    this.a.a("normal_color_egg_config", "end_time<" + paramLong, null);
    this.a.b();
  }

  public final void a(lx paramlx)
  {
    if (a(paramlx.b, "lottery_color_egg_config", "id"))
      b(paramlx.b, "lottery_color_egg_config", "id");
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", paramlx.b);
    localContentValues.put("tips_id", paramlx.a);
    localContentValues.put("bitmap_url", paramlx.c);
    if (paramlx.e);
    for (int i = 1; ; i = 0)
    {
      localContentValues.put("is_has_bitmap", Integer.valueOf(i));
      localContentValues.put("toast", paramlx.g);
      localContentValues.put("track", Integer.valueOf(paramlx.f));
      localContentValues.put("end_time", Long.valueOf(paramlx.j));
      localContentValues.put("get_prize_url", paramlx.h);
      localContentValues.put("check_url", paramlx.i);
      localContentValues.put("prize_id", paramlx.k);
      this.a.a("lottery_color_egg_config", null, localContentValues);
      this.a.b();
      return;
    }
  }

  public final void a(ma paramma)
  {
    int i = 1;
    if (a(paramma.b, "normal_color_egg_config", "value_n"))
      b(paramma.b, "normal_color_egg_config", "value_n");
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("value_n", Integer.valueOf(paramma.b));
    localContentValues.put("tips_id", paramma.a);
    localContentValues.put("bitmap_url", paramma.c);
    int j;
    if (paramma.e)
    {
      j = i;
      localContentValues.put("is_has_bitmap", Integer.valueOf(j));
      localContentValues.put("weibo_share_wording", paramma.j);
      localContentValues.put("weibo_share_content", paramma.i);
      localContentValues.put("toast", paramma.g);
      localContentValues.put("track", Integer.valueOf(paramma.f));
      localContentValues.put("end_time", Long.valueOf(paramma.k));
      if (!paramma.h)
        break label190;
    }
    while (true)
    {
      localContentValues.put("is_share_weibo", Integer.valueOf(i));
      this.a.a("normal_color_egg_config", null, localContentValues);
      this.a.b();
      return;
      j = 0;
      break;
      label190: i = 0;
    }
  }

  public final boolean a(String paramString1, String paramString2, String paramString3)
  {
    Cursor localCursor = this.a.a(paramString2, null, paramString3 + "='" + paramString1 + "'", null, null, null, null);
    boolean bool;
    if (localCursor == null)
    {
      this.a.b();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (localCursor.getCount() <= 0)
      {
        this.a.b();
        localCursor.close();
        bool = false;
      }
      else
      {
        this.a.b();
        localCursor.close();
        bool = true;
      }
    }
  }

  public final void b(String paramString1, String paramString2, String paramString3)
  {
    this.a.a(paramString2, paramString3 + "='" + paramString1 + "'", null);
    this.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hn
 * JD-Core Version:    0.6.2
 */