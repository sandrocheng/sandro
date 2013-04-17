import android.content.Context;
import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.io.IOException;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public final class uf
{
  private static uf a = null;
  private qt b;
  private Context c;

  private uf(Context paramContext)
  {
    this.c = paramContext;
    this.b = qt.a(this.c);
  }

  private String a(String paramString, lx paramlx)
  {
    String str = "";
    if ("imei".equals(paramString))
      str = ft.a(this.c);
    while (true)
    {
      return str;
      if (!"qq".equals(paramString))
        if ("soft".equals(paramString))
          str = "s";
        else if ((!"uuid".equals(paramString)) && (!"no".equals(paramString)))
          if ("ver".equals(paramString))
            str = qx.a().f();
          else if (!"appid".equals(paramString))
            if ("p".equals(paramString))
              str = String.valueOf(qx.a().g());
            else if ("subp".equals(paramString))
              str = String.valueOf(qx.a().g());
            else if ("activityID".equals(paramString))
              str = paramlx.b;
            else if ("prizeID".equals(paramString))
              str = paramlx.k;
            else if ("guid".equals(paramString))
              str = new WupSessionManager().getGuid();
    }
  }

  public static uf a(Context paramContext)
  {
    if (a == null)
      a = new uf(paramContext);
    return a;
  }

  public final lx a()
  {
    List localList = this.b.a();
    if ((localList != null) && (localList.size() != 0));
    for (lx locallx = (lx)localList.get(0); ; locallx = null)
      return locallx;
  }

  public final boolean a(lx paramlx)
  {
    String str1 = paramlx.i;
    String[] arrayOfString1;
    String str2;
    if (!"".equals(str1))
    {
      arrayOfString1 = str1.split("\\|");
      if (arrayOfString1.length < 3)
        str2 = arrayOfString1[0];
    }
    while (true)
    {
      HttpGet localHttpGet = new HttpGet(str2);
      try
      {
        HttpResponse localHttpResponse = new DefaultHttpClient().execute(localHttpGet);
        int i = localHttpResponse.getStatusLine().getStatusCode();
        bool1 = false;
        if (i == 200)
        {
          boolean bool2 = EntityUtils.toString(localHttpResponse.getEntity()).equals("1");
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
        return bool1;
        String[] arrayOfString2 = arrayOfString1[1].split(",");
        StringBuffer localStringBuffer = new StringBuffer();
        for (int j = 0; j < arrayOfString2.length; j++)
        {
          localStringBuffer.append(arrayOfString2[j]).append("=").append(a(arrayOfString2[j], paramlx));
          if (j != -1 + arrayOfString2.length)
            localStringBuffer.append("&");
        }
        String str3 = k.b(TccCryptor.encrypt(this.c, localStringBuffer.toString().getBytes(), arrayOfString1[2].getBytes()));
        arrayOfString1[0] = arrayOfString1[0].replaceAll("\\$id", str3);
        str2 = arrayOfString1[0];
        continue;
        str2 = null;
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        while (true)
        {
          localClientProtocolException.printStackTrace();
          bool1 = false;
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          localIOException.printStackTrace();
          boolean bool1 = false;
        }
      }
    }
  }

  public final String b(lx paramlx)
  {
    String str1 = paramlx.h;
    String[] arrayOfString1;
    String str2;
    if (!"".equals(str1))
    {
      arrayOfString1 = str1.split("\\|");
      if (arrayOfString1.length < 3)
        str2 = arrayOfString1[0];
    }
    while (true)
    {
      return str2;
      String[] arrayOfString2 = arrayOfString1[1].split(",");
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfString2.length; i++)
      {
        localStringBuffer.append(arrayOfString2[i]).append("=").append(a(arrayOfString2[i], paramlx));
        if (i != -1 + arrayOfString2.length)
          localStringBuffer.append("&");
      }
      String str3 = k.b(TccCryptor.encrypt(this.c, localStringBuffer.toString().getBytes(), arrayOfString1[2].getBytes()));
      arrayOfString1[0] = arrayOfString1[0].replaceAll("\\$id", str3);
      str2 = arrayOfString1[0];
      continue;
      str2 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     uf
 * JD-Core Version:    0.6.2
 */