.class Lcom/avast/android/mobilesecurity/app/locking/core/g;
.super Ljava/lang/Object;
.source "AppLockingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

.field private b:Landroid/app/ActivityManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->b:Landroid/app/ActivityManager;

    .line 611
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->c:Ljava/lang/String;

    .line 612
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->d:Landroid/content/Context;

    .line 618
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->b:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 625
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->c:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 629
    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->c:Ljava/lang/String;

    .line 630
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 631
    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 641
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v1

    .line 642
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 645
    const-string v0, ".UninstallerActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    new-instance v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/App;-><init>()V

    .line 653
    sget-object v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    .line 654
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->k:Z

    .line 655
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    .line 656
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->i:Z

    .line 657
    const/4 v1, 0x1

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->n:I

    .line 658
    const-string v1, ".UninstallerActivity"

    const-string v3, "android.intent.action.DELETE"

    invoke-virtual {v0, v1, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_0
    const-string v1, ".AppWidgetPickActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/App;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->a(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->c(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/g;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a(Landroid/content/Context;)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 672
    return-void

    .line 668
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
