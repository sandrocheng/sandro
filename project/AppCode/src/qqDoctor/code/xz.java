import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

final class xz
  implements View.OnClickListener
{
  xz(CheckBoxView paramCheckBoxView, EditText paramEditText)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.getChecked())
      this.b.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
    while (true)
    {
      int i = this.b.getText().toString().length();
      this.b.setSelection(i);
      return;
      this.b.setTransformationMethod(PasswordTransformationMethod.getInstance());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xz
 * JD-Core Version:    0.6.2
 */