.class public final Lac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lac$a;,
        Lac$b;,
        Lac$d;,
        Lac$c;
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Lac;

.field private static c:Lac$b;

.field private static d:Lac$a;

.field private static e:I

.field private static f:Landroid/app/KeyguardManager$KeyguardLock;

.field private static g:Landroid/app/KeyguardManager;

.field private static h:Lac$c;

.field private static i:Z

.field private static j:Z

.field private static k:Lac$d;

.field private static l:Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

.field private static m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lac;->a:I

    sput-boolean v0, Lac;->i:Z

    sput-boolean v0, Lac;->j:Z

    new-instance v0, Lad;

    invoke-direct {v0}, Lad;-><init>()V

    sput-object v0, Lac;->l:Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

    new-instance v0, Lae;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lae;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lac;->m:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lac$b;

    invoke-direct {v0}, Lac$b;-><init>()V

    sput-object v0, Lac;->c:Lac$b;

    new-instance v0, Lac$a;

    invoke-direct {v0}, Lac$a;-><init>()V

    sput-object v0, Lac;->d:Lac$a;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lac;->e:I

    sget-object v0, Lac;->g:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lac;->g:Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    sput-object v0, Lac;->f:Landroid/app/KeyguardManager$KeyguardLock;

    new-instance v0, Lac$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lac$c;-><init>(B)V

    sput-object v0, Lac;->h:Lac$c;

    :cond_0
    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lac;->f:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    sget-object v0, Lac;->f:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lac;->b:Lac;

    if-nez v0, :cond_0

    new-instance v0, Lac;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lac;->b:Lac;

    :cond_0
    invoke-static {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Landroid/content/Context;)V

    sget v0, Lac;->e:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->a(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Lac$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lac$d;-><init>(B)V

    sput-object v0, Lac;->k:Lac$d;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lac;->k:Lac$d;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lac;->j:Z

    return p0
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->c()V

    sget v0, Lac;->e:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->b()V

    :cond_0
    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x1

    sget-boolean v0, Lac;->j:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lac;->i:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lac;->i:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->f()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lac;->e:I

    if-gt v0, v1, :cond_3

    sget-object v0, Lac;->c:Lac$b;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->setOnTouchBehindListener(Lac$b;)V

    :cond_3
    sget-object v0, Lac;->d:Lac$a;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->setOnControlListener(Lac$a;)V

    sget-object v0, Lac;->f:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_4

    sget-object v0, Lac;->f:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    :cond_4
    sget-object v0, Lac;->l:Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    invoke-static {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(Landroid/content/Context;)V

    sget v0, Lac;->e:I

    if-gt v0, v1, :cond_5

    invoke-static {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->b(Landroid/content/Context;)V

    :cond_5
    sput-boolean v3, Lac;->i:Z

    sget-object v0, Lac;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    const/16 v2, 0xa

    sget-object v0, Lac;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget v0, Lac;->e:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lac;->c:Lac$b;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->a(Lac$b;)V

    :cond_0
    sget-object v0, Lac;->d:Lac$a;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Lac$a;)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->e()V

    sget v0, Lac;->e:I

    if-gt v0, v2, :cond_1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->d()V

    :cond_1
    sget-object v0, Lac;->h:Lac$c;

    if-eqz v0, :cond_2

    sget-object v0, Lac;->g:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_2

    sget-object v0, Lac;->g:Landroid/app/KeyguardManager;

    sget-object v1, Lac;->h:Lac$c;

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    :cond_2
    sget-object v0, Lac;->l:Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

    invoke-static {v0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    const-wide/16 v0, 0x2bc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lac;->i:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Lac;->c()V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->d()V

    sget v0, Lac;->e:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->c()V

    :cond_0
    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static e()Z
    .locals 2

    sget v0, Lac;->a:I

    invoke-static {}, Lac;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lac;->g()I

    move-result v1

    sput v1, Lac;->a:I

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lac;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private static g()I
    .locals 3

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
