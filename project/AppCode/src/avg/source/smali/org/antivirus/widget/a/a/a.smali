.class public Lorg/antivirus/widget/a/a/a;
.super Lorg/antivirus/widget/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 7

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lorg/antivirus/AVSettings;->getLastBackupTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    invoke-static {}, Lorg/antivirus/ui/backup/apps/RestoreActivity;->f()V

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->getLastBackupTime()J

    move-result-wide v0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    const v0, 0x7f0900fd

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/antivirus/widget/a/b;->a:Lorg/antivirus/widget/a/b;

    invoke-virtual {v1}, Lorg/antivirus/widget/a/b;->a()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p3, p4}, Lorg/antivirus/widget/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    const/16 v0, 0x8

    invoke-static {p3, p4, v6, v0}, Lorg/antivirus/widget/a/a/a;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->g:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/AVService;

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/io/Serializable;

    const-string v0, "trialItem"

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    const-string v4, "__SAC"

    aput-object v4, v5, v0

    const/4 v0, 0x3

    const/16 v4, 0x1f8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/a;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return v2

    :cond_1
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
