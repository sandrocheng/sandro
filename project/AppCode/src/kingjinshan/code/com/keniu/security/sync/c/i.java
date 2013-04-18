package com.keniu.security.sync.c;

import android.a.t;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.text.TextUtils;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.sync.r;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONObject;

public final class i extends g
{
  private int a;
  private String d;

  public i(Handler paramHandler, Context paramContext, int paramInt)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429553));
    this.a = paramInt;
  }

  protected final Integer a(String[] paramArrayOfString)
  {
    super.a(paramArrayOfString);
    String str1;
    if (this.a == 0)
      str1 = r.aI;
    while (true)
    {
      this.d = str1;
      try
      {
        String[] arrayOfString = { "type", "status", "read", "address", "date", "subject", "body" };
        Cursor localCursor = this.b.getContentResolver().query(t.a, arrayOfString, null, null, "date DESC");
        int i;
        label100: com.jxphone.mosecurity.c.l[] arrayOfl;
        int j;
        if (localCursor != null)
        {
          i = localCursor.getCount();
          arrayOfl = h.a(this.b).a(c.b);
          j = i + arrayOfl.length;
          b(j);
          if (!isCancelled())
            break label176;
          if (localCursor != null)
            localCursor.close();
          Integer localInteger2 = Integer.valueOf(-1);
          localObject = localInteger2;
        }
        while (true)
        {
          return localObject;
          str1 = r.aJ;
          break;
          i = 0;
          break label100;
          label176: JSONArray localJSONArray = new JSONArray();
          if ((localCursor == null) || (i <= 0))
            break label865;
          k = 1;
          while (true)
          {
            int m;
            int n;
            int i1;
            com.jxphone.mosecurity.c.l locall;
            JSONObject localJSONObject1;
            String str2;
            int i2;
            Integer localInteger1;
            if (localCursor.moveToNext())
            {
              JSONObject localJSONObject2 = new JSONObject();
              localJSONObject2.put("msg_type", 0);
              localJSONObject2.put("type", localCursor.getInt(localCursor.getColumnIndex("type")));
              localJSONObject2.put("status", localCursor.getInt(localCursor.getColumnIndex("status")));
              localJSONObject2.put("read", localCursor.getInt(localCursor.getColumnIndex("read")));
              String str3 = localCursor.getString(localCursor.getColumnIndex("address"));
              if (str3 == null)
                str3 = "";
              localJSONObject2.put("address", str3);
              localJSONObject2.put("date", localCursor.getLong(localCursor.getColumnIndex("date")));
              String str4 = localCursor.getString(localCursor.getColumnIndex("subject"));
              if (str4 == null)
                str4 = "";
              localJSONObject2.put("subject", str4);
              String str5 = localCursor.getString(localCursor.getColumnIndex("body"));
              if (str5 == null)
                str5 = "";
              localJSONObject2.put("body", str5);
              localJSONArray.put(localJSONObject2);
              k = 1 + localCursor.getPosition();
              a(k);
              Integer[] arrayOfInteger2 = new Integer[2];
              arrayOfInteger2[0] = Integer.valueOf(j);
              arrayOfInteger2[1] = Integer.valueOf(k);
              publishProgress(arrayOfInteger2);
              if (isCancelled())
              {
                if (localCursor != null)
                  localCursor.close();
                localObject = Integer.valueOf(-1);
                break;
              }
            }
          }
          if (localCursor != null)
            localCursor.close();
          m = arrayOfl.length;
          n = k;
          i1 = 0;
          if (i1 < m)
          {
            locall = arrayOfl[i1];
            localJSONObject1 = new JSONObject();
            localJSONObject1.put("msg_type", 1);
            localJSONObject1.put("id", locall.a());
            if (TextUtils.isEmpty(locall.b()));
            for (str2 = ""; ; str2 = locall.b())
            {
              localJSONObject1.put("address", str2);
              localJSONObject1.put("body", locall.c());
              localJSONObject1.put("date", locall.d());
              localJSONObject1.put("status", locall.g());
              localJSONObject1.put("type", locall.f());
              localJSONObject1.put("list_type", locall.e().ordinal());
              localJSONArray.put(localJSONObject1);
              i2 = n + 1;
              a(n);
              Integer[] arrayOfInteger1 = new Integer[2];
              arrayOfInteger1[0] = Integer.valueOf(j);
              arrayOfInteger1[1] = Integer.valueOf(i2);
              publishProgress(arrayOfInteger1);
              if (!isCancelled())
                break label871;
              localObject = Integer.valueOf(-1);
              break;
            }
          }
          if (!com.keniu.security.sync.l.a(localJSONArray.toString(), this.d))
          {
            localObject = Integer.valueOf(-10015);
          }
          else if (com.keniu.security.sync.l.a(this.d, r.aK, true))
          {
            new File(r.aK).delete();
            localObject = Integer.valueOf(j);
          }
          else
          {
            new File(r.aK).delete();
            localInteger1 = Integer.valueOf(-10016);
            localObject = localInteger1;
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          Object localObject = Integer.valueOf(-10017);
          continue;
          label865: int k = 1;
          continue;
          label871: i1++;
          n = i2;
        }
      }
    }
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    com.keniu.security.sync.i.a(this, ">>>>> result#" + paramInteger);
    if (paramInteger.intValue() != -1)
      this.c.sendMessage(this.c.obtainMessage(1, paramInteger));
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    b(100);
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.i
 * JD-Core Version:    0.6.2
 */