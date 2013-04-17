import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

public abstract class bt
  implements cb
{
  private ContentResolver a;

  protected bt(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }

  public static cb a(Context paramContext)
  {
    if (de.g());
    for (Object localObject = bu.b(paramContext); ; localObject = bv.b(paramContext))
      return localObject;
  }

  private static String b(String[] paramArrayOfString, boolean paramBoolean)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.setLength(0);
    if (paramBoolean)
      for (int k = -1 + paramArrayOfString.length; ; k--)
      {
        if (k <= 0)
        {
          localStringBuilder.append("PHONE_NUMBERS_EQUAL(");
          localStringBuilder.append(paramArrayOfString[k]);
          localStringBuilder.append(",");
          localStringBuilder.append("address");
          localStringBuilder.append(")");
          return localStringBuilder.toString();
        }
        localStringBuilder.append("PHONE_NUMBERS_EQUAL(");
        localStringBuilder.append(paramArrayOfString[k]);
        localStringBuilder.append(",");
        localStringBuilder.append("address");
        localStringBuilder.append(") OR ");
      }
    int j = paramArrayOfString.length;
    localStringBuilder.append("thread_id IN(");
    while (true)
    {
      if (i >= j)
      {
        localStringBuilder.append(')');
        break;
      }
      if (i != 0)
        localStringBuilder.append(',');
      localStringBuilder.append('?');
      i++;
    }
  }

  public final List<String> a(String[] paramArrayOfString, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    if (paramArrayOfString != null);
    for (String str = b(paramArrayOfString, paramBoolean); ; str = null)
    {
      ContentResolver localContentResolver = this.a;
      Uri localUri = Uri.parse("content://sms");
      String[] arrayOfString1 = { "_id" };
      String[] arrayOfString2;
      Cursor localCursor;
      if (paramBoolean)
      {
        arrayOfString2 = null;
        localCursor = localContentResolver.query(localUri, arrayOfString1, str, arrayOfString2, null);
        if (localCursor.moveToFirst())
          break label109;
      }
      for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
      {
        return localArrayList2;
        arrayOfString2 = paramArrayOfString;
        break;
        label109: 
        do
        {
          localArrayList1.add(localCursor.getString(0));
          localCursor.moveToNext();
        }
        while (!localCursor.isAfterLast());
        localCursor.close();
      }
    }
  }

  public void b()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bt
 * JD-Core Version:    0.6.2
 */