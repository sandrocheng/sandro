package android.support.v4.a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public class f extends a
{
  final n f = new n(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;

  public f(Context paramContext)
  {
    super(paramContext);
  }

  public f(Context paramContext, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    super(paramContext);
    this.g = paramUri;
    this.h = paramArrayOfString1;
    this.i = paramString1;
    this.j = paramArrayOfString2;
    this.k = paramString2;
  }

  public void a(Cursor paramCursor)
  {
    if (n())
      if (paramCursor != null)
        paramCursor.close();
    while (true)
    {
      return;
      Cursor localCursor = this.l;
      this.l = paramCursor;
      if (l())
        super.b(paramCursor);
      if ((localCursor != null) && (localCursor != paramCursor) && (!localCursor.isClosed()))
        localCursor.close();
    }
  }

  void a(Cursor paramCursor, ContentObserver paramContentObserver)
  {
    paramCursor.registerContentObserver(this.f);
  }

  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(this.g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(this.h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(this.i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(this.j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(this.k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(this.l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(this.s);
  }

  public void b(Cursor paramCursor)
  {
    if ((paramCursor != null) && (!paramCursor.isClosed()))
      paramCursor.close();
  }

  public Cursor f()
  {
    Cursor localCursor = j().getContentResolver().query(this.g, this.h, this.i, this.j, this.k);
    if (localCursor != null)
    {
      localCursor.getCount();
      a(localCursor, this.f);
    }
    return localCursor;
  }

  protected void g()
  {
    if (this.l != null)
      a(this.l);
    if ((u()) || (this.l == null))
      p();
  }

  protected void h()
  {
    b();
  }

  protected void i()
  {
    super.i();
    h();
    if ((this.l != null) && (!this.l.isClosed()))
      this.l.close();
    this.l = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.f
 * JD-Core Version:    0.6.2
 */