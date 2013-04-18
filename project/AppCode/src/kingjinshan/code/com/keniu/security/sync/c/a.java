package com.keniu.security.sync.c;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import com.keniu.security.sync.d;
import com.keniu.security.sync.i;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONObject;

public final class a extends g
{
  int a = 0;
  private d d;
  private int e;
  private String f;

  public a(Handler paramHandler, Context paramContext, int paramInt)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429552));
    this.d = r.a(paramContext);
    this.e = paramInt;
  }

  private int a(Cursor paramCursor, int paramInt)
  {
    JSONArray localJSONArray = new JSONArray();
    try
    {
      do
      {
        if (!paramCursor.moveToNext())
          break;
        JSONObject localJSONObject = this.d.a(paramCursor);
        if (localJSONObject != null)
          localJSONArray.put(localJSONObject);
        this.a = (1 + paramCursor.getPosition());
        a(this.a);
        Integer[] arrayOfInteger = new Integer[2];
        arrayOfInteger[0] = Integer.valueOf(paramInt);
        arrayOfInteger[1] = Integer.valueOf(this.a);
        publishProgress(arrayOfInteger);
      }
      while (!isCancelled());
      if (paramCursor != null)
        paramCursor.close();
      i = -1;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        int i = -10014;
        continue;
        if (!r.a(localJSONArray, this.f))
          i = -10015;
        else if (!l.a(this.f, r.aE, false))
          i = -10016;
        else if (!l.c(this.f))
          i = -10016;
        else
          i = 0;
      }
    }
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    String str;
    Cursor localCursor;
    Integer localInteger;
    if (this.e == 0)
    {
      str = r.aC;
      this.f = str;
      localCursor = this.d.b();
      if (localCursor != null)
        break label54;
      localInteger = Integer.valueOf(-10013);
    }
    while (true)
    {
      return localInteger;
      str = r.aD;
      break;
      label54: int i = localCursor.getCount();
      this.a = 1;
      b(i);
      File localFile = new File(this.f).getParentFile();
      if (!localFile.exists())
        localFile.mkdirs();
      if (isCancelled())
      {
        if (localCursor != null)
          localCursor.close();
        localInteger = Integer.valueOf(-1);
      }
      else
      {
        int j = a(localCursor, i);
        new File(r.aE).delete();
        if (j != 0)
        {
          localInteger = Integer.valueOf(j);
        }
        else
        {
          localCursor.close();
          localInteger = Integer.valueOf(i);
        }
      }
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> result#" + paramInteger);
    if (paramInteger.intValue() != -1)
      this.c.sendMessage(this.c.obtainMessage(0, paramInteger));
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.a
 * JD-Core Version:    0.6.2
 */