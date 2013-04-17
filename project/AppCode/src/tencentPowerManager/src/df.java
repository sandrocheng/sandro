import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public final class df extends Dialog
{
  private dm a;
  private View b;
  private Context c;
  private TextView d;
  private ListView e;
  private LinearLayout f;
  private db g;

  public df(Context paramContext)
  {
    super(paramContext, 2131165184);
    this.c = paramContext;
    this.b = LayoutInflater.from(this.c).inflate(2130903071, null);
    this.d = new TextView(this.c);
    this.f = ((LinearLayout)this.b.findViewById(2131230830));
    this.e = ((ListView)this.b.findViewById(2131230845));
    this.e.setPadding(0, 0, 0, 0);
    this.b.findViewById(2131230832);
    setTitle(2131099663);
  }

  public final void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.e.setOnItemClickListener(paramOnItemClickListener);
  }

  public final void a(dm paramdm)
  {
    this.a = paramdm;
  }

  public final void a(ArrayList<dl> paramArrayList, int paramInt)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      int i = 0;
      if (i < paramArrayList.size())
      {
        if (paramInt == i);
        for (((dl)paramArrayList.get(i)).b = true; ; ((dl)paramArrayList.get(i)).b = false)
        {
          i++;
          break;
        }
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new dk(paramArrayList));
      this.g = new db(this.c, localArrayList);
      this.e.setAdapter(this.g);
      ((BaseAdapter)this.e.getAdapter()).notifyDataSetChanged();
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new DisplayMetrics();
    int i = this.c.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = ((int)(0.9D * i));
    super.setContentView(this.b, localLayoutParams);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0) && (this.a != null))
      this.a.a(this);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final void setTitle(int paramInt)
  {
    setTitle(this.c.getResources().getString(paramInt));
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.f.setVisibility(0);
    this.d.setText(paramCharSequence);
    this.d.setTextColor(this.c.getResources().getColor(2131034123));
    this.d.setTextSize(18.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.f.removeView(this.d);
    this.f.addView(this.d, localLayoutParams);
  }

  public final void show()
  {
    super.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     df
 * JD-Core Version:    0.6.2
 */