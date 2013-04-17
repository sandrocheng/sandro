.class public abstract Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field protected d:I

.field protected e:I

.field public f:Z

.field private g:Landroid/view/WindowManager;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->o:Z

    new-instance v0, Ldn;

    invoke-direct {v0, p0}, Ldn;-><init>(Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->p:Landroid/os/Handler;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    invoke-static {}, Ldv;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->getWidth()I

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->n:I

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->m:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->getSuggestedMinimumWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->getSuggestedMinimumWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    iget v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v4, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b:I

    invoke-virtual {p0, v3, v4}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :cond_0
    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    if-gtz v2, :cond_2

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->h:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->j:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->i:F

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->k:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b:I

    :cond_1
    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b:I

    :try_start_0
    iget-object v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    invoke-virtual {p0, v2, v0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(II)Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract a(I)V
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->g:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->h:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->i:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->i:F

    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->i:F

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->j:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->k:F

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b()V

    iput-boolean v5, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    iput-boolean v5, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->o:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->j:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->k:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->n:I

    if-gt v1, v3, :cond_2

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->n:I

    if-gt v2, v1, :cond_2

    iget-boolean v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    if-eqz v1, :cond_1

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b()V

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->d:I

    if-ne v1, v0, :cond_4

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    if-ne v1, v0, :cond_3

    iput v4, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    if-ne v1, v4, :cond_1

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    shl-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_5

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    if-ne v1, v4, :cond_5

    iput v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->l:I

    shl-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    if-ne v1, v0, :cond_1

    iput v4, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->o:Z

    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    if-ne v1, v0, :cond_6

    const/16 v1, -0x23

    iput v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->m:I

    :goto_2
    iget v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->e:I

    iput v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->d:I

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->c:Z

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x23

    iput v1, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->m:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setRocketDone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->o:Z

    return-void
.end method

.method public setSelfWidth(I)V
    .locals 0

    return-void
.end method
