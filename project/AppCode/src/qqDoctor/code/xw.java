import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

final class xw
  implements View.OnClickListener
{
  xw(CheckBoxView paramCheckBoxView, EditText paramEditText1, EditText paramEditText2, EditText paramEditText3)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.getChecked())
    {
      this.b.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
      this.c.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
      this.d.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
    }
    while (true)
    {
      int i = this.b.getText().toString().length();
      int j = this.c.getText().toString().length();
      int k = this.d.getText().toString().length();
      this.b.setSelection(i);
      this.c.setSelection(j);
      this.d.setSelection(k);
      return;
      this.b.setTransformationMethod(PasswordTransformationMethod.getInstance());
      this.c.setTransformationMethod(PasswordTransformationMethod.getInstance());
      this.d.setTransformationMethod(PasswordTransformationMethod.getInstance());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xw
 * JD-Core Version:    0.6.2
 */