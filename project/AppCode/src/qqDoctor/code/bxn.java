import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.phoneservice.UsefulNumberEntity;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.util.EncodingUtils;

public final class bxn extends BaseManager
{
  public HashMap<String, ArrayList<UsefulNumberEntity>> a = new HashMap();
  private Context b;

  private String b()
  {
    Object localObject = "";
    try
    {
      InputStream localInputStream = this.b.getResources().getAssets().open("yellowpage.db");
      byte[] arrayOfByte = new byte[localInputStream.available()];
      localInputStream.read(arrayOfByte);
      localInputStream.close();
      String str = EncodingUtils.getString(arrayOfByte, "utf-8");
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final List<UsefulNumberEntity> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      localArrayList.addAll((List)localIterator.next());
    }
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    String[] arrayOfString = b().trim().split("\\n");
    ArrayList localArrayList = null;
    int i = arrayOfString.length;
    int j = 0;
    if (j >= i)
      return;
    String str1 = arrayOfString[j].trim();
    if (str1.contains("@"))
    {
      localArrayList = new ArrayList();
      this.a.put(str1.replace("@", ""), localArrayList);
    }
    while (true)
    {
      j++;
      break;
      if (localArrayList != null)
      {
        int k = str1.indexOf('$');
        String str2 = str1.substring(0, k);
        String str3 = str1.substring(k + 1, str1.length());
        UsefulNumberEntity localUsefulNumberEntity = new UsefulNumberEntity();
        localUsefulNumberEntity.setNumber(str2);
        localUsefulNumberEntity.setName(str3);
        localArrayList.add(localUsefulNumberEntity);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxn
 * JD-Core Version:    0.6.2
 */