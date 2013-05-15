.class public Lcom/avast/android/mobilesecurity/ui/m;
.super Ljava/lang/Object;
.source "ViewPagerUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    const/high16 v0, 0x4000

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/ui/m;->a(Landroid/support/v4/view/ViewPager;F)V

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    .line 23
    return-void
.end method

.method public static a(Landroid/support/v4/view/ViewPager;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTouchSlop"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "ViewPagerUtils"

    const-string v2, "Can\'t multiply touch slop value."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    const-string v1, "ViewPagerUtils"

    const-string v2, "Can\'t multiply touch slop value."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 44
    :catch_2
    move-exception v0

    .line 45
    const-string v1, "ViewPagerUtils"

    const-string v2, "Can\'t multiply touch slop value."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
