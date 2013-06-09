.class public Lorg/antivirus/widget/a/a/b;
.super Lorg/antivirus/widget/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 9

    const/16 v1, 0x8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-instance v0, Lorg/antivirus/applocker/a;

    invoke-direct {v0}, Lorg/antivirus/applocker/a;-><init>()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LockedAppsCount"

    invoke-static {p1}, Lorg/antivirus/applocker/a;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "LockedAppsCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/antivirus/widget/a/c;->a(I)Lorg/antivirus/widget/a/c;

    move-result-object v3

    const-string v5, ""

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/antivirus/widget/a/c;->a()I

    move-result v7

    invoke-static {v7, v5, v0, p3, p4}, Lorg/antivirus/widget/a/a/b;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    sget-object v0, Lorg/antivirus/widget/a/c;->a:Lorg/antivirus/widget/a/c;

    invoke-virtual {v3, v0}, Lorg/antivirus/widget/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    invoke-static {p3, p4, v1, v0}, Lorg/antivirus/widget/a/a/b;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->e:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/AVService;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/io/Serializable;

    const-string v0, "trialItem"

    aput-object v0, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "__SAC"

    aput-object v0, v5, v4

    const/4 v0, 0x3

    const/16 v6, 0x1f8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/b;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method
