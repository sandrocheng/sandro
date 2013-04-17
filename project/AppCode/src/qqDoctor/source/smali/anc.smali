.class final Lanc;
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

    iput-object p1, p0, Lanc;->c:Lams;

    iput-object p2, p0, Lanc;->a:Ljava/util/List;

    iput-object p3, p0, Lanc;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lanc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lanc;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v4, p0, Lanc;->c:Lams;

    invoke-static {v4}, Lams;->B(Lams;)Ljp;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljp;->a(Lmk;Z)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lanc;->c:Lams;

    invoke-static {v4}, Lams;->C(Lams;)Lki;

    move-result-object v4

    invoke-virtual {v4, v0}, Lki;->remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    iget-object v4, p0, Lanc;->c:Lams;

    invoke-static {v4, v0}, Lams;->a(Lams;Lmk;)V

    iget-object v4, p0, Lanc;->c:Lams;

    invoke-static {v4}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lanc;->c:Lams;

    invoke-static {v0}, Lams;->D(Lams;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lanc;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lanc;->c:Lams;

    invoke-static {v0}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lanc;->c:Lams;

    invoke-static {v1}, Lams;->y(Lams;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lanc;->c:Lams;

    invoke-static {v0}, Lams;->w(Lams;)Ljm;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljm;->c(I)V

    iget-object v0, p0, Lanc;->c:Lams;

    invoke-static {v0}, Lams;->E(Lams;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
