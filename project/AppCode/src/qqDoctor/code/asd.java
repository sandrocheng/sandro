import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.io.File;

final class asd
  implements Runnable
{
  asd(arz paramarz, lj paramlj)
  {
  }

  public final void run()
  {
    if (new kq().a(this.a.b(), this.a.b() + this.a.d()) != 0);
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.addFlags(268435456);
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setDataAndType(Uri.fromFile(new File(this.a.b() + this.a.d())), "video/*");
      try
      {
        arz.n(this.b).startActivity(localIntent);
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        arz.o(this.b);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     asd
 * JD-Core Version:    0.6.2
 */