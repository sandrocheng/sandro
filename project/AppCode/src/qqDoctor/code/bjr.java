import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class bjr
  implements View.OnClickListener
{
  bjr(CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setChecked(false);
    this.b.setChecked(false);
    this.c.setChecked(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjr
 * JD-Core Version:    0.6.2
 */