.class public final Lbr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lbr;


# instance fields
.field private b:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lbr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lbr;->a:Lbr;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbr;->b:Landroid/app/AlarmManager;

    iget-object v0, p0, Lbr;->b:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lbr;->b:Landroid/app/AlarmManager;

    :cond_0
    return-void
.end method

.method public static a()Lbr;
    .locals 1

    sget-object v0, Lbr;->a:Lbr;

    if-nez v0, :cond_0

    new-instance v0, Lbr;

    invoke-direct {v0}, Lbr;-><init>()V

    sput-object v0, Lbr;->a:Lbr;

    :cond_0
    sget-object v0, Lbr;->a:Lbr;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lbr;->b:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lbr;->b:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
