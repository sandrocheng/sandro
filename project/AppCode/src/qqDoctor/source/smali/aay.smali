.class final Laay;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Laau;


# direct methods
.method constructor <init>(Laau;Z)V
    .locals 0

    iput-object p1, p0, Laay;->b:Laau;

    iput-boolean p2, p0, Laay;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "extra_notify_id"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Laau;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->b(Laau;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Laau;->b(Z)Z

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->e(Laau;)Labe;

    move-result-object v0

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x79

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->g(Laau;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v8}, Laau;->b(Z)Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->c(Laau;)Ljt;

    move-result-object v0

    iget-object v5, v0, Ljt;->i:Ljava/lang/String;

    iget-object v6, v0, Ljt;->a:Lhs;

    new-instance v7, Lju;

    invoke-direct {v7, v0, v5, v2}, Lju;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lhs;->a(Ldv;)Z

    iget-boolean v0, p0, Laay;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->b(Laau;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x1

    iput v5, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Laay;->b:Laau;

    invoke-static {v5}, Laau;->h(Laau;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->h(Laau;)Landroid/os/Handler;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->f(Laau;)Lkd;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "third_party_app_count"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0}, Laau;->f(Laau;)Lkd;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "system_app_count"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laay;->b:Laau;

    invoke-static {v0, v2}, Laau;->b(Laau;Ljava/util/List;)V

    const-string v0, "com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
