package com.tencent.qqpimsecure.view.faceverify;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

public class FaceEyesView extends View
{
  private Paint a = null;
  private boolean b = false;
  private Rect c = null;
  private Rect d = null;
  private Rect e = null;
  private Context f;
  private Drawable g;

  public FaceEyesView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.f = paramContext;
    this.a = new Paint();
    this.a.setStyle(Paint.Style.STROKE);
    this.a.setStrokeWidth(3.0F);
    this.a.setColor(-16711936);
    this.g = this.f.getResources().getDrawable(2130837728);
  }

  public final void a(boolean paramBoolean, Rect paramRect1, Rect paramRect2, Rect paramRect3)
  {
    this.b = paramBoolean;
    if (paramBoolean)
    {
      this.c = paramRect1;
      this.d = paramRect2;
      this.e = paramRect3;
    }
    invalidate();
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.b)
    {
      this.g.setBounds(this.c);
      this.g.draw(paramCanvas);
      if ((this.d.left != -4) && (this.e.left != -4))
      {
        paramCanvas.drawRect(this.d, this.a);
        paramCanvas.drawRect(this.e, this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.faceverify.FaceEyesView
 * JD-Core Version:    0.6.2
 */