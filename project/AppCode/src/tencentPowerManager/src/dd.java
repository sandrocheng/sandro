import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
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

public final class dd extends Dialog
{
  private View a;
  private Context b;
  private TextView c;
  private ListView d;
  private LinearLayout e;
  private da f;
  private ArrayList<di> g;

  public dd(Context paramContext)
  {
    super(paramContext, 2131165184);
    this.b = paramContext;
    this.a = LayoutInflater.from(this.b).inflate(2130903071, null);
    this.c = new TextView(this.b);
    this.e = ((LinearLayout)this.a.findViewById(2131230830));
    this.d = ((ListView)this.a.findViewById(2131230845));
    this.d.setPadding(0, 0, 0, 0);
    setTitle(2131099663);
  }

  public static void a()
  {
  }

  public final di a(int paramInt)
  {
    if ((this.g == null) || (paramInt < 0) || (paramInt >= this.g.size()));
    for (di localdi = null; ; localdi = (di)this.g.get(paramInt))
      return localdi;
  }

  public final void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.d.setOnItemClickListener(paramOnItemClickListener);
  }

  public final void a(String paramString)
  {
    this.e.setVisibility(0);
    this.c.setText(paramString);
    this.c.setTextColor(this.b.getResources().getColor(2131034123));
    this.c.setTextSize(18.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.e.removeView(this.c);
    this.e.addView(this.c, localLayoutParams);
  }

  public final void a(ArrayList<di> paramArrayList)
  {
    if (paramArrayList == null);
    while (true)
    {
      return;
      ArrayList localArrayList1 = new ArrayList();
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        dh localdh = new dh();
        localdh.a = ((di)paramArrayList.get(i)).a;
        localArrayList1.add(localdh);
      }
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(new dk(localArrayList1));
      this.f = new da(this.b, localArrayList2);
      this.d.setAdapter(this.f);
      ((BaseAdapter)this.d.getAdapter()).notifyDataSetChanged();
      this.g = paramArrayList;
    }
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    new DisplayMetrics();
    int i = this.b.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = ((int)(0.9D * i));
    super.setContentView(this.a, localLayoutParams);
  }

  public final void setTitle(int paramInt)
  {
    a(this.b.getResources().getString(paramInt));
  }

  public final void show()
  {
    super.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dd
 * JD-Core Version:    0.6.2
 */