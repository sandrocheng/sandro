.class final Lcom/keniu/security/traffic/du;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangStateReceiver.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4080

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    .line 276
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    .line 278
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 279
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 284
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 286
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->i(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 287
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 289
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 290
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F

    .line 292
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->i(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->i(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(FF)V

    .line 295
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    .line 296
    iget-object v0, p0, Lcom/keniu/security/traffic/du;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F

    goto/16 :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
