.class public Lorg/antivirus/widget/a/a/g;
.super Lorg/antivirus/widget/a/a/i;


# instance fields
.field private a:Lorg/antivirus/core/scanners/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 8

    if-nez p2, :cond_1

    new-instance v0, Lorg/antivirus/core/scanners/g;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/antivirus/core/scanners/g;->a(Landroid/content/Context;)V

    iget-wide v1, v0, Lorg/antivirus/core/scanners/g;->b:J

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/g;->b()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "firstScan"

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatFound"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "threatCount"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ScannerClient"

    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    :cond_1
    const-string v0, "firstScan"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/antivirus/widget/a/f;->c:Lorg/antivirus/widget/a/f;

    move-object v1, v0

    :goto_2
    const/4 v0, 0x0

    sget-object v2, Lorg/antivirus/widget/a/f;->b:Lorg/antivirus/widget/a/f;

    invoke-virtual {v1, v2}, Lorg/antivirus/widget/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "ScannerClient"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/c;

    iput-object v0, p0, Lorg/antivirus/widget/a/a/g;->a:Lorg/antivirus/core/scanners/c;

    const-string v0, "threatCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1}, Lorg/antivirus/widget/a/f;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, p3, p4}, Lorg/antivirus/widget/a/a/g;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    const/16 v2, 0x8

    sget-object v0, Lorg/antivirus/widget/a/f;->b:Lorg/antivirus/widget/a/f;

    invoke-virtual {v1, v0}, Lorg/antivirus/widget/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p3, p4, v2, v0}, Lorg/antivirus/widget/a/a/g;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    iget v6, p4, Lorg/antivirus/widget/a/l;->a:I

    sget-object v0, Lorg/antivirus/widget/a/a/h;->a:[I

    invoke-virtual {v1}, Lorg/antivirus/widget/a/f;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not supported protection state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string v0, "threatFound"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/antivirus/widget/a/f;->b:Lorg/antivirus/widget/a/f;

    move-object v1, v0

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/antivirus/widget/a/f;->a:Lorg/antivirus/widget/a/f;

    move-object v1, v0

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    goto :goto_3

    :pswitch_0
    sget-object v1, Lorg/antivirus/widget/a/i;->a:Lorg/antivirus/widget/a/i;

    const/4 v2, 0x0

    const-class v3, Lorg/antivirus/ui/main/AntivirusMainScreen;

    const/4 v4, 0x6

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/io/Serializable;

    const/4 v0, 0x0

    const-string v7, "ScannerClient"

    aput-object v7, v5, v0

    const/4 v0, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x2

    const-string v7, "StartedFromWidget"

    aput-object v7, v5, v0

    const/4 v0, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x4

    const-string v7, "avmsStartScan"

    aput-object v7, v5, v0

    const/4 v0, 0x5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/g;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v6, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    return v0

    :pswitch_1
    sget-object v1, Lorg/antivirus/widget/a/i;->a:Lorg/antivirus/widget/a/i;

    const/4 v2, 0x0

    const-class v3, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    const/4 v4, 0x6

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/io/Serializable;

    const/4 v0, 0x0

    const-string v7, "ScannerClient"

    aput-object v7, v5, v0

    const/4 v0, 0x1

    iget-object v7, p0, Lorg/antivirus/widget/a/a/g;->a:Lorg/antivirus/core/scanners/c;

    aput-object v7, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/g;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
