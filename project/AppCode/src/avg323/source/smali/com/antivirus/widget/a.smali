.class public Lcom/antivirus/widget/a;
.super Lcom/avg/widget/g;


# instance fields
.field private f:Lcom/antivirus/widget/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/avg/toolkit/e/a;Z)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avg/widget/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/avg/toolkit/e/a;Z)V

    new-instance v0, Lcom/antivirus/widget/a/a;

    invoke-direct {v0, p1}, Lcom/antivirus/widget/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/widget/a;->f:Lcom/antivirus/widget/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/antivirus/widget/a;->f:Lcom/antivirus/widget/a/a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private u()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/antivirus/widget/a;->a(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()[I
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v2, v5, [I

    const/4 v0, 0x0

    aput v3, v2, v0

    iget-object v0, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput v0, v2, v3

    aput v4, v2, v4

    aput v5, v2, v1

    return-object v2

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected c()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/antivirus/widget/AvWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected d()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;

    invoke-direct {v2}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;

    invoke-direct {v2}, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/battery/widget/BatteryWidgetPlugin;

    invoke-direct {v2}, Lcom/avg/tuneup/battery/widget/BatteryWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/taskkiller/widget/TaskKillerWidgetPlugin;

    invoke-direct {v2}, Lcom/avg/tuneup/taskkiller/widget/TaskKillerWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;

    invoke-direct {v2}, Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/antivirus/widget/applocker/AppLockerWidgetPlugin;

    iget-object v3, p0, Lcom/antivirus/widget/a;->c:Lcom/avg/toolkit/e/a;

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->d:Lcom/avg/toolkit/e/c;

    sget-object v4, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    invoke-virtual {v3, v4}, Lcom/avg/toolkit/e/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/antivirus/widget/applocker/AppLockerWidgetPlugin;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;

    invoke-direct {v2}, Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/antivirus/widget/update/UpdateWidgetPlugin;

    invoke-direct {v2}, Lcom/antivirus/widget/update/UpdateWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;

    iget-object v3, p0, Lcom/antivirus/widget/a;->c:Lcom/avg/toolkit/e/a;

    iget-object v3, v3, Lcom/avg/toolkit/e/a;->h:Lcom/avg/toolkit/e/c;

    sget-object v4, Lcom/avg/toolkit/e/c;->c:Lcom/avg/toolkit/e/c;

    invoke-virtual {v3, v4}, Lcom/avg/toolkit/e/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;

    invoke-direct {v2}, Lcom/avg/tuneup/storage/widget/StorageWidgetPlugin;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-static {}, Lcom/avg/tuneup/battery/widget/BatteryWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/widget/a;->c(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/antivirus/widget/appbackup/AppBackupWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/antivirus/widget/a;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected f()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    const/16 v2, 0x2af8

    const/4 v3, 0x6

    invoke-static {v1, v2, v3, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method protected g()I
    .locals 1

    const v0, 0x7f020195

    return v0
.end method

.method protected h()I
    .locals 1

    const v0, 0x7f020194

    return v0
.end method

.method protected i()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/widget/AvWidgetConfigurationActivity;

    return-object v0
.end method

.method protected j()[Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/s;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/widget/a;->e:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/antivirus/widget/b;

    invoke-direct {v1, p0}, Lcom/antivirus/widget/b;-><init>(Lcom/antivirus/widget/a;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    return-object v0
.end method

.method protected k()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/ui/main/ActivationActivity;

    return-object v0
.end method

.method protected l()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    invoke-direct {p0}, Lcom/antivirus/widget/a;->u()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    const/16 v2, 0x2af8

    const/4 v3, 0x6

    invoke-static {v1, v2, v3, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method protected m()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/avg/widget/g;->onDestroy()V

    iget-object v0, p0, Lcom/antivirus/widget/a;->f:Lcom/antivirus/widget/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/widget/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/widget/a;->f:Lcom/antivirus/widget/a/a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
