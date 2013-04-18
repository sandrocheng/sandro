.class final Lcom/jxphone/mosecurity/logic/j;
.super Ljava/lang/Object;
.source "PhoneCallLogicImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/a;

.field final synthetic b:Lcom/jxphone/mosecurity/logic/i;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/logic/i;Lcom/keniu/security/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    iput-object p2, p0, Lcom/jxphone/mosecurity/logic/j;->a:Lcom/keniu/security/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 502
    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 504
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/logic/i;F)F

    .line 505
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/i;F)F

    goto :goto_0

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/logic/i;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->c(Lcom/jxphone/mosecurity/logic/i;F)F

    .line 509
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/i;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->d(Lcom/jxphone/mosecurity/logic/i;F)F

    .line 511
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/logic/i;F)F

    .line 512
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/i;->b(Lcom/jxphone/mosecurity/logic/i;F)F

    .line 514
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/i;->c(Lcom/jxphone/mosecurity/logic/i;)F

    move-result v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/i;->d(Lcom/jxphone/mosecurity/logic/i;)F

    move-result v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/j;->a:Lcom/keniu/security/a;

    invoke-static {v0, v1, v2}, Lcom/jxphone/mosecurity/logic/i;->a(Lcom/jxphone/mosecurity/logic/i;FF)V

    .line 515
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->e(Lcom/jxphone/mosecurity/logic/i;)F

    .line 516
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/j;->b:Lcom/jxphone/mosecurity/logic/i;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/i;->f(Lcom/jxphone/mosecurity/logic/i;)F

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
