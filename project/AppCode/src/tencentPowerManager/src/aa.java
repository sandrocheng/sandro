import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.tencent.powermanager.PowerManagerApplication;

public class aa extends SQLiteOpenHelper
{
  private static aa.c a;
  private static Looper b = null;

  public aa()
  {
    super(PowerManagerApplication.a(), "powermanager_asyn.db", null, 2);
    try
    {
      if (b == null)
      {
        HandlerThread localHandlerThread = new HandlerThread("DBHelperAsyn");
        localHandlerThread.start();
        b = localHandlerThread.getLooper();
      }
      if (a == null)
      {
        Looper localLooper = b;
        PowerManagerApplication.a();
        a = new aa.c(localLooper);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected static void a(String paramString, int paramInt, aa.a parama)
  {
    Message localMessage = a.obtainMessage(0);
    localMessage.arg1 = 0;
    aa.b localb = new aa.b();
    localb.h = paramString;
    localb.j = parama;
    localMessage.obj = localb;
    a.sendMessage(localMessage);
  }

  protected static void a(String paramString, ContentValues paramContentValues, aa.a parama)
  {
    Message localMessage = a.obtainMessage(0);
    localMessage.arg1 = 2;
    aa.b localb = new aa.b();
    localb.a = paramString;
    localb.i = paramContentValues;
    localb.j = parama;
    localMessage.obj = localb;
    a.sendMessage(localMessage);
  }

  protected static void a(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString, aa.a parama)
  {
    Message localMessage = a.obtainMessage(0);
    localMessage.arg1 = 4;
    aa.b localb = new aa.b();
    localb.a = paramString1;
    localb.i = paramContentValues;
    localb.c = paramString2;
    localb.d = paramArrayOfString;
    localb.j = parama;
    localMessage.obj = localb;
    a.sendMessage(localMessage);
  }

  protected static void a(String paramString1, String paramString2, String[] paramArrayOfString, aa.a parama)
  {
    Message localMessage = a.obtainMessage(0);
    localMessage.arg1 = 3;
    aa.b localb = new aa.b();
    localb.a = paramString1;
    localb.c = paramString2;
    localb.d = paramArrayOfString;
    localb.j = parama;
    localMessage.obj = localb;
    a.sendMessage(localMessage);
  }

  protected static void a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, aa.a parama)
  {
    Message localMessage = a.obtainMessage(0);
    localMessage.arg1 = 1;
    aa.b localb = new aa.b();
    localb.c = paramString2;
    localb.d = paramArrayOfString2;
    localb.b = paramArrayOfString1;
    localb.a = paramString1;
    localb.e = null;
    localb.f = null;
    localb.g = null;
    localb.j = parama;
    localMessage.obj = localb;
    a.sendMessage(localMessage);
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS savemode_table (_id INTEGER PRIMARY KEY,mode_name TEXT,brightness INTEGER,screen_time INTEGER,animation INTEGER,wifi_state BOOLEAN,network_state BOOLEAN,bluetooth_state BOOLEAN,auto_sync BOOLEAN,vibrate BOOLEAN,airplane_state INTERGER,haptic_feedback BOOLEAN)");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (paramInt2 > paramInt1)
    {
      if (paramInt1 <= 1)
        paramSQLiteDatabase.execSQL("ALTER TABLE savemode_table ADD COLUMN airplane_state INTEGER");
      onCreate(paramSQLiteDatabase);
    }
  }

  public static abstract class a
  {
    public void a()
    {
    }

    public void a(Cursor paramCursor)
    {
    }

    public void b()
    {
    }

    public void c()
    {
    }
  }

  public static final class b
  {
    public String a;
    public String[] b;
    public String c;
    public String[] d;
    public String e;
    public String f;
    public String g;
    public String h;
    public ContentValues i;
    public aa.a j;
  }

  public final class c extends Handler
  {
    public c(Looper arg2)
    {
      super();
    }

    public final void handleMessage(Message paramMessage)
    {
      while (true)
      {
        aa.b localb;
        aa.a locala;
        Object localObject3;
        Object localObject2;
        try
        {
          localb = (aa.b)paramMessage.obj;
          int i = paramMessage.arg1;
          locala = localb.j;
          switch (i)
          {
          case 0:
            if (localObject3 != null)
              ((Cursor)localObject3).close();
            if (localObject2 != null)
              ((SQLiteDatabase)localObject2).close();
            return;
            localObject2 = aa.this.getReadableDatabase();
            localObject3 = ((SQLiteDatabase)localObject2).rawQuery(localb.h, null);
            if (locala == null)
              continue;
            locala.a((Cursor)localObject3);
            continue;
          case 1:
          case 2:
          case 4:
          case 3:
          }
        }
        finally
        {
        }
        SQLiteDatabase localSQLiteDatabase2 = aa.this.getReadableDatabase();
        Cursor localCursor = localSQLiteDatabase2.query(localb.a, localb.b, localb.c, localb.d, null, null, null);
        if (locala != null)
        {
          locala.a(localCursor);
          localObject2 = localSQLiteDatabase2;
          localObject3 = localCursor;
          continue;
          SQLiteDatabase localSQLiteDatabase1 = aa.this.getWritableDatabase();
          localSQLiteDatabase1.insert(localb.a, null, localb.i);
          if (locala != null)
          {
            locala.a();
            localObject2 = localSQLiteDatabase1;
            localObject3 = null;
            continue;
            localSQLiteDatabase1 = aa.this.getWritableDatabase();
            localSQLiteDatabase1.update(localb.a, localb.i, localb.c, localb.d);
            if (locala != null)
            {
              locala.c();
              localObject2 = localSQLiteDatabase1;
              localObject3 = null;
              continue;
              localSQLiteDatabase1 = aa.this.getWritableDatabase();
              localSQLiteDatabase1.delete(localb.a, localb.c, localb.d);
              if (locala != null)
                locala.b();
            }
          }
          else
          {
            localObject2 = localSQLiteDatabase1;
            localObject3 = null;
          }
        }
        else
        {
          localObject2 = localSQLiteDatabase2;
          localObject3 = localCursor;
          continue;
          localObject3 = null;
          localObject2 = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     aa
 * JD-Core Version:    0.6.2
 */