package com.tencent.qqpimsecure.view.privacy;

import a;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.Toast;
import bgj;
import bgk;
import bgl;
import bgm;
import bgn;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.filesafe.GalleryActivity;
import fi;
import ft;
import gz;
import hm;
import ib;
import java.io.File;
import java.util.ArrayList;
import kg;
import lj;
import px;

public class CameraSwitchWindowView extends LinearLayout
  implements View.OnClickListener, View.OnTouchListener
{
  private Context a;
  private WindowManager b;
  private hm c;
  private String d = "CameraSwitchWindowView";
  private RelativeLayout e;
  private LinearLayout f;
  private ImageView g;
  private int h = -1;
  private int i = -1;
  private float j;
  private float k;
  private float l;
  private float m;
  private LinearLayout n;
  private ImageView o;
  private float p;
  private Bitmap q;
  private String r;
  private View s;
  private View t;
  private boolean u = false;
  private int v;
  private int w = 3;
  private int x = -1;
  private Handler y = new bgk(this);

  public CameraSwitchWindowView(Context paramContext, boolean paramBoolean, String paramString)
  {
    super(paramContext);
    this.a = paramContext;
    this.c = new hm(QQPimApplication.a());
    this.b = ((WindowManager)paramContext.getSystemService("window"));
    kg.b.gravity = 51;
    this.e = ((RelativeLayout)LayoutInflater.from(this.a).inflate(2130903124, null));
    this.f = ((LinearLayout)this.e.findViewById(2131230923));
    this.g = ((ImageView)this.e.findViewById(2131230924));
    this.s = this.e.findViewById(2131230928);
    this.t = this.e.findViewById(2131230925);
    this.o = ((ImageView)this.e.findViewById(2131230929));
    this.n = ((LinearLayout)this.e.findViewById(2131230926));
    if (this.c.a.getBoolean("Is_first_tips_box", true))
    {
      this.n.setVisibility(0);
      this.f.setBackgroundResource(2130837707);
      this.c.b.putBoolean("Is_first_tips_box", false).commit();
    }
    if (px.a == null)
      px.a = new Toast(this.a);
    this.c.b.putBoolean("need_save_file_status", false).commit();
    label506: int i1;
    if (paramBoolean)
    {
      this.f.setBackgroundResource(2130837707);
      this.c.b.putBoolean("need_save_file_status", true).commit();
      this.r = paramString;
      if (paramString != null)
      {
        new StringBuilder("CameraSwitchWindowView filePath ").append(paramString).toString();
        lj locallj = new ib().b("file_safe_file_info", "mFileSrcPath=?", new String[] { paramString }, "id ASC");
        String str = locallj.b() + "_tmb";
        if (new File(str).exists())
          this.q = gz.a(str);
      }
      else
      {
        this.y.removeMessages(3);
        this.y.obtainMessage(3).sendToTarget();
      }
    }
    else
    {
      if ((this.q != null) && (this.r != null))
        break label681;
      this.s.setVisibility(8);
      this.t.setVisibility(8);
      if (this.n.getVisibility() != 0)
        this.f.setBackgroundResource(2130837706);
      this.k = 0.0F;
      this.j = 0.0F;
      this.m = 0.0F;
      this.l = 0.0F;
      this.v = ViewConfiguration.get(getContext()).getScaledTouchSlop();
      setClickable(true);
      setEnabled(true);
      setFocusable(true);
      setFocusableInTouchMode(true);
      setOnTouchListener(this);
      setOnClickListener(this);
      i1 = this.c.a.getInt("camera_Box_Coordinate", -1);
      if (i1 != -1)
        break label709;
      a(true);
    }
    while (true)
    {
      this.y.removeMessages(1);
      Message localMessage = this.y.obtainMessage(1);
      localMessage.arg1 = 1;
      localMessage.sendToTarget();
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      addView(this.e, localLayoutParams);
      if (this.n.getVisibility() == 0)
        this.y.sendEmptyMessageDelayed(2, 4000L);
      return;
      this.r = null;
      break;
      label681: this.s.setVisibility(0);
      this.t.setVisibility(0);
      this.f.setBackgroundResource(2130837707);
      break label506;
      label709: this.j = (0xFFFF & i1);
      this.k = (0xFFFF & i1 >> 16);
      a(false);
    }
  }

  private void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.i = ((int)(this.k - this.m));
      this.h = ((int)(this.j - this.l));
      kg.b.x = this.h;
      kg.b.y = this.i;
      if (kg.b.x + getRight() >= ft.d(this.a))
        kg.b.x = (ft.d(this.a) - getRight());
      if (kg.b.x < 0)
        kg.b.x = 0;
      if (bgj.a)
        this.b.updateViewLayout(this, kg.b);
    }
    while (true)
    {
      return;
      kg.b.x = (ft.d(this.a) - (getLeft() - getRight()));
      kg.b.y = (3 * ft.e(this.a) / 5);
      this.h = kg.b.x;
      this.i = kg.b.y;
    }
  }

  private void b()
  {
    if (this.c.a.getBoolean("need_save_file_status", true))
    {
      this.c.b.putBoolean("need_save_file_status", false).commit();
      this.g.setImageResource(2130837805);
      bgm localbgm = new bgm(this);
      this.y.post(localbgm);
    }
    while (true)
    {
      return;
      this.c.b.putBoolean("need_save_file_status", true).commit();
      this.g.setImageResource(2130837806);
      bgn localbgn = new bgn(this);
      this.y.post(localbgn);
    }
  }

  public final void a()
  {
    if (this.q != null)
    {
      this.o.setImageBitmap(null);
      if (!this.q.isRecycled())
        this.q.recycle();
    }
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    int i1;
    if (this.x == -1)
    {
      WindowManager localWindowManager = (WindowManager)getContext().getSystemService("window");
      int i2 = localWindowManager.getDefaultDisplay().getWidth();
      if (localWindowManager.getDefaultDisplay().getHeight() < i2)
      {
        this.x = 1;
        this.y.removeMessages(4);
        Message localMessage25 = this.y.obtainMessage(4);
        localMessage25.arg1 = -90;
        localMessage25.arg2 = 0;
        localMessage25.sendToTarget();
      }
    }
    else
    {
      if ((paramFloat1 <= -4.0F) || (paramFloat1 > 4.0F) || (paramFloat2 < 1.0F))
        break label157;
      i1 = 3;
      label114: switch (this.w)
      {
      default:
      case 3:
      case 1:
      case 2:
      case 4:
      }
    }
    while (true)
    {
      return;
      this.x = 2;
      break;
      label157: if ((paramFloat1 > -4.0F) && (paramFloat1 <= 4.0F) && (paramFloat2 < -2.0F))
      {
        i1 = 4;
        break label114;
      }
      if ((paramFloat2 > -4.0F) && (paramFloat2 <= 4.0F) && (paramFloat1 >= 1.0F))
      {
        i1 = 1;
        break label114;
      }
      if ((paramFloat2 > -4.0F) && (paramFloat2 <= 4.0F) && (paramFloat1 < -2.0F))
      {
        i1 = 2;
        break label114;
      }
      i1 = 0;
      break label114;
      if (i1 == 1)
      {
        this.w = i1;
        if (this.x == 2)
        {
          this.y.removeMessages(4);
          Message localMessage24 = this.y.obtainMessage(4);
          localMessage24.arg1 = 90;
          localMessage24.arg2 = 0;
          localMessage24.sendToTarget();
        }
        else if (this.x == 1)
        {
          this.y.removeMessages(4);
          Message localMessage23 = this.y.obtainMessage(4);
          localMessage23.arg1 = 0;
          localMessage23.arg2 = -90;
          localMessage23.sendToTarget();
        }
      }
      else if (i1 == 2)
      {
        this.w = i1;
        if (this.x == 2)
        {
          this.y.removeMessages(4);
          Message localMessage22 = this.y.obtainMessage(4);
          localMessage22.arg1 = -90;
          localMessage22.arg2 = 0;
          localMessage22.sendToTarget();
        }
        else if (this.x == 1)
        {
          this.y.removeMessages(4);
          Message localMessage21 = this.y.obtainMessage(4);
          localMessage21.arg1 = -180;
          localMessage21.arg2 = -90;
          localMessage21.sendToTarget();
        }
      }
      else if (i1 == 4)
      {
        this.w = i1;
        if (this.x == 2)
        {
          this.y.removeMessages(4);
          Message localMessage20 = this.y.obtainMessage(4);
          localMessage20.arg1 = 180;
          localMessage20.arg2 = 0;
          localMessage20.sendToTarget();
        }
        else if (this.x == 1)
        {
          this.y.removeMessages(4);
          Message localMessage19 = this.y.obtainMessage(4);
          localMessage19.arg1 = 90;
          localMessage19.arg2 = -90;
          localMessage19.sendToTarget();
          continue;
          if (i1 == 2)
          {
            this.w = i1;
            if (this.x == 2)
            {
              this.y.removeMessages(4);
              Message localMessage18 = this.y.obtainMessage(4);
              localMessage18.arg1 = -90;
              localMessage18.arg2 = 90;
              localMessage18.sendToTarget();
            }
            else if (this.x == 1)
            {
              this.y.removeMessages(4);
              Message localMessage17 = this.y.obtainMessage(4);
              localMessage17.arg1 = 180;
              localMessage17.arg2 = 0;
              localMessage17.sendToTarget();
            }
          }
          else if (i1 == 3)
          {
            this.w = i1;
            if (this.x == 2)
            {
              this.y.removeMessages(4);
              Message localMessage16 = this.y.obtainMessage(4);
              localMessage16.arg1 = 0;
              localMessage16.arg2 = 90;
              localMessage16.sendToTarget();
            }
            else if (this.x == 1)
            {
              this.y.removeMessages(4);
              Message localMessage15 = this.y.obtainMessage(4);
              localMessage15.arg1 = -90;
              localMessage15.arg2 = 0;
              localMessage15.sendToTarget();
            }
          }
          else if (i1 == 4)
          {
            this.w = i1;
            if (this.x == 2)
            {
              this.y.removeMessages(4);
              Message localMessage14 = this.y.obtainMessage(4);
              localMessage14.arg1 = 180;
              localMessage14.arg2 = 90;
              localMessage14.sendToTarget();
            }
            else if (this.x == 1)
            {
              this.y.removeMessages(4);
              Message localMessage13 = this.y.obtainMessage(4);
              localMessage13.arg1 = 90;
              localMessage13.arg2 = 0;
              localMessage13.sendToTarget();
              continue;
              if (i1 == 1)
              {
                this.w = i1;
                if (this.x == 2)
                {
                  this.y.removeMessages(4);
                  Message localMessage12 = this.y.obtainMessage(4);
                  localMessage12.arg1 = 90;
                  localMessage12.arg2 = -90;
                  localMessage12.sendToTarget();
                }
                else if (this.x == 1)
                {
                  this.y.removeMessages(4);
                  Message localMessage11 = this.y.obtainMessage(4);
                  localMessage11.arg1 = 0;
                  localMessage11.arg2 = 180;
                  localMessage11.sendToTarget();
                }
              }
              else if (i1 == 3)
              {
                this.w = i1;
                if (this.x == 2)
                {
                  this.y.removeMessages(4);
                  Message localMessage10 = this.y.obtainMessage(4);
                  localMessage10.arg1 = 0;
                  localMessage10.arg2 = -90;
                  localMessage10.sendToTarget();
                }
                else if (this.x == 1)
                {
                  this.y.removeMessages(4);
                  Message localMessage9 = this.y.obtainMessage(4);
                  localMessage9.arg1 = -90;
                  localMessage9.arg2 = -180;
                  localMessage9.sendToTarget();
                }
              }
              else if (i1 == 4)
              {
                this.w = i1;
                if (this.x == 2)
                {
                  this.y.removeMessages(4);
                  Message localMessage8 = this.y.obtainMessage(4);
                  localMessage8.arg1 = -180;
                  localMessage8.arg2 = -90;
                  localMessage8.sendToTarget();
                }
                else if (this.x == 1)
                {
                  this.y.removeMessages(4);
                  Message localMessage7 = this.y.obtainMessage(4);
                  localMessage7.arg1 = 90;
                  localMessage7.arg2 = 180;
                  localMessage7.sendToTarget();
                  continue;
                  if (i1 == 1)
                  {
                    this.w = i1;
                    if (this.x == 2)
                    {
                      this.y.removeMessages(4);
                      Message localMessage6 = this.y.obtainMessage(4);
                      localMessage6.arg1 = 90;
                      localMessage6.arg2 = 180;
                      localMessage6.sendToTarget();
                    }
                    else if (this.x == 1)
                    {
                      this.y.removeMessages(4);
                      Message localMessage5 = this.y.obtainMessage(4);
                      localMessage5.arg1 = 0;
                      localMessage5.arg2 = 90;
                      localMessage5.sendToTarget();
                    }
                  }
                  else if (i1 == 2)
                  {
                    this.w = i1;
                    if (this.x == 2)
                    {
                      this.y.removeMessages(4);
                      Message localMessage4 = this.y.obtainMessage(4);
                      localMessage4.arg1 = -90;
                      localMessage4.arg2 = -180;
                      localMessage4.sendToTarget();
                    }
                    else if (this.x == 1)
                    {
                      this.y.removeMessages(4);
                      Message localMessage3 = this.y.obtainMessage(4);
                      localMessage3.arg1 = 180;
                      localMessage3.arg2 = 90;
                      localMessage3.sendToTarget();
                    }
                  }
                  else if (i1 == 3)
                  {
                    this.w = i1;
                    if (this.x == 2)
                    {
                      this.y.removeMessages(4);
                      Message localMessage2 = this.y.obtainMessage(4);
                      localMessage2.arg1 = 0;
                      localMessage2.arg2 = 180;
                      localMessage2.sendToTarget();
                    }
                    else if (this.x == 1)
                    {
                      this.y.removeMessages(4);
                      Message localMessage1 = this.y.obtainMessage(4);
                      localMessage1.arg1 = -90;
                      localMessage1.arg2 = 90;
                      localMessage1.sendToTarget();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final void a(String paramString)
  {
    String str1 = fi.a(paramString);
    Bitmap localBitmap = null;
    if (str1 == null);
    while (true)
    {
      this.q = localBitmap;
      if (this.q != null)
        this.r = paramString;
      this.y.removeMessages(3);
      this.y.obtainMessage(3).sendToTarget();
      return;
      String str2 = a.h(paramString);
      String str3 = str1 + str2;
      String str4 = str3 + "_tmb";
      boolean bool = new File(str4).exists();
      localBitmap = null;
      if (bool)
        localBitmap = gz.a(str4);
    }
  }

  public void onClick(View paramView)
  {
    if (this.s.getVisibility() == 0)
      if (this.p <= (getRight() - getLeft()) / 2)
        b();
    while (true)
    {
      return;
      if ((this.p > (getRight() - getLeft()) / 2) && (this.p <= getRight() - getLeft()))
      {
        ArrayList localArrayList = px.a(this.a).d();
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          Intent localIntent = new Intent();
          localIntent.setClass(this.a, GalleryActivity.class);
          localIntent.setFlags(1006632960);
          localIntent.putExtra("position", -1 + localArrayList.size());
          localIntent.putExtra("from_where", 2);
          localIntent.putExtra("src_path_list", localArrayList);
          this.a.startActivity(localIntent);
          continue;
          if (this.s.getVisibility() == 8)
            b();
        }
      }
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool;
    if (this.n.getVisibility() == 0)
    {
      bool = true;
      return bool;
    }
    int i1 = paramMotionEvent.getAction();
    this.j = paramMotionEvent.getRawX();
    this.k = paramMotionEvent.getRawY();
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    int i2 = localRect.top;
    this.k -= i2;
    switch (i1)
    {
    default:
    case 0:
    case 2:
      while (true)
      {
        bool = this.u;
        break;
        this.u = false;
        setFocusable(false);
        this.l = paramMotionEvent.getX();
        this.m = paramMotionEvent.getY();
        continue;
        int i7 = (int)Math.abs(paramMotionEvent.getX() - this.l);
        int i8 = (int)Math.abs(paramMotionEvent.getY() - this.m);
        if ((i7 > this.v) || (i8 > this.v) || (this.u))
        {
          this.u = true;
          a(false);
          if (this.c.a.getBoolean("Is_first_tips_move", true))
          {
            this.c.b.putBoolean("Is_first_tips_move", false).commit();
            bgl localbgl = new bgl(this);
            this.y.post(localbgl);
          }
        }
      }
    case 1:
    }
    this.p = paramMotionEvent.getX();
    int i3 = this.h;
    int i4 = this.i;
    if (i3 < 0)
      i3 = 0;
    int i5 = 0;
    if (i4 < 0);
    while (true)
    {
      int i6 = (i3 & 0xFFFF) + ((i5 & 0xFFFF) << 16);
      this.c.a.getInt("camera_Box_Coordinate", -1);
      this.c.b.putInt("camera_Box_Coordinate", i6).commit();
      this.m = 0.0F;
      this.l = 0.0F;
      break;
      i5 = i4;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.privacy.CameraSwitchWindowView
 * JD-Core Version:    0.6.2
 */