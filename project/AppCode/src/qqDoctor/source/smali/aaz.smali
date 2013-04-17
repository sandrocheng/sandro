.class final Laaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laau;


# direct methods
.method constructor <init>(Laau;)V
    .locals 0

    iput-object p1, p0, Laaz;->a:Laau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_notify_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Laau;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laaz;->a:Laau;

    invoke-static {v1}, Laau;->b(Laau;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Laau;->c(Z)Z

    iget-object v1, p0, Laaz;->a:Laau;

    invoke-static {v1}, Laau;->e(Laau;)Labe;

    move-result-object v1

    iget-object v1, v1, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x4d

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Laaz;->a:Laau;

    invoke-static {v2, v1}, Laau;->b(Laau;Ljava/util/List;)V

    iget-object v2, p0, Laaz;->a:Laau;

    invoke-static {v2}, Laau;->c(Laau;)Ljt;

    move-result-object v2

    iget-object v3, v2, Ljt;->h:Ljava/lang/String;

    iget-object v4, v2, Ljt;->a:Lhs;

    new-instance v5, Lju;

    invoke-direct {v5, v2, v3, v1}, Lju;-><init>(Ljt;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhs;->a(Ldv;)Z

    iget-object v2, p0, Laaz;->a:Laau;

    invoke-static {v2}, Laau;->e(Laau;)Labe;

    move-result-object v2

    invoke-virtual {v2, v1}, Labe;->a(Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Laaz;->a:Laau;

    invoke-static {v2}, Laau;->f(Laau;)Lkd;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v2, v2, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "apk_count"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.tencent.qqpimsecure.NOTIFY_UI_NULL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Laaz;->a:Laau;

    invoke-static {v1}, Laau;->g(Laau;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6}, Laau;->c(Z)Z

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
