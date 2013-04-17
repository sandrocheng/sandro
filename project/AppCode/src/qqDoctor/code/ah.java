import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;

public final class ah
  implements w
{
  public final y a(Context paramContext, boolean paramBoolean)
    throws s
  {
    Cursor localCursor = paramContext.getApplicationContext().getContentResolver().query(gu.b, null, null, null, null);
    int j;
    Object localObject2;
    Object localObject1;
    if (localCursor != null)
    {
      int i = localCursor.getColumnIndex("band");
      j = localCursor.getColumnIndex("phonetype");
      if (i >= 0)
      {
        localObject2 = new ad();
        localObject1 = new af();
        localCursor.close();
      }
    }
    while (true)
    {
      y localy = null;
      if (localObject2 != null)
      {
        localy = ((y)localObject2).a(paramContext, paramBoolean);
        if (localy == null)
          localy = ((y)localObject1).a(paramContext, paramBoolean);
      }
      return localy;
      if (j >= 0)
      {
        localObject2 = new ae();
        localObject1 = new ag();
        break;
      }
      localObject1 = null;
      localObject2 = null;
      break;
      localObject1 = null;
      localObject2 = null;
    }
  }

  public final v[] d()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ah
 * JD-Core Version:    0.6.2
 */