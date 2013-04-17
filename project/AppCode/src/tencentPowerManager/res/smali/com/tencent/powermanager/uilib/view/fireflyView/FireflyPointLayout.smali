.class public Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;
.super Landroid/widget/AbsoluteLayout;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldr;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:I

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->e:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    new-instance v0, Ldq;

    invoke-direct {v0, p0}, Ldq;-><init>(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    return v0
.end method

.method public static synthetic b(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c:I

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v1, Ldr;

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d:I

    iget-object v4, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Ldr;-><init>(IILandroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d:I

    return v0
.end method

.method public static synthetic f(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->g:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget v0, Lac;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ldv;->g()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c:I

    invoke-static {}, Ldv;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ldv;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->c:I

    invoke-static {}, Ldv;->g()I

    move-result v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->d:I

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    iget-object v0, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->a()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    iget-object v0, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;->clearAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->h:Z

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setRestrictRect(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->e:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->f:Landroid/graphics/Rect;

    iput p3, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->g:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldr;

    invoke-virtual {v0, p1, p2, p3}, Ldr;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v1, v0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, v0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr$a;

    iget v4, v1, Ldr$a;->a:I

    iget-object v1, v0, Ldr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr$a;

    iget v1, v1, Ldr$a;->b:I

    invoke-direct {v3, v5, v5, v4, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v0, v0, Ldr;->b:Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointView;

    invoke-virtual {p0, v0, v3}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method
