.class public Lcom/antivirus/core/scanners/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# instance fields
.field private a:Lcom/antivirus/core/c/a;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/antivirus/core/b;

.field protected d:Landroid/os/Handler;

.field private e:[Lcom/antivirus/core/scanners/i;

.field private f:[Lcom/antivirus/core/scanners/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/b;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/antivirus/core/scanners/c;->values()[Lcom/antivirus/core/scanners/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/antivirus/core/scanners/i;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a;->e:[Lcom/antivirus/core/scanners/i;

    invoke-static {}, Lcom/antivirus/core/scanners/c;->values()[Lcom/antivirus/core/scanners/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/antivirus/core/scanners/h;

    iput-object v0, p0, Lcom/antivirus/core/scanners/a;->f:[Lcom/antivirus/core/scanners/h;

    iput-object p1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    iput-object p3, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    sput-object p4, Lcom/antivirus/core/e/b;->b:Ljava/util/ArrayList;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    invoke-virtual {v0}, Lcom/antivirus/core/c/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static a(J)Z
    .locals 2

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/core/scanners/a;)[Lcom/antivirus/core/scanners/h;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->f:[Lcom/antivirus/core/scanners/h;

    return-object v0
.end method

.method static synthetic b(Lcom/antivirus/core/scanners/a;)[Lcom/antivirus/core/scanners/i;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->e:[Lcom/antivirus/core/scanners/i;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;Lcom/antivirus/core/scanners/c;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->e:[Lcom/antivirus/core/scanners/i;

    invoke-virtual {p3}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/antivirus/core/scanners/i;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/antivirus/core/scanners/c;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->e:[Lcom/antivirus/core/scanners/i;

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerFilesResult;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/antivirus/core/scanners/v;->a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerFilesResult;)V

    return-void
.end method

.method public a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/antivirus/core/scanners/z;

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    iget-object v3, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v0, v0}, Lcom/antivirus/core/scanners/z;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V

    if-eqz p1, :cond_0

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p1, v2, :cond_0

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/antivirus/core/scanners/z;->a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V

    return-void
.end method

.method public a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ag;)V
    .locals 3

    new-instance v0, Lcom/antivirus/core/scanners/af;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/antivirus/core/scanners/af;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v1}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p2}, Lcom/antivirus/core/scanners/af;->a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ag;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/antivirus/core/scanners/j;ILcom/antivirus/core/scanners/m;Landroid/os/Messenger;Lcom/antivirus/core/scanners/c;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Lcom/antivirus/core/e/b;

    invoke-direct {v0}, Lcom/antivirus/core/e/b;-><init>()V

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/e/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7d4

    invoke-virtual {p0, v0, v6}, Lcom/antivirus/core/scanners/a;->a(ILandroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0, p5}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/c;)V

    new-instance v3, Lcom/antivirus/core/scanners/b;

    invoke-direct {v3, p0, p1}, Lcom/antivirus/core/scanners/b;-><init>(Lcom/antivirus/core/scanners/a;Lcom/antivirus/core/scanners/j;)V

    new-instance v0, Lcom/antivirus/core/scanners/i;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/core/scanners/i;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/scanners/j;Lcom/antivirus/core/scanners/c;Z)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->e:[Lcom/antivirus/core/scanners/i;

    invoke-virtual {p5}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    invoke-virtual {v0, p2, p3}, Lcom/antivirus/core/scanners/i;->a(ILcom/antivirus/core/scanners/m;)V

    invoke-virtual {v0, p4, v6}, Lcom/antivirus/core/scanners/i;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;)I

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/i;->start()V

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerSmsResult;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/core/scanners/ad;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    invoke-direct {v0, v1}, Lcom/antivirus/core/scanners/ad;-><init>(Lcom/antivirus/core/b;)V

    if-eqz p3, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p3, v1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v1}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v2

    :cond_0
    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/core/scanners/ad;->a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerSmsResult;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    const-class v0, Lcom/antivirus/core/d/a/c;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/core/d/a/h;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/core/d/a/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/antivirus/core/d/a/i;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    const-wide/32 v1, 0x240c8400

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/b;->e(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a;->e()V

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a;->d()V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->f:[Lcom/antivirus/core/scanners/h;

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget-object v2, v0, v1

    :cond_0
    if-nez v2, :cond_4

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/antivirus/core/scanners/h;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/h;-><init>()V

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/h;->a(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScanResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->f:[Lcom/antivirus/core/scanners/h;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScanResults in Index: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->f:[Lcom/antivirus/core/scanners/h;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    const-string v1, " null"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, " not null"

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method b(ILcom/antivirus/core/scanners/c;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    check-cast p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {p0, p2, p3}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    check-cast p3, Lcom/antivirus/core/scanners/ag;

    invoke-virtual {p0, p2, p3}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ag;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"
    
    

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    

	
    
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a;->d()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/a;->e(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "ScannerClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/c;

    const-string v2, "ScannerResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/antivirus/core/scanners/a;->b(ILcom/antivirus/core/scanners/c;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/a;->f(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a;->c()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/a;->g(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public b(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/core/scanners/z;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/antivirus/core/scanners/z;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Landroid/os/Messenger;Lcom/antivirus/core/scanners/m;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v1}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p2}, Lcom/antivirus/core/scanners/z;->b(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const/16 v0, 0x7d4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/antivirus/core/scanners/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/antivirus/core/scanners/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    const-wide/32 v0, 0x240c8400

    iget-object v2, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    invoke-virtual {v2, v0, v1}, Lcom/antivirus/core/b;->e(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/core/c/a;

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/antivirus/core/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    iget-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    invoke-virtual {v0}, Lcom/antivirus/core/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/scanners/a;->a:Lcom/antivirus/core/c/a;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/core/scanners/a;->a()V

    goto :goto_0
.end method

.method e(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/core/scanners/a;->e()V

    return-void
.end method

.method f(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/c;

    invoke-virtual {p0, v0}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/c;)V

    return-void
.end method

.method g(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "package:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "updating"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "D"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d7

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/core/scanners/a;->a(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/core/scanners/a;->a()V

    return-void
.end method
