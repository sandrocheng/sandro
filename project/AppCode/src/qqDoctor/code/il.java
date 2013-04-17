import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class il
  implements IKeyWordDao
{
  private static IKeyWordDao a;
  private Context b;
  private ArrayList<String> c = new ArrayList();

  private il(Context paramContext)
  {
    this.b = paramContext;
    String str = paramContext.getSharedPreferences("key_words_info", 0).getString("key_words_info", "");
    if (str.length() > 0)
      this.c.addAll(Arrays.asList(str.split("\\|")));
  }

  public static IKeyWordDao a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new il(paramContext.getApplicationContext());
      IKeyWordDao localIKeyWordDao = a;
      return localIKeyWordDao;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean contains(String paramString)
  {
    boolean bool;
    if ((paramString == null) || (paramString.trim().equals("")))
      bool = false;
    while (true)
    {
      return bool;
      String str = paramString.toLowerCase();
      Iterator localIterator = this.c.iterator();
      while (true)
        if (localIterator.hasNext())
          if (str.contains((String)localIterator.next()))
          {
            bool = true;
            break;
          }
      bool = false;
    }
  }

  public final ArrayList<String> getAll()
  {
    return this.c;
  }

  public final void setAll(List<String> paramList)
  {
    this.c.clear();
    if ((paramList == null) || (paramList.size() == 0))
      this.b.getSharedPreferences("key_words_info", 0).edit().putString("key_words_info", "").commit();
    while (true)
    {
      return;
      this.c.addAll(paramList);
      StringBuffer localStringBuffer = new StringBuffer();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuffer.append(str.toLowerCase() + "|");
      }
      if (localStringBuffer.length() > 0)
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      this.b.getSharedPreferences("key_words_info", 0).edit().putString("key_words_info", localStringBuffer.toString()).commit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     il
 * JD-Core Version:    0.6.2
 */