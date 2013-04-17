.class final Land;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lams;


# direct methods
.method constructor <init>(Lams;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Land;->c:Lams;

    iput-object p2, p0, Land;->a:Ljava/util/List;

    iput-object p3, p0, Land;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Land;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Land;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v4, p0, Land;->c:Lams;

    invoke-static {v4}, Lams;->C(Lams;)Lki;

    move-result-object v4

    invoke-virtual {v4}, Lki;->getAllCallLog()Ljava/util/List;

    iget-object v4, p0, Land;->c:Lams;

    invoke-static {v4}, Lams;->C(Lams;)Lki;

    move-result-object v4

    invoke-virtual {v4, v0}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lky;

    invoke-direct {v4, v0}, Lky;-><init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v5, p0, Land;->c:Lams;

    invoke-static {v5}, Lams;->F(Lams;)Lhi;

    move-result-object v5

    invoke-virtual {v5, v4}, Lhi;->a(Lky;)J

    iget-object v4, p0, Land;->c:Lams;

    invoke-static {v4, v0}, Lams;->a(Lams;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v4, p0, Land;->c:Lams;

    invoke-static {v4}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Land;->c:Lams;

    invoke-static {v0}, Lams;->G(Lams;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Land;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Land;->c:Lams;

    invoke-static {v0}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Land;->c:Lams;

    invoke-static {v1}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Land;->c:Lams;

    invoke-static {v0}, Lams;->w(Lams;)Ljm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljm;->c(I)V

    iget-object v0, p0, Land;->c:Lams;

    invoke-static {v0}, Lams;->H(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method
