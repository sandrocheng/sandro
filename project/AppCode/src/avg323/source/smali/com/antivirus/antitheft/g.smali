.class public Lcom/antivirus/antitheft/g;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private j:D

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
.end method

.method private a(D)D
    .locals 2

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 p1, 0x0

    :cond_1
    return-wide p1
.end method

.method private b(D)D
    .locals 2

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 p1, 0x0

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "gpslng"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->a:D

    const-string v1, "gpslng"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->a:D

    const-string v1, "gpslat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->b:D

    const-string v1, "netlng"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->c:D

    const-string v1, "netlat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->d:D

    const-string v1, "gpsacc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->e:D

    const-string v1, "gpstim"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->k:J

    const-string v1, "netacc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/antivirus/antitheft/g;->j:D

    const-string v1, "nettim"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/antivirus/antitheft/g;->l:J

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x1

    const-string v0, ""

    invoke-static {}, Lcom/antivirus/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/antivirus/core/f/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->b:D

    invoke-direct {p0, v5, v6}, Lcom/antivirus/antitheft/g;->a(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    iget-wide v4, p0, Lcom/antivirus/antitheft/g;->a:D

    invoke-direct {p0, v4, v5}, Lcom/antivirus/antitheft/g;->b(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->e:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->d:D

    invoke-direct {p0, v5, v6}, Lcom/antivirus/antitheft/g;->a(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->c:D

    invoke-direct {p0, v5, v6}, Lcom/antivirus/antitheft/g;->b(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->j:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-wide v5, p0, Lcom/antivirus/antitheft/g;->l:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object v0, v3, v4

    const/16 v0, 0x9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    iput-object v3, p0, Lcom/antivirus/antitheft/g;->f:[Ljava/lang/Object;

    return v7
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x232d

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Location.update"

    return-object v0
.end method
