.class public final Lcom/keniu/security/traffic/r;
.super Ljava/lang/Object;
.source "SaveTrafficWhenLock.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 21
    sget v2, Lcom/keniu/security/monitor/a;->p:I

    if-ne p1, v2, :cond_8

    .line 23
    invoke-static {v0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v7

    .line 108
    :goto_0
    return v0

    .line 25
    :cond_0
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v3, :cond_2

    .line 28
    :cond_1
    :try_start_0
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 29
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 31
    const/4 v2, 0x0

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 32
    const/4 v2, 0x0

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :cond_2
    :goto_1
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_3

    iget v1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v1, v8, :cond_7

    .line 41
    :cond_3
    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 42
    invoke-static {v0, v7}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v1

    .line 43
    array-length v2, v1

    .line 44
    invoke-static {}, Lcom/keniu/security/traffic/q;->b()Ljava/lang/String;

    move-result-object v3

    move v4, v7

    .line 45
    :goto_2
    if-ge v4, v2, :cond_6

    .line 46
    aget-object v5, v1, v4

    .line 47
    iget v6, v5, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 48
    iget-boolean v6, v5, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v6, :cond_5

    .line 51
    iput-boolean v8, v5, Lcom/keniu/security/traffic/f;->l:Z

    .line 57
    :goto_3
    iget-object v5, v5, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 53
    :cond_5
    iget-boolean v6, v5, Lcom/keniu/security/traffic/f;->k:Z

    if-nez v6, :cond_4

    .line 54
    iput-boolean v8, v5, Lcom/keniu/security/traffic/f;->d:Z

    goto :goto_3

    .line 60
    :cond_6
    invoke-static {v0, v7}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    :cond_7
    :goto_4
    move v0, v7

    .line 108
    goto :goto_0

    .line 64
    :cond_8
    sget v2, Lcom/keniu/security/monitor/a;->o:I

    if-ne p1, v2, :cond_7

    .line 66
    invoke-static {v0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v7

    .line 67
    goto :goto_0

    .line 68
    :cond_9
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_a

    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v2, v3, :cond_d

    .line 71
    :cond_a
    :try_start_1
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-nez v2, :cond_b

    .line 72
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "thread_save_traffic"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 74
    :cond_b
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    :goto_5
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-nez v2, :cond_c

    .line 79
    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    .line 82
    :cond_c
    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    sget-object v3, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_d
    iget v2, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v2, :cond_e

    iget v1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v1, v8, :cond_7

    .line 88
    :cond_e
    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 89
    invoke-static {v0, v7}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v1

    .line 90
    array-length v2, v1

    .line 91
    invoke-static {}, Lcom/keniu/security/traffic/q;->b()Ljava/lang/String;

    move-result-object v3

    move v4, v7

    .line 92
    :goto_6
    if-ge v4, v2, :cond_11

    .line 93
    aget-object v5, v1, v4

    .line 94
    iget v6, v5, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 95
    iget-boolean v6, v5, Lcom/keniu/security/traffic/f;->l:Z

    if-eqz v6, :cond_10

    .line 98
    iput-boolean v7, v5, Lcom/keniu/security/traffic/f;->l:Z

    .line 92
    :cond_f
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 101
    :cond_10
    iput-boolean v7, v5, Lcom/keniu/security/traffic/f;->d:Z

    goto :goto_7

    .line 103
    :cond_11
    invoke-static {v0, v7}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method
