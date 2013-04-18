.class public final Lcom/keniu/security/traffic/v;
.super Ljava/lang/Object;
.source "ThreadSaveBackgroundActivityTraffic.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 20
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 26
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 32
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_0

    .line 33
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 39
    invoke-static {v1}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {v1, v7}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/keniu/security/traffic/q;->b()Ljava/lang/String;

    move-result-object v3

    move v4, v7

    .line 42
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_4

    .line 43
    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 44
    aget-object v5, v0, v4

    iget v5, v5, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 45
    aget-object v5, v0, v4

    iget v5, v5, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    aget-object v5, v0, v4

    iget-boolean v5, v5, Lcom/keniu/security/traffic/f;->d:Z

    if-nez v5, :cond_2

    aget-object v5, v0, v4

    iget-boolean v5, v5, Lcom/keniu/security/traffic/f;->k:Z

    if-nez v5, :cond_2

    .line 53
    aget-object v5, v0, v4

    iput-boolean v8, v5, Lcom/keniu/security/traffic/f;->d:Z

    .line 54
    aget-object v5, v0, v4

    iget v5, v5, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v5, v7}, Lcom/keniu/security/traffic/q;->b(IZ)V

    .line 55
    aget-object v5, v0, v4

    iput-boolean v8, v5, Lcom/keniu/security/traffic/f;->e:Z

    .line 42
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_3
    aget-object v5, v0, v4

    iget-boolean v5, v5, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v5, :cond_2

    .line 60
    aget-object v5, v0, v4

    iput-boolean v7, v5, Lcom/keniu/security/traffic/f;->d:Z

    goto :goto_2

    .line 63
    :cond_4
    invoke-static {v1, v7}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    .line 67
    :cond_5
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 68
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :cond_6
    return-void
.end method
