.class final Lbbh;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:I

.field private synthetic c:Lbax;


# direct methods
.method constructor <init>(Lbax;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lbbh;->c:Lbax;

    iput-object p2, p0, Lbbh;->a:Ljava/util/List;

    iput p3, p0, Lbbh;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/tencent/tmsecure/module/netsetting/Rule;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/netsetting/Rule;-><init>()V

    iget-object v0, p0, Lbbh;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget v0, v0, Lmn;->a:I

    iput v0, v1, Lcom/tencent/tmsecure/module/netsetting/Rule;->uid:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/tmsecure/module/netsetting/Rule;->type:I

    iget v0, p0, Lbbh;->b:I

    invoke-static {v0}, La;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmsecure/module/netsetting/Rule;->uidMobileVerdict:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbbh;->c:Lbax;

    invoke-static {v1}, Lbax;->g(Lbax;)Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->setRules(Ljava/util/List;)V

    iget-object v0, p0, Lbbh;->c:Lbax;

    invoke-static {v0}, Lbax;->h(Lbax;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lbbh;->c:Lbax;

    invoke-static {v0}, Lbax;->j(Lbax;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lbbh;->c:Lbax;

    invoke-static {v2}, Lbax;->i(Lbax;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
