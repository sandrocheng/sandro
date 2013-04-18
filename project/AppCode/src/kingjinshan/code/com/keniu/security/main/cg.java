package com.keniu.security.main;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public final class cg extends Animation
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private final boolean f;
  private Camera g;

  public cg(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, boolean paramBoolean)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.e = 310.0F;
    this.f = paramBoolean;
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = this.a;
    float f2 = f1 + paramFloat * (this.b - f1);
    float f3 = this.c;
    float f4 = this.d;
    Camera localCamera = this.g;
    Matrix localMatrix = paramTransformation.getMatrix();
    localCamera.save();
    if (this.f)
    {
      localCamera.translate(0.0F, 0.0F, paramFloat * this.e);
      localCamera.rotateY(f2);
      localCamera.getMatrix(localMatrix);
      localCamera.restore();
      if (this.f)
        break label144;
      paramTransformation.setAlpha(0.2F + 0.8F * paramFloat);
    }
    while (true)
    {
      localMatrix.preTranslate(-f3, -f4);
      localMatrix.postTranslate(f3, f4);
      return;
      localCamera.translate(0.0F, 0.0F, this.e * (1.0F - paramFloat));
      break;
      label144: paramTransformation.setAlpha(1.0F - 0.2F * paramFloat);
    }
  }

  public final void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.g = new Camera();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cg
 * JD-Core Version:    0.6.2
 */