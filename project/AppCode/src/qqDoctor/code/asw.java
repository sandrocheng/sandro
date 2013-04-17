import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class asw extends ask
{
  private if f = new if();
  private String g;
  private int h;

  public asw(Context paramContext, int paramInt, String paramString, Handler paramHandler)
  {
    super(paramContext, "FileSafeFileScanHandlerThread", 500L, paramHandler);
    this.g = paramString;
    this.d = paramInt;
  }

  private void e(File paramFile)
  {
    this.h = paramFile.getAbsolutePath().toLowerCase().hashCode();
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        this.e.addFirst(arrayOfFile[j]);
    }
  }

  protected final lr a(lr paramlr, File paramFile)
  {
    ln localln = (ln)paramlr;
    lo locallo = new lo();
    locallo.a(localln.b());
    locallo.b(localln.c());
    locallo.a(localln.d());
    locallo.b(localln.e());
    locallo.a(localln.a());
    locallo.f = locallo.b().hashCode();
    return locallo;
  }

  protected final lr b(lr paramlr, File paramFile)
  {
    ln localln = (ln)paramlr;
    lo locallo = new lo();
    locallo.a(localln.b());
    locallo.b(localln.c());
    locallo.a(localln.a());
    locallo.a(paramFile.lastModified());
    locallo.b("");
    locallo.f = locallo.b().hashCode();
    this.f.a(localln, localln.b());
    return locallo;
  }

  protected final boolean b(File paramFile)
  {
    if ((paramFile.isDirectory()) || (paramFile.isHidden()) || (!a(paramFile)));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  protected final lr c(File paramFile)
  {
    lo locallo = new lo();
    locallo.a(paramFile.getAbsolutePath());
    locallo.a(this.h);
    locallo.b(this.d);
    locallo.a(paramFile.lastModified());
    locallo.b("");
    locallo.f = locallo.b().hashCode();
    if localif = this.f;
    ContentValues localContentValues = new ContentValues();
    if.a(localContentValues, locallo);
    if (localif.a.a("filesafe_scanned_file", null, localContentValues) == -1L)
      localif.a.a("filesafe_scanned_file", null, localContentValues);
    localif.a.b();
    return locallo;
  }

  protected final void d(File paramFile)
  {
  }

  protected final void f()
  {
    this.b = System.currentTimeMillis();
    e(new File(this.g));
    if localif = this.f;
    int i = this.h;
    int j = this.d;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = String.valueOf(i);
    arrayOfString[1] = String.valueOf(j);
    List localList = localif.a("filesafe_scanned_file", "bucket_id=? and type=?", arrayOfString, "id ASC");
    this.c.clear();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ln localln = (ln)localIterator.next();
        ask.a locala = new ask.a(localln);
        this.c.put(localln.b(), locala);
      }
    }
  }

  protected final void g()
  {
    long l = System.currentTimeMillis();
    new StringBuilder("Scan Time:").append(l - this.b).toString();
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext())
    {
      ask.a locala = (ask.a)localIterator.next();
      if (locala.b)
      {
        if localif = this.f;
        String str = locala.a.b();
        localif.a.a("filesafe_scanned_file", "fullpath=?", new String[] { str });
        if (!locala.a.e().equals(""))
          a.d(a(this.d) + locala.a.e());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asw
 * JD-Core Version:    0.6.2
 */