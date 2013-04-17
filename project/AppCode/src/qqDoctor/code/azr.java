import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

final class azr
  implements View.OnClickListener
{
  azr(azj paramazj)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool = azj.j(this.a).g();
    Bundle localBundle = null;
    if (bool)
    {
      azj.j(this.a).a(false);
      localBundle = new Bundle();
      localBundle.putInt("guide_type", 2);
    }
    fs.a(this.a.getActivity(), fs.b, localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     azr
 * JD-Core Version:    0.6.2
 */