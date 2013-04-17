.class public Lds;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lds$a;
    }
.end annotation


# static fields
.field private static a:Lds;


# instance fields
.field private b:Lds$a;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lds;->c:Landroid/content/Context;

    new-instance v1, Lds$a;

    iget-object v2, p0, Lds;->c:Landroid/content/Context;

    iget-object v0, p0, Lds;->c:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0}, Lds$a;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lds;->b:Lds$a;

    return-void
.end method

.method static synthetic a(Lds;)Lds$a;
    .locals 1

    iget-object v0, p0, Lds;->b:Lds$a;

    return-object v0
.end method

.method public static a()Lds;
    .locals 2

    const-class v1, Lds;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lds;->a:Lds;

    if-nez v0, :cond_0

    new-instance v0, Lds;

    invoke-direct {v0}, Lds;-><init>()V

    sput-object v0, Lds;->a:Lds;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lds;->a:Lds;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const v1, 0x7f02013b

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lds;->c:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lds;->c:Landroid/content/Context;

    iget-object v3, p0, Lds;->c:Landroid/content/Context;

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lds;->b:Lds$a;

    invoke-virtual {v1, v0}, Lds$a;->a(Landroid/app/Notification;)V

    new-instance v0, Ldt;

    invoke-direct {v0, p0}, Ldt;-><init>(Lds;)V

    invoke-virtual {v0}, Ldt;->start()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const v1, 0x7f02013b

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lds;->c:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lds;->c:Landroid/content/Context;

    iget-object v3, p0, Lds;->c:Landroid/content/Context;

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lds;->b:Lds$a;

    invoke-virtual {v1, v0}, Lds$a;->a(Landroid/app/Notification;)V

    return-void
.end method
