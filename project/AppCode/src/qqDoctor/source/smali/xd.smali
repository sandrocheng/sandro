.class final Lxd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/ICheckListener;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/tencent/tmsecure/module/update/UpdateManager;

.field private synthetic c:Llc;

.field private synthetic d:Lxb;


# direct methods
.method constructor <init>(Lxb;Lcom/tencent/tmsecure/module/update/UpdateManager;Llc;)V
    .locals 0

    iput-object p1, p0, Lxd;->d:Lxb;

    iput-object p2, p0, Lxd;->b:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iput-object p3, p0, Lxd;->c:Llc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckCanceled()V
    .locals 0

    return-void
.end method

.method public final onCheckEvent(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lxd;->d:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04fc

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxd;->a:Z

    :cond_0
    return-void
.end method

.method public final onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lxd;->d:Lxb;

    invoke-static {v0}, Lxb;->b(Lxb;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lxd;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lxd;->b:Lcom/tencent/tmsecure/module/update/UpdateManager;

    iget-object v1, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    iget-object v0, p0, Lxd;->d:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01bb

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lxd;->c:Llc;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->e:Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_time_of_update"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ever_update"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lxd;->d:Lxb;

    const/16 v1, 0x65

    iget-object v2, p0, Lxd;->c:Llc;

    invoke-static {v0, v1, v2}, Lxb;->a(Lxb;ILlc;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lxd;->d:Lxb;

    invoke-static {v0}, Lxb;->a(Lxb;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04fb

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lxd;->c:Llc;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Llc;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lxd;->d:Lxb;

    invoke-static {v0}, Lxb;->c(Lxb;)Z

    iput-boolean v2, p0, Lxd;->a:Z

    iget-object v0, p0, Lxd;->d:Lxb;

    const/16 v1, 0x69

    iget-object v2, p0, Lxd;->c:Llc;

    invoke-static {v0, v1, v2}, Lxb;->a(Lxb;ILlc;)V

    goto :goto_1
.end method

.method public final onCheckStarted()V
    .locals 0

    return-void
.end method
