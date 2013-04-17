import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class ayv
  implements DialogInterface.OnCancelListener
{
  ayv(ayp paramayp)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    try
    {
      if (ayp.f(this.a).isAlive())
        ayp.f(this.a).interrupt();
      label23: return;
    }
    catch (Exception localException)
    {
      break label23;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ayv
 * JD-Core Version:    0.6.2
 */