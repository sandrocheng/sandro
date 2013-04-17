import android.database.sqlite.SQLiteOpenHelper;

final class ht
  implements Runnable
{
  ht(hs paramhs)
  {
  }

  public final void run()
  {
    if (!hs.a(this.a));
    synchronized (hs.c())
    {
      hs.b(this.a).close();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ht
 * JD-Core Version:    0.6.2
 */