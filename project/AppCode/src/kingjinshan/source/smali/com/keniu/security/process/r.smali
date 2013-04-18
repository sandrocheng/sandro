.class final Lcom/keniu/security/process/r;
.super Ljava/lang/Thread;
.source "ProcessManagerActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 707
    iput-object p2, p0, Lcom/keniu/security/process/r;->b:Landroid/os/Handler;

    .line 708
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->t(Lcom/keniu/security/process/ProcessManagerActivity;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 716
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 720
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 721
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 722
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-boolean v5, v5, Lcom/keniu/security/process/ProcessManagerActivity;->a:Z

    if-eqz v5, :cond_1

    .line 814
    :goto_0
    return-void

    .line 725
    :cond_1
    if-eqz v0, :cond_0

    .line 726
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 729
    const/4 v6, 0x0

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 730
    aget-object v7, v5, v6

    .line 731
    iget-object v8, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v8}, Lcom/keniu/security/process/ProcessManagerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 732
    :try_start_1
    iget-object v8, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v8}, Lcom/keniu/security/process/ProcessManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 737
    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 740
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 741
    if-eqz v8, :cond_2

    .line 742
    new-instance v9, Lcom/keniu/security/d/e;

    invoke-direct {v9}, Lcom/keniu/security/d/e;-><init>()V

    .line 743
    iget-object v10, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-virtual {v10}, Lcom/keniu/security/process/ProcessManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v9, v7}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 746
    iget v10, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v9, v10}, Lcom/keniu/security/d/e;->a(I)V

    .line 748
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 729
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 751
    :cond_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    iget v7, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v11, :cond_4

    .line 754
    const/4 v7, 0x4

    iput v7, v9, Lcom/keniu/security/d/e;->c:I

    .line 757
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_2

    .line 759
    :cond_4
    const/4 v7, 0x2

    iput v7, v9, Lcom/keniu/security/d/e;->c:I

    .line 760
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 814
    :catch_1
    move-exception v0

    goto :goto_0

    .line 768
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;I)I

    .line 769
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->c(Lcom/keniu/security/process/ProcessManagerActivity;I)I

    .line 770
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V

    .line 771
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Ljava/util/List;)V

    .line 773
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/b/c;->a()Ljava/util/List;

    move-result-object v0

    .line 775
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 776
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 777
    if-eqz v3, :cond_7

    .line 778
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    goto :goto_3

    .line 780
    :cond_7
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->b(Lcom/keniu/security/d/e;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 781
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    goto :goto_3

    .line 783
    :cond_8
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 784
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_3

    .line 790
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 791
    if-eqz v3, :cond_b

    .line 792
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/d/e;->a(Z)V

    .line 793
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    goto :goto_4

    .line 795
    :cond_b
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->b(Lcom/keniu/security/d/e;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 796
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/d/e;->a(Z)V

    .line 797
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->a(Lcom/keniu/security/d/e;)V

    goto :goto_4

    .line 799
    :cond_c
    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v5}, Lcom/keniu/security/process/ProcessManagerActivity;->i(Lcom/keniu/security/process/ProcessManagerActivity;)Lcom/jxphone/mosecurity/b/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jxphone/mosecurity/b/c;->c(Lcom/keniu/security/d/e;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 800
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/keniu/security/d/e;->a(Z)V

    goto :goto_4

    .line 806
    :cond_d
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    new-instance v3, Lcom/keniu/security/process/o;

    iget-object v4, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v5, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {v3, v4, v5, v1}, Lcom/keniu/security/process/o;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v3}, Lcom/keniu/security/process/ProcessManagerActivity;->a(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;

    .line 808
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    new-instance v1, Lcom/keniu/security/process/o;

    iget-object v3, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    iget-object v4, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {v1, v3, v4, v2}, Lcom/keniu/security/process/o;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/keniu/security/process/ProcessManagerActivity;->b(Lcom/keniu/security/process/ProcessManagerActivity;Lcom/keniu/security/process/o;)Lcom/keniu/security/process/o;

    .line 810
    iget-object v0, p0, Lcom/keniu/security/process/r;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessManagerActivity;->u(Lcom/keniu/security/process/ProcessManagerActivity;)V

    .line 811
    iget-object v0, p0, Lcom/keniu/security/process/r;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
