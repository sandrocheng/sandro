.class public final Lbjg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 0

    iput-object p1, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lui;

    move-result-object v0

    iget-object v0, v0, Lui;->d:Ljava/util/HashSet;

    new-instance v1, Lmk;

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-direct {v1, p1}, Lmk;-><init>(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)V

    iget v1, v1, Lmk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->e(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;

    move-result-object v2

    iget-object v3, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    iget-object v2, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v2, v0, Lmk;->id:I

    iget-object v3, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->g(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I

    move-result v2

    iput v2, v0, Lmk;->h:I

    :cond_2
    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V

    iget-object v0, p0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->i(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lbjh;

    invoke-direct {v2, p0}, Lbjh;-><init>(Lbjg;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
