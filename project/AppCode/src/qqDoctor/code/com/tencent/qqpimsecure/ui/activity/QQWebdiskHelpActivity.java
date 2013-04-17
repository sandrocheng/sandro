package com.tencent.qqpimsecure.ui.activity;

import adu;
import adw;
import adx;
import ady;
import adz;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.slide.SlideCallBackInterface;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint;
import com.tencent.qqpimsecure.uilib.view.slide.SlideViewGroup;
import ho;

public class QQWebdiskHelpActivity extends Activity
  implements SlideCallBackInterface
{
  public static int[] a = { 2130903188, 2130903190, 2130903186, 2130903185 };
  private ImageView b;
  private ImageView c;
  private ButtonView d;
  private SlideLayoutExPoint e;
  private LinearLayout f;
  private LinearLayout.LayoutParams g;
  private int h;
  private int[] i;
  private int[] j = { 2130903181, 2130903184, 2130903183, 2130903180, 2130903179, 2130903182 };
  private Handler k = new adu(this);

  private void a()
  {
    SlideViewGroup localSlideViewGroup = this.e.getmSlideViewGroup();
    ((ImageView)localSlideViewGroup.findViewById(2131231180)).setOnClickListener(new ady(this));
    this.d = ((ButtonView)localSlideViewGroup.findViewById(2131231181));
    this.d.setOnClickListener(new adz(this));
    this.e.invalidate();
    this.f.invalidate();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903229);
    this.f = ((LinearLayout)findViewById(2131231263));
    this.h = getIntent().getIntExtra("from", -1);
    switch (this.h)
    {
    default:
      this.g = new LinearLayout.LayoutParams(-1, -1);
      this.e = new SlideLayoutExPoint(this);
      if (this.h != 2)
        this.e.setBackgroundColor(getResources().getColor(2131296338));
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      int m = this.i.length;
      if (m == 1)
        m = 0;
      if (this.h == 1)
      {
        m--;
        if (m < 0)
          m = 0;
      }
      this.e.initSlideLayout(this.i[0], m);
      this.e.setCurrentCanvasIndex(0);
      this.e.addSlideCallBackInterface(this);
      this.f.addView(this.e, this.g);
      this.c = ((ImageView)findViewById(2131231279));
      this.c.setOnClickListener(new adw(this));
      if (this.i.length == 1)
      {
        this.c.setVisibility(8);
        a();
        this.e.setAllowSlide(false);
      }
      Message localMessage = new Message();
      localMessage.arg1 = 1;
      localMessage.what = 1;
      this.k.sendMessage(localMessage);
      new Thread(new adx()).start();
      return;
      a = this.j;
      this.i = a;
      break;
      if (a.length == 1)
      {
        this.i = a;
        break;
      }
      int[] arrayOfInt = new int[a.length];
      for (int n = 0; n < -1 + arrayOfInt.length; n++)
        arrayOfInt[n] = a[n];
      arrayOfInt[(-1 + arrayOfInt.length)] = 2130903187;
      this.i = arrayOfInt;
      break;
      this.i = new int[] { 2130903230, 2130903232, 2130903231 };
      break;
      this.e.setBackgroundColor(getResources().getColor(2131296336));
    }
  }

  public void onNextCanvas(int paramInt)
  {
    if (paramInt == -1 + this.i.length)
    {
      findViewById(2131231279).setVisibility(8);
      if (this.h == 1)
      {
        startActivity(new Intent(this, MainActivity.class));
        finish();
        ho.a().X();
      }
    }
    while (true)
    {
      return;
      if (paramInt == -2 + this.i.length)
      {
        if ((this.h == 1) && (this.b != null))
        {
          findViewById(2131231279).setVisibility(8);
          this.b.setVisibility(0);
        }
        else
        {
          findViewById(2131231279).setVisibility(0);
        }
      }
      else
      {
        findViewById(2131231279).setVisibility(0);
        if ((this.h == 1) && (this.b != null))
          this.b.setVisibility(8);
      }
    }
  }

  public void onSlideStart()
  {
  }

  public void onSlideStop()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.QQWebdiskHelpActivity
 * JD-Core Version:    0.6.2
 */