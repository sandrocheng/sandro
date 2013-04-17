.class final Lbyh;
.super Lbxw;


# instance fields
.field private synthetic e:Lbyg;


# direct methods
.method constructor <init>(Lbyg;)V
    .locals 0

    iput-object p1, p0, Lbyh;->e:Lbyg;

    invoke-direct {p0}, Lbxw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onBatteryLevelChanged(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseWifi(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->a(Lbyg;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;
    .locals 1

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->b(Lbyg;)Lcom/tencent/tmsecure/module/powersaving/PowerSavingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onStartBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenWifi(Z)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onStopBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseMobileNetwork(Z)V

    goto :goto_0
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onFinishBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenMobileNetwork(Z)V

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onCloseBlueTooth(Z)V

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lbyh;->e:Lbyg;

    invoke-static {v0}, Lbyg;->c(Lbyg;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/powersaving/PowerSavingEventListener;->onOpenBlueTooth(Z)V

    goto :goto_0
.end method
