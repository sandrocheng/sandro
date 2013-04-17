import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.feedback.eup.IEupUserConfirmer;

public final class dw
  implements IEupUserConfirmer
{
  private Context a;
  private TextView b;
  private View c;
  private View d;
  private View e;
  private EditText f;

  public dw(Context paramContext)
  {
    this.a = paramContext;
  }

  public final View getContentView()
  {
    if (this.c == null)
    {
      this.c = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903051, null, false);
      this.b = ((TextView)this.c.findViewById(2131230761));
      this.d = this.c.findViewById(2131230766);
      this.e = this.c.findViewById(2131230767);
      this.f = ((EditText)this.c.findViewById(2131230764));
      this.b.setText(2131099808);
    }
    return this.c;
  }

  public final View getDoCancelClicker()
  {
    return this.e;
  }

  public final View getDoUploadClicker()
  {
    return this.d;
  }

  public final String getUploadContent()
  {
    c.a();
    String str;
    if (this.f != null)
    {
      str = this.f.getText().toString();
      if ((str == null) || (str.equals("")));
    }
    while (true)
    {
      return str;
      str = c.b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dw
 * JD-Core Version:    0.6.2
 */