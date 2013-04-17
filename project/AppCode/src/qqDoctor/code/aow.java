import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class aow
  implements View.OnClickListener
{
  aow(aou paramaou)
  {
  }

  public final void onClick(View paramView)
  {
    aou.b(this.a, aou.q(this.a).getText().toString());
    int i = aou.r(this.a).length();
    if (i >= 139)
    {
      String str1 = aou.s(this.a).getString(2131430071);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i - 139);
      String str2 = String.format(str1, arrayOfObject);
      ha.a(aou.t(this.a), str2);
    }
    while (true)
    {
      return;
      aou.a(this.a, aou.u(this.a).getString(2131430070));
      aou.v(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aow
 * JD-Core Version:    0.6.2
 */