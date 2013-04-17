import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofUrgentContactActivity.a;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;

public final class aho
  implements TextWatcher
{
  public aho(PickproofUrgentContactActivity.a parama)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    PickproofUrgentContactActivity.a.a(this.a);
    int i = PickproofUrgentContactActivity.a.b(this.a).getText().toString().length();
    OperatingModel localOperatingModel = PickproofUrgentContactActivity.a.c(this.a);
    if (i > 0);
    for (boolean bool = true; ; bool = false)
    {
      localOperatingModel.setEnable(bool);
      this.a.refreshOperatingBar(PickproofUrgentContactActivity.a.c(this.a));
      return;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aho
 * JD-Core Version:    0.6.2
 */