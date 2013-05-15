.class final Lcom/avast/android/mobilesecurity/app/locking/core/f;
.super Ljava/lang/Thread;
.source "AppLockingService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

.field private b:Landroid/content/Context;

.field private c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

.field private d:Lcom/avast/android/mobilesecurity/app/scanner/o;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/scanner/o;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    .line 712
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->d:Lcom/avast/android/mobilesecurity/app/scanner/o;

    .line 713
    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/core/b;

    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-direct {v1, v0, p4}, Lcom/avast/android/mobilesecurity/app/locking/core/b;-><init>(Landroid/app/ActivityManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    .line 717
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 724
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 727
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->a:Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;->d(Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;)Lcom/avast/android/mobilesecurity/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/e/c;->e()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    :try_start_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v7, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 731
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 732
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 733
    const-string v1, "ApplockingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x24

    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v2

    .line 743
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    move-object v8, v0

    .line 749
    const-string v1, "ApplockingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/x;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-ne v1, v3, :cond_1

    .line 752
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Landroid/content/Context;)V

    .line 753
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    invoke-virtual {v1, v10}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Ljava/lang/String;)V

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->d:Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move-object v3, v9

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    .line 762
    iget-boolean v1, v8, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    if-nez v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/core/f;->b:Landroid/content/Context;

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aw()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 766
    :catch_0
    move-exception v1

    .line 767
    :try_start_2
    const-string v2, "ApplockingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 771
    :catch_1
    move-exception v1

    .line 773
    return-void
.end method
