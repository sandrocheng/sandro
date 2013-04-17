package com.tencent.qqpimsecure.ui.activity.market;

import agh;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import bnd;
import com.tencent.qqpimsecure.uilib.view.SingleFlingGallery;
import java.util.ArrayList;
import java.util.List;

public class SoftwareScreenShotActivity extends Activity
{
  private SingleFlingGallery a;
  private List<Drawable> b;
  private Drawable c;
  private BaseAdapter d = new agh(this);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903253);
    getWindow().setFlags(1024, 1024);
    this.c = getResources().getDrawable(2130838291);
    this.b = new ArrayList(bnd.b.size());
    int i = 0;
    if (i < bnd.b.size())
    {
      String str = (String)bnd.b.get(i);
      if ((str == null) || (str.equals("")));
      while (true)
        synchronized (bnd.a)
        {
          this.b.add(bnd.a.get(i));
          i++;
        }
    }
    int j = getIntent().getIntExtra("position", 0);
    this.a = ((SingleFlingGallery)findViewById(2131230956));
    this.a.setAdapter(this.d);
    this.a.setSensitivity(0.0F);
    if (j < this.b.size())
      this.a.setSelection(j);
  }

  public static final class a
  {
    public ImageView a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.market.SoftwareScreenShotActivity
 * JD-Core Version:    0.6.2
 */