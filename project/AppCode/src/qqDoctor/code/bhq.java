import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class bhq
  implements View.OnClickListener
{
  bhq(bhn parambhn)
  {
  }

  public final void onClick(View paramView)
  {
    if (bhn.a(this.a).length() > 0)
      bhn.a(this.a).getText().delete(-1 + bhn.a(this.a).length(), bhn.a(this.a).length());
    ov.a().a(bhn.b(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhq
 * JD-Core Version:    0.6.2
 */