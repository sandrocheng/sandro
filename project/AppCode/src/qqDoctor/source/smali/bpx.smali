.class final Lbpx;
.super Ljava/lang/Object;

# interfaces
.implements Lpt$a;


# instance fields
.field private synthetic a:Lbpu;


# direct methods
.method constructor <init>(Lbpu;)V
    .locals 0

    iput-object p1, p0, Lbpx;->a:Lbpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbpx;->a:Lbpu;

    iget-object v0, v0, Lbpu;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lkw;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lkw;->I()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->b(Lbpu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->c(Lbpu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->d(Lbpu;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {p1, v2}, Lkw;->b(I)V

    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->e(Lbpu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->f(Lbpu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lbpx;->a:Lbpu;

    invoke-static {v0}, Lbpu;->g(Lbpu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbpx;->a:Lbpu;

    iget-object v0, v0, Lbpu;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
