package com.avast.android.generic.notification;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import com.avast.android.generic.e;
import java.util.LinkedList;
import java.util.Map;

class k extends AsyncTask
{
  k(j paramj)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    Cursor localCursor = j.b(this.a).getContentResolver().query(e.a(j.a(this.a)), null, null, null, null);
    while (localCursor != null)
      try
      {
        if (localCursor.moveToNext())
        {
          a locala = new a(localCursor);
          try
          {
            j.c(this.a).add(Long.valueOf(locala.a));
            j.d(this.a).put(Long.valueOf(locala.a), locala);
          }
          finally
          {
            localObject2 = finally;
            throw localObject2;
          }
        }
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    if (localCursor != null)
      localCursor.close();
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.k
 * JD-Core Version:    0.6.2
 */