.class public Lorg/antivirus/widget/a/a/j;
.super Lorg/antivirus/widget/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/widget/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;Z)Z
    .locals 6

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v0, 0x7f020169

    invoke-static {v0, v3, v3, p3, p4}, Lorg/antivirus/widget/a/a/j;->a(ILjava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;)V

    invoke-static {p3, p4, v1, v1}, Lorg/antivirus/widget/a/a/j;->a(Landroid/widget/RemoteViews;Lorg/antivirus/widget/a/l;II)V

    sget-object v1, Lorg/antivirus/widget/a/i;->d:Lorg/antivirus/widget/a/i;

    const-class v3, Lorg/antivirus/ui/performance/TaskKiller;

    const/4 v4, 0x7

    new-array v5, v2, [Ljava/io/Serializable;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/antivirus/widget/a/a/j;->a(Landroid/content/Context;Lorg/antivirus/widget/a/i;ZLjava/lang/Class;I[Ljava/io/Serializable;)Landroid/app/PendingIntent;

    move-result-object v0

    iget v1, p4, Lorg/antivirus/widget/a/l;->a:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    return v0
.end method
