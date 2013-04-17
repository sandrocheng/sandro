import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

public final class ahn
  implements View.OnClickListener
{
  public ahn(PickproofLockActivity paramPickproofLockActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (PickproofLockActivity.f(this.a).getChecked())
    {
      PickproofLockActivity.b(this.a).setTransformationMethod(HideReturnsTransformationMethod.getInstance());
      String str2 = PickproofLockActivity.b(this.a).getText().toString();
      PickproofLockActivity.b(this.a).setSelection(str2.length());
    }
    while (true)
    {
      return;
      PickproofLockActivity.b(this.a).setTransformationMethod(PasswordTransformationMethod.getInstance());
      String str1 = PickproofLockActivity.b(this.a).getText().toString();
      PickproofLockActivity.b(this.a).setSelection(str1.length());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahn
 * JD-Core Version:    0.6.2
 */