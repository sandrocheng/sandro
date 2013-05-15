.class public Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;
.super Landroid/app/Service;
.source "AppLockingService.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

.field private d:Landroid/os/Handler;

.field private e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

.field private f:Z

.field private g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

.field private h:Lcom/avast/android/mobilesecurity/e/c;

.field private i:Z

.field private j:Lcom/avast/android/mobilesecurity/app/scanner/h;

.field private k:Lcom/avast/android/mobilesecurity/app/scanner/o;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "extra_toggle_onoff"

    sput-object v0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a:Ljava/lang/String;

    .line 70
    const/16 v0, 0x1388

    sput v0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 682
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;
    .locals 1
    .parameter

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    .line 597
    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Lcom/avast/android/mobilesecurity/app/locking/core/d;)Lcom/avast/android/mobilesecurity/app/locking/core/d;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 222
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    const-string v2, ".AppWidgetPickActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const-string v0, "ApplockingService"

    const-string v1, "Skip blocking adding app widget."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ah()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const-string v1, "ApplockingService"

    const-string v2, "Realtime shield enabled, starting scan..."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->j:Lcom/avast/android/mobilesecurity/app/scanner/h;

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->h:Lcom/avast/android/mobilesecurity/e/c;

    invoke-virtual {v1, p1}, Lcom/avast/android/mobilesecurity/e/c;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->h:Lcom/avast/android/mobilesecurity/e/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/e/c;->b()Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->h:Lcom/avast/android/mobilesecurity/e/c;

    invoke-virtual {v1, p1}, Lcom/avast/android/mobilesecurity/e/c;->b(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    :goto_1
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-string v1, ".UninstallerActivity"

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "ApplockingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lock uninstall of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/locking/core/h;->a(Lcom/avast/android/mobilesecurity/app/locking/core/App;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->call(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/locking/core/App;)V

    goto/16 :goto_0

    .line 240
    :cond_4
    const-string v1, "ApplockingService"

    const-string v2, "Application is already allowed, skipping scan."

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/App;)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Lcom/avast/android/mobilesecurity/app/locking/core/d;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Lcom/avast/android/mobilesecurity/e/c;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->h:Lcom/avast/android/mobilesecurity/e/c;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    new-instance v0, Lcom/avast/android/mobilesecurity/e/c;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/e/c;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->h:Lcom/avast/android/mobilesecurity/e/c;

    .line 116
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/scanner/h;->a()Lcom/avast/android/mobilesecurity/app/scanner/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->j:Lcom/avast/android/mobilesecurity/app/scanner/h;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->l:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->l:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->k:Lcom/avast/android/mobilesecurity/app/scanner/o;

    .line 119
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/f;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->k:Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->l:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/f;-><init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/scanner/o;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/f;->setPriority(I)V

    .line 122
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/f;->start()V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->cancel(Z)Z

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/f;->interrupt()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->g:Lcom/avast/android/mobilesecurity/app/locking/core/f;

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ab()Z

    move-result v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 285
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 287
    :cond_3
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v3}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 130
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ab()Z

    move-result v3

    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->f:Z

    .line 131
    iget-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->f:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ah()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aY()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->i:Z

    .line 138
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->i:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v0, v3, :cond_2

    .line 145
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 146
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const/high16 v4, 0x800

    invoke-static {p0, v1, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 149
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget v7, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->b:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 154
    :cond_2
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->i:Z

    if-eqz v0, :cond_d

    .line 155
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_8

    .line 157
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_5

    .line 163
    :cond_4
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/d;-><init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_6

    .line 167
    const-string v0, "ApplockingService: turning on logcat handler"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    
    const-string v0, "avastLog"
	const-string v6, "com.avast.android.mobilesecurity.app.locking.core.AppLockingService.onStartCommand() turning on logcat handler"
	invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 210
    :cond_6
    :goto_1
    return v2

    :cond_7
    move v0, v1

    .line 131
    goto/16 :goto_0

    .line 173
    :cond_8
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9

    .line 175
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->cancel(Z)Z

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    if-eqz v0, :cond_a

    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    :cond_a
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    if-nez v0, :cond_c

    .line 188
    const-string v0, "ApplockingService: turning on task handler"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-direct {v0, p0, p0}, Lcom/avast/android/mobilesecurity/app/locking/core/g;-><init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 195
    :cond_d
    const-string v0, "ApplockingService: request cancel LogScannerTask"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_e

    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c:Lcom/avast/android/mobilesecurity/app/locking/core/d;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/d;->cancel(Z)Z

    .line 201
    :cond_e
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    if-eqz v0, :cond_f

    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->e:Lcom/avast/android/mobilesecurity/app/locking/core/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_f
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->stopSelf()V

    .line 207
    const/4 v2, 0x2

    goto :goto_1
.end method
