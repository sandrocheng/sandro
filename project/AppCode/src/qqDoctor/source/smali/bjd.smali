.class public final Lbjd;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 0

    iput-object p1, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->u(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;

    move-result-object v2

    iget-object v3, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    iget-object v2, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-virtual {v0, v2}, Lait;->a(Ljava/util/List;)V

    const-string v0, "smslog"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmk;

    const-string v2, "id"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    iput-boolean v3, v0, Lmk;->l:Z

    iget-object v3, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3, v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lmk;)Z

    move-result v4

    iput-boolean v4, v0, Lmk;->i:Z

    iget-object v4, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v4

    invoke-virtual {v4}, Lait;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v4

    invoke-virtual {v4}, Lait;->notifyDataSetChanged()V

    iget-boolean v4, v0, Lmk;->i:Z

    if-eqz v4, :cond_3

    monitor-exit v1

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v4}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->v(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lbje;

    invoke-direct {v5, p0, v0, v3, v2}, Lbje;-><init>(Lbjd;Lmk;II)V

    invoke-static {v4, v5}, La;->a(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
