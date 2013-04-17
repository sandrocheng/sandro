import android.app.Dialog;
import java.io.IOException;
import java.io.InputStream;

public final class k
  implements dm
{
  public static et a(InputStream paramInputStream)
  {
    et localet = new et();
    byte[] arrayOfByte = new byte[4];
    try
    {
      paramInputStream.read(arrayOfByte);
      paramInputStream.read(arrayOfByte);
      int i = arrayOfByte.length;
      int j = 0;
      if (i != 4);
      while (true)
      {
        localet.a = j;
        paramInputStream.read(new byte[16]);
        break;
        int k = 0xFF & arrayOfByte[0] | (0xFF & arrayOfByte[1]) << 8 | (0xFF & arrayOfByte[2]) << 16;
        int m = arrayOfByte[3];
        j = k | (m & 0xFF) << 24;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localet;
  }

  public final void a(Dialog paramDialog)
  {
    paramDialog.dismiss();
    e.a = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     k
 * JD-Core Version:    0.6.2
 */