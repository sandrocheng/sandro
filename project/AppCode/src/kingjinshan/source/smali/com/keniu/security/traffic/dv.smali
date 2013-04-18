.class final Lcom/keniu/security/traffic/dv;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangStateReceiver.java"

# interfaces
.implements Lcom/keniu/security/traffic/dc;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f02022b

    const v9, 0x7f02022a

    const v8, 0x7f020229

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 331
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    :cond_0
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 337
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 567
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_2
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 342
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 345
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 348
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    .line 350
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->o(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 352
    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e()I

    .line 354
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->p(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->o(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    .line 372
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 374
    iget-boolean v1, v0, Lcom/keniu/security/traffic/y;->r:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/keniu/security/traffic/y;->s:Z

    if-eqz v0, :cond_4

    .line 375
    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_11

    .line 376
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    :cond_4
    :goto_3
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d

    .line 383
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    .line 387
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    .line 390
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;

    move-result-object v0

    if-nez v0, :cond_5

    .line 391
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f080414

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ClickableGridView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Lcom/keniu/security/traffic/ClickableGridView;)Lcom/keniu/security/traffic/ClickableGridView;

    .line 393
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_6

    .line 394
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f080178

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 396
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_7

    .line 397
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f08040f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 399
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    .line 401
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f080411

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_9

    .line 405
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f080412

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 407
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_a

    .line 409
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f080410

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_b

    .line 414
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f08040e

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_c

    .line 418
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v2, 0x7f08040d

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 423
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-ne v0, v1, :cond_12

    .line 430
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    :goto_4
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 477
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u672c\u6b21\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->t:J

    sub-long v0, v1, v3

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v3, 0x36ee80

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0x36ee80

    rem-long/2addr v0, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->y(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    .line 562
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->A(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J

    goto/16 :goto_0

    .line 346
    :cond_e
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 357
    :cond_f
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->o(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 358
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->p(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->o(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f()I

    goto/16 :goto_2

    .line 365
    :cond_10
    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->e()I

    .line 367
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->p(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->e(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 378
    :cond_11
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 436
    :cond_12
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 443
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 449
    :cond_13
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 455
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 494
    :cond_14
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u7f51\u7edc\uff1a2G/3G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u672c\u6708\u5df2\u7528\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 506
    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_15

    .line 508
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/traffic/dw;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dw;-><init>(Lcom/keniu/security/traffic/dv;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    :goto_6
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->y(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->z(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 532
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :goto_7
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->A(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->B(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 546
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 528
    :cond_15
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 539
    :cond_16
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 552
    :cond_17
    iget-object v0, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dv;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5
.end method
