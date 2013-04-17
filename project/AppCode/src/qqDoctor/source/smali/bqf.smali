.class final Lbqf;
.super Ljava/lang/Object;

# interfaces
.implements Lpt$a;


# instance fields
.field final synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    iput-object p1, p0, Lbqf;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->L(Lbqb;)I

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
    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->M(Lbqb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->M(Lbqb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->N(Lbqb;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->M(Lbqb;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->O(Lbqb;)I

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->P(Lbqb;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_1

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->u(Lbqb;)I

    move-result v0

    const/16 v1, 0x5f

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->Q(Lbqb;)I

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->R(Lbqb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->M(Lbqb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->R(Lbqb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->M(Lbqb;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lbqf;->a:Lbqb;

    invoke-static {v1}, Lbqb;->R(Lbqb;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lbqf;->a:Lbqb;

    invoke-static {v0}, Lbqb;->v(Lbqb;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lpt;->a()Lpt;

    move-result-object v0

    new-instance v1, Lbqg;

    invoke-direct {v1, p0}, Lbqg;-><init>(Lbqf;)V

    invoke-virtual {v0, v1}, Lpt;->a(Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0
.end method
