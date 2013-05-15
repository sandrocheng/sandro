package com.actionbarsherlock;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface ActionBarSherlock$Implementation
{
  public static final int DEFAULT_API = -1;
  public static final int DEFAULT_DPI = -1;

  public abstract int api();

  public abstract int dpi();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.ActionBarSherlock.Implementation
 * JD-Core Version:    0.6.2
 */