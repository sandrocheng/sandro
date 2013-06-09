.class public final Lorg/antivirus/core/scanners/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lorg/antivirus/core/EngineSettings;

.field protected c:Landroid/os/Handler;

.field d:[Lorg/antivirus/core/scanners/h;

.field e:[Lorg/antivirus/core/scanners/g;

.field private f:Lorg/antivirus/core/observers/SMSContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/antivirus/core/EngineSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/antivirus/core/scanners/c;->values()[Lorg/antivirus/core/scanners/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/antivirus/core/scanners/h;

    iput-object v0, p0, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-static {}, Lorg/antivirus/core/scanners/c;->values()[Lorg/antivirus/core/scanners/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/antivirus/core/scanners/g;

    iput-object v0, p0, Lorg/antivirus/core/scanners/a;->e:[Lorg/antivirus/core/scanners/g;

    iput-object p1, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    iput-object p3, p0, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p0}, Lorg/antivirus/core/scanners/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;Lorg/antivirus/core/scanners/c;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-virtual {p3}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/antivirus/core/scanners/h;->a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isAutoScanSMS()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/observers/SMSContentObserver;

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/antivirus/core/observers/SMSContentObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    invoke-virtual {v0}, Lorg/antivirus/core/observers/SMSContentObserver;->registerSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/core/scanners/a;->b()V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x429

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lorg/antivirus/core/scanners/c;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-virtual {p1}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/w;

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    iget-object v2, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/antivirus/core/scanners/w;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lorg/antivirus/core/scanners/w;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V

    return-void
.end method

.method public final a(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ad;)V
    .locals 3

    new-instance v0, Lorg/antivirus/core/scanners/ac;

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    iget-object v2, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/scanners/ac;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;)V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lorg/antivirus/core/scanners/ac;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ad;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/antivirus/core/scanners/i;ILorg/antivirus/core/scanners/l;Landroid/os/Messenger;Lorg/antivirus/core/scanners/c;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0, p5}, Lorg/antivirus/core/scanners/a;->a(Lorg/antivirus/core/scanners/c;)V

    new-instance v0, Lorg/antivirus/core/scanners/b;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/core/scanners/b;-><init>(Lorg/antivirus/core/scanners/a;Lorg/antivirus/core/scanners/i;)V

    new-instance v1, Lorg/antivirus/core/scanners/h;

    iget-object v2, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0, p5}, Lorg/antivirus/core/scanners/h;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/antivirus/core/scanners/i;Lorg/antivirus/core/scanners/c;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-virtual {p5}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    aput-object v1, v0, v2

    invoke-virtual {v1, p2, p3}, Lorg/antivirus/core/scanners/h;->a(ILorg/antivirus/core/scanners/l;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p4, v0}, Lorg/antivirus/core/scanners/h;->a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;)I

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/h;->start()V

    return-void
.end method

.method public final b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->e:[Lorg/antivirus/core/scanners/g;

    invoke-virtual {p1}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v2, v0, v1

    if-nez v2, :cond_3

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/antivirus/core/scanners/g;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/g;-><init>()V

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/g;->a(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "getScanResults "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->e:[Lorg/antivirus/core/scanners/g;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mScanResults in Index: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->e:[Lorg/antivirus/core/scanners/g;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    const-string v1, " null"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, " not null"

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    invoke-virtual {v0}, Lorg/antivirus/core/observers/SMSContentObserver;->unregisterSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/scanners/a;->f:Lorg/antivirus/core/observers/SMSContentObserver;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Lorg/antivirus/core/scanners/c;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/w;

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->b:Lorg/antivirus/core/EngineSettings;

    iget-object v2, p0, Lorg/antivirus/core/scanners/a;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/antivirus/core/scanners/w;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lorg/antivirus/core/scanners/w;->a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ScannerPackagesResult;)V

    :cond_0
    return-void
.end method
