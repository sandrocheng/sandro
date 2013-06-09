.class public Lorg/antivirus/widget/a/a/d;
.super Lorg/antivirus/widget/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 7

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const v0, 0x7f02014b

    invoke-static {v0, v3, v3, p3, p4}, Lorg/antivirus/widget/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    invoke-static {p3, p4, v1, v1}, Lorg/antivirus/widget/a/a/d;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->h:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/AVService;

    const/4 v4, 0x4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/io/Serializable;

    const/4 v0, 0x0

    const-string v6, "__SAC"

    aput-object v6, v5, v0

    const/16 v0, 0x1fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/d;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return v2
.end method
