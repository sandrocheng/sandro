package android.a;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;

public final class b
{
  private static final String a = "SqliteWrapper";
  private static final String b = "unable to open database file";

  public static int a(Context paramContext, ContentResolver paramContentResolver, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      int j = paramContentResolver.update(paramUri, paramContentValues, null, null);
      i = j;
      return i;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        Log.e("SqliteWrapper", "Catch a SQLiteException when update: ", localSQLiteException);
        a(paramContext, localSQLiteException);
        int i = -1;
      }
    }
  }

  private static int a(Context paramContext, ContentResolver paramContentResolver, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    try
    {
      int j = paramContentResolver.delete(paramUri, paramString, paramArrayOfString);
      i = j;
      return i;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        Log.e("SqliteWrapper", "Catch a SQLiteException when delete: ", localSQLiteException);
        a(paramContext, localSQLiteException);
        int i = -1;
      }
    }
  }

  public static Cursor a(Context paramContext, ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString)
  {
    try
    {
      Cursor localCursor2 = paramContentResolver.query(paramUri, paramArrayOfString, null, null, null);
      localCursor1 = localCursor2;
      return localCursor1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        Log.e("SqliteWrapper", "Catch a SQLiteException when query: ", localSQLiteException);
        a(paramContext, localSQLiteException);
        Cursor localCursor1 = null;
      }
    }
  }

  private static void a(Context paramContext, SQLiteException paramSQLiteException)
  {
    if (paramSQLiteException.getMessage().equals("unable to open database file"))
    {
      Toast.makeText(paramContext, "内存不足", 0).show();
      return;
    }
    throw paramSQLiteException;
  }

  private static boolean a(Context paramContext)
  {
    if (paramContext == null);
    ActivityManager.MemoryInfo localMemoryInfo;
    for (boolean bool = false; ; bool = localMemoryInfo.lowMemory)
    {
      return bool;
      ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
      localMemoryInfo = new ActivityManager.MemoryInfo();
      localActivityManager.getMemoryInfo(localMemoryInfo);
    }
  }

  private static boolean a(Context paramContext, Cursor paramCursor)
  {
    try
    {
      boolean bool2 = paramCursor.requery();
      bool1 = bool2;
      return bool1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        Log.e("SqliteWrapper", "Catch a SQLiteException when requery: ", localSQLiteException);
        a(paramContext, localSQLiteException);
        boolean bool1 = false;
      }
    }
  }

  private static boolean a(SQLiteException paramSQLiteException)
  {
    return paramSQLiteException.getMessage().equals("unable to open database file");
  }

  private static Uri b(Context paramContext, ContentResolver paramContentResolver, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      Uri localUri2 = paramContentResolver.insert(paramUri, paramContentValues);
      localUri1 = localUri2;
      return localUri1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        Log.e("SqliteWrapper", "Catch a SQLiteException when insert: ", localSQLiteException);
        a(paramContext, localSQLiteException);
        Uri localUri1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.a.b
 * JD-Core Version:    0.6.2
 */