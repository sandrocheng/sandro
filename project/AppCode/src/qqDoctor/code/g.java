import com.tencent.faceverify.util.ImageInfo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public final class g extends f
{
  public String a = null;
  public List<ImageInfo> b = null;
  private String i = "3";

  public final int a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("v");
    localStringBuilder.append("=");
    localStringBuilder.append(this.e);
    localStringBuilder.append("&");
    localStringBuilder.append("source");
    localStringBuilder.append("=");
    localStringBuilder.append(this.f);
    localStringBuilder.append("&");
    localStringBuilder.append("time");
    localStringBuilder.append("=");
    localStringBuilder.append(this.g);
    localStringBuilder.append("&");
    localStringBuilder.append("veri_str");
    localStringBuilder.append("=");
    localStringBuilder.append(this.h);
    localStringBuilder.append("&");
    localStringBuilder.append("cmd");
    localStringBuilder.append("=");
    localStringBuilder.append(this.i);
    localStringBuilder.append("&");
    localStringBuilder.append("guid");
    localStringBuilder.append("=");
    localStringBuilder.append(this.a);
    localStringBuilder.append("&");
    int m;
    if (this.b == null)
      m = -1;
    while (true)
    {
      return m;
      int j = this.b.size();
      localStringBuilder.append("pic_num");
      localStringBuilder.append("=");
      localStringBuilder.append(Integer.toString(j));
      localStringBuilder.append("&");
      int k = 0;
      label246: ByteArrayOutputStream localByteArrayOutputStream;
      if (k >= j)
      {
        localStringBuilder.append('\000');
        localByteArrayOutputStream = new ByteArrayOutputStream();
      }
      try
      {
        localByteArrayOutputStream.write(localStringBuilder.toString().getBytes());
        for (int n = 0; ; n++)
        {
          if (n >= j)
          {
            localByteArrayOutputStream.write(0);
            localByteArrayOutputStream.flush();
            this.c = localByteArrayOutputStream.toByteArray();
            label310: m = 0;
            break;
            localStringBuilder.append("cp" + k);
            localStringBuilder.append("=");
            localStringBuilder.append(((ImageInfo)this.b.get(k)).getEncodedFaceInfo());
            k++;
            break label246;
          }
          localByteArrayOutputStream.write(((ImageInfo)this.b.get(n)).getEncodedImageData());
        }
      }
      catch (IOException localIOException)
      {
        break label310;
      }
    }
  }

  public final void a(HttpEntity paramHttpEntity)
  {
    try
    {
      String str = EntityUtils.toString(paramHttpEntity);
      if (str == null)
        this.d = -4;
      switch (new JSONObject(str).getInt("ret"))
      {
      default:
        this.d = -5;
        break;
      case 0:
        this.d = 0;
      case -1:
      case -100:
      case -101:
      case -201:
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      this.d = -4;
    }
    this.d = -5;
    return;
    this.d = -6;
    return;
    this.d = -7;
    return;
    this.d = -8;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     g
 * JD-Core Version:    0.6.2
 */