.class public Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;
.super Landroid/app/Service;
.source "FileShieldService.java"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/IntentFilter;


# instance fields
.field private d:Landroid/content/Intent;

.field private e:Landroid/app/PendingIntent;

.field private final f:Ljava/util/HashMap;

.field private g:Lcom/avast/android/mobilesecurity/app/fileshield/q;

.field private h:Landroid/os/Looper;

.field private i:Lcom/avast/android/mobilesecurity/app/scanner/o;

.field private j:Lcom/avast/android/mobilesecurity/app/fileshield/c;

.field private k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

.field private l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

.field private m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

.field private n:Lcom/avast/android/mobilesecurity/t;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Z

.field private r:Z

.field private s:Landroid/app/AlarmManager;

.field private t:Ljava/util/concurrent/BlockingQueue;

.field private u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

.field private v:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    .line 97
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b:Landroid/content/IntentFilter;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c:Landroid/content/IntentFilter;

    .line 108
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c:Landroid/content/IntentFilter;

    const-string v1, "intent.action.sd_card_scan_started"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c:Landroid/content/IntentFilter;

    const-string v1, "intent.action.sd_card_scan_stopped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f:Ljava/util/HashMap;

    .line 187
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->q:Z

    .line 192
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->r:Z

    .line 1400
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/u;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->t:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->n:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/j;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->j:Lcom/avast/android/mobilesecurity/app/fileshield/c;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/scanner/o;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->i:Lcom/avast/android/mobilesecurity/app/scanner/o;

    return-object v0
.end method

.method static synthetic i(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/q;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g:Lcom/avast/android/mobilesecurity/app/fileshield/q;

    return-object v0
.end method

.method static synthetic j(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/t;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 219
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->t:Ljava/util/concurrent/BlockingQueue;

    .line 220
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/p;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

    .line 221
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->start()V

    .line 223
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/c;

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->d()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/c;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->j:Lcom/avast/android/mobilesecurity/app/fileshield/c;

    .line 226
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/u;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/u;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    .line 227
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/u;->start()V

    .line 228
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/t;

    invoke-direct {v0, p0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    .line 229
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->start()V

    .line 230
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/j;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/j;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    .line 231
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/j;->start()V

    .line 237
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSSHThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->h:Landroid/os/Looper;

    .line 241
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/q;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->h:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/q;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g:Lcom/avast/android/mobilesecurity/app/fileshield/q;

    .line 242
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/o;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->i:Lcom/avast/android/mobilesecurity/app/scanner/o;

    .line 243
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->n:Lcom/avast/android/mobilesecurity/t;

    .line 244
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->s:Landroid/app/AlarmManager;

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->d:Landroid/content/Intent;

    .line 246
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->d:Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e:Landroid/app/PendingIntent;

    .line 249
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/f;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/f;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->o:Landroid/content/BroadcastReceiver;

    .line 261
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->o:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->o:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/g;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/g;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->p:Landroid/content/BroadcastReceiver;

    .line 280
    invoke-static {p0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->p:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 283
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/h;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/fileshield/h;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->v:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 298
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 329
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->n:Lcom/avast/android/mobilesecurity/t;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->v:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->s:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->s:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->interrupt()V

    .line 341
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->u:Lcom/avast/android/mobilesecurity/app/fileshield/p;

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/u;->interrupt()V

    .line 346
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->interrupt()V

    .line 351
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->m:Lcom/avast/android/mobilesecurity/app/fileshield/t;

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/j;->interrupt()V

    .line 356
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->l:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 364
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    .line 366
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->stopWatching()V

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 371
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 372
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 302
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->n:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->stopSelf()V

    .line 304
    const/4 v0, 0x2

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->n:Lcom/avast/android/mobilesecurity/t;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->v:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/t;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 311
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->s:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a(Landroid/content/Context;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x1f40

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 318
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->q:Z

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->k:Lcom/avast/android/mobilesecurity/app/fileshield/u;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/u;->a(Landroid/content/Intent;)V

    .line 320
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->q:Z

    goto :goto_0
.end method
