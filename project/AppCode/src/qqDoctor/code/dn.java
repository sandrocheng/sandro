import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Proxy;
import android.os.Handler;
import android.os.Message;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;

public final class dn extends Thread
{
  public dn(dl paramdl)
  {
  }

  public final void run()
  {
    dl localdl = this.a;
    NetworkInfo localNetworkInfo;
    int i;
    if (localdl.f != null)
    {
      localNetworkInfo = ((ConnectivityManager)localdl.f.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo == null) || ((localNetworkInfo.getState() != NetworkInfo.State.CONNECTING) && (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED)))
      {
        i = -1;
        if (i != -1)
          break label147;
        Message localMessage = this.a.g.obtainMessage(6, 0, 0, null);
        this.a.g.sendMessage(localMessage);
      }
    }
    while (true)
    {
      return;
      if (localNetworkInfo.getType() == 1)
      {
        i = 2;
        break;
      }
      if (localNetworkInfo.getType() == 0)
      {
        if ((Proxy.getDefaultHost() != null) || (Proxy.getHost(localdl.f) != null))
        {
          i = 3;
          break;
        }
        i = 4;
        break;
      }
      i = -1;
      break;
      label147: if (this.a.d == null)
      {
        HttpGet localHttpGet = new HttpGet(this.a.c);
        this.a.a(localHttpGet, i);
      }
      else
      {
        HttpPost localHttpPost = new HttpPost(this.a.c);
        localHttpPost.addHeader("Content-Type", "application/x-www-form-urlencoded");
        ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(this.a.d);
        localByteArrayEntity.setChunked(false);
        localHttpPost.setEntity(localByteArrayEntity);
        this.a.a(localHttpPost, i);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dn
 * JD-Core Version:    0.6.2
 */