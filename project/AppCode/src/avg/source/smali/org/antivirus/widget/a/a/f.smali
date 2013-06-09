.class public Lorg/antivirus/widget/a/a/f;
.super Lorg/antivirus/widget/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 8

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-static {}, Lorg/antivirus/AVSettings;->isFlashLightOn()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/antivirus/widget/a/e;->a:Lorg/antivirus/widget/a/e;

    :goto_0
    invoke-virtual {v0}, Lorg/antivirus/widget/a/e;->a()I

    move-result v1

    invoke-static {v1, v4, v4, p3, p4}, Lorg/antivirus/widget/a/a/f;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    invoke-static {p3, p4, v3, v3}, Lorg/antivirus/widget/a/a/f;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->j:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/AVService;

    const/16 v4, 0x9

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/io/Serializable;

    const/4 v6, 0x0

    const-string v7, "flashlightKey"

    aput-object v7, v5, v6

    invoke-virtual {v0}, Lorg/antivirus/widget/a/e;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    const-string v6, "__SAC"

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/16 v6, 0x1f9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/f;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return v2

    :cond_0
    sget-object v0, Lorg/antivirus/widget/a/e;->b:Lorg/antivirus/widget/a/e;

    goto :goto_0
.end method
