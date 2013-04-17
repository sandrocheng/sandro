import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public final class dp
{
  public Toast a = null;
  private Context b = null;
  private LayoutInflater c = null;
  private ImageView d = null;
  private TextView e = null;

  public dp(Context paramContext, String paramString, int paramInt)
  {
    this.b = paramContext;
    this.c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.a = new Toast(this.b);
    View localView = this.c.inflate(2130903078, null);
    this.d = ((ImageView)localView.findViewById(2131230850));
    this.e = ((TextView)localView.findViewById(2131230849));
    this.a.setGravity(1, 0, (int)(0.5F + 120.0F * this.b.getResources().getDisplayMetrics().density));
    this.a.setView(localView);
    if (this.e != null)
      this.e.setText(paramString);
    Drawable localDrawable = paramContext.getResources().getDrawable(paramInt);
    if (this.d != null)
      this.d.setImageDrawable(localDrawable);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dp
 * JD-Core Version:    0.6.2
 */