import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.File;
import java.util.List;

final class atx
  implements Runnable
{
  atx(atn paramatn)
  {
  }

  public final void run()
  {
    if (new kq().a(((lj)atn.q(this.a).get(atn.z(this.a))).b(), ((lj)atn.q(this.a).get(atn.z(this.a))).b() + ((lj)atn.q(this.a).get(atn.z(this.a))).d()) != 0);
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.addFlags(268435456);
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setDataAndType(Uri.fromFile(new File(((lj)atn.q(this.a).get(atn.z(this.a))).b() + ((lj)atn.q(this.a).get(atn.z(this.a))).d())), "video/*");
      try
      {
        atn.F(this.a).startActivity(localIntent);
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atx
 * JD-Core Version:    0.6.2
 */