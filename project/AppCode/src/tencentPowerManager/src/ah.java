import android.bluetooth.BluetoothAdapter;
import com.tencent.powermanager.PowerManagerApplication;

public final class ah
{
  public static boolean a = false;
  private static ah c;
  private BluetoothAdapter b = BluetoothAdapter.getDefaultAdapter();

  public static ah a()
  {
    if (c == null)
    {
      PowerManagerApplication.a();
      c = new ah();
    }
    return c;
  }

  public final void b()
  {
    if ((this.b == null) || (!this.b.isEnabled()));
    while (true)
    {
      return;
      if (!a)
        this.b.disable();
    }
  }

  public final void c()
  {
    if ((this.b == null) || (this.b.isEnabled()));
    while (true)
    {
      return;
      this.b.enable();
    }
  }

  public final boolean d()
  {
    if (this.b != null);
    for (boolean bool = this.b.isEnabled(); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ah
 * JD-Core Version:    0.6.2
 */