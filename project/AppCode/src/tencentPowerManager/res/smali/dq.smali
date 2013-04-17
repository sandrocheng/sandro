.class public final Ldq;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)V
    .locals 0

    iput-object p1, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v7, 0xf

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_3

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    iget-object v4, v0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget v1, v0, Ldr;->c:I

    iget-object v4, v0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_2

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    iget-object v1, v0, Ldr;->a:Ljava/util/ArrayList;

    iget v7, v0, Ldr;->c:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr$a;

    iget v7, v1, Ldr$a;->a:I

    iget-object v1, v0, Ldr;->a:Ljava/util/ArrayList;

    iget v8, v0, Ldr;->c:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr$a;

    iget v1, v1, Ldr$a;->b:I

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v1, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    iget-object v5, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v1, v5, v4}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Ldr;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ldr;->c:I

    move v0, v2

    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v1}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->clearAnimation()V

    iget-object v1, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    iget-object v4, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v1, v4}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_0

    new-instance v1, Ldr;

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I

    move-result v0

    iget-object v2, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v2}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->e(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I

    move-result v2

    iget-object v3, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v3}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->f(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ldr;-><init>(IILandroid/content/Context;)V

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->g(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->g(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v2}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v3}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ldr;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, v1, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    iget-object v0, v1, Ldr;->a:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr$a;

    iget v5, v0, Ldr$a;->a:I

    iget-object v0, v1, Ldr;->a:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr$a;

    iget v0, v0, Ldr$a;->b:I

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    iget-object v1, v1, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Ldq;->a:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method
