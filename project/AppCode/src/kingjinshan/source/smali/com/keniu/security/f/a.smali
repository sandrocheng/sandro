.class public final Lcom/keniu/security/f/a;
.super Ljava/lang/Object;
.source "AutoUpdate.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:J = 0x6ddd00L

.field private static f:Lcom/keniu/security/f/a;


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Lcom/keniu/security/f/t;

.field private c:Lcom/keniu/security/f/p;

.field private d:Lcom/keniu/security/f/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/keniu/security/f/a;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/keniu/security/f/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/f/a;->f:Lcom/keniu/security/f/a;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/keniu/security/f/a;

    invoke-direct {v1}, Lcom/keniu/security/f/a;-><init>()V

    sput-object v1, Lcom/keniu/security/f/a;->f:Lcom/keniu/security/f/a;

    .line 26
    :cond_0
    sget-object v1, Lcom/keniu/security/f/a;->f:Lcom/keniu/security/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 189
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/keniu/security/a;->ad()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v6

    .line 207
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v6

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/keniu/security/a;->as()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x4d3f6400

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/a;->e(J)V

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v6

    .line 207
    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 214
    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/keniu/security/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/keniu/security/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 221
    sget v1, Lcom/keniu/security/monitor/a;->q:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x106

    const/16 v2, 0x8

    const v1, 0x7f0b0405

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 61
    iget-object v0, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    if-ne p3, v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->i()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 63
    iget-object v0, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    invoke-virtual {v0}, Lcom/keniu/security/f/p;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/keniu/security/f/ab;->l()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v6, "autoupdateapk"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v6, "autoupdateapkpath"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    const/4 v2, 0x3

    invoke-static {v0, v2, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 80
    invoke-virtual {v0, v1}, Lcom/keniu/security/MoSecurityApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0200d2

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;IILjava/lang/String;Landroid/app/PendingIntent;II)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/f/a;->e()V

    .line 183
    :cond_1
    :goto_0
    return v8

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    if-ne p3, v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->i()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 94
    iget-object v0, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    invoke-virtual {v0}, Lcom/keniu/security/f/w;->j()I

    move-result v0

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/keniu/security/f/a;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    :cond_3
    invoke-direct {p0}, Lcom/keniu/security/f/a;->e()V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    if-ne p3, v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v0}, Lcom/keniu/security/f/t;->i()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 104
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 106
    iget-object v2, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v2}, Lcom/keniu/security/f/t;->j()I

    move-result v2

    if-nez v2, :cond_c

    .line 107
    iget-object v2, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v2}, Lcom/keniu/security/f/t;->a()Lcom/keniu/security/f/v;

    move-result-object v2

    .line 108
    iget v3, v2, Lcom/keniu/security/f/v;->b:I

    if-nez v3, :cond_5

    iget v3, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v3, :cond_c

    .line 109
    :cond_5
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v4

    invoke-static {v3}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lcom/keniu/security/a;->ad()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lcom/keniu/security/a;->ae()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v8

    :goto_1
    if-eqz v3, :cond_a

    .line 110
    iget v1, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v1, :cond_8

    .line 111
    iget-object v1, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    if-nez v1, :cond_6

    .line 112
    new-instance v1, Lcom/keniu/security/f/p;

    invoke-direct {v1}, Lcom/keniu/security/f/p;-><init>()V

    iput-object v1, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    .line 116
    :cond_6
    iget-object v1, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    iget-object v2, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-static {}, Lcom/keniu/security/f/t;->b()Lcom/keniu/security/f/h;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-static {}, Lcom/keniu/security/f/t;->c()Lcom/keniu/security/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/f/p;->a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V

    .line 119
    iget-object v1, p0, Lcom/keniu/security/f/a;->c:Lcom/keniu/security/f/p;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    move v0, v7

    .line 177
    :goto_2
    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/keniu/security/f/a;->e()V

    goto/16 :goto_0

    :cond_7
    move v3, v7

    .line 109
    goto :goto_1

    .line 120
    :cond_8
    iget v1, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v1, :cond_c

    .line 121
    iget-object v1, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    if-nez v1, :cond_9

    .line 122
    new-instance v1, Lcom/keniu/security/f/w;

    invoke-direct {v1}, Lcom/keniu/security/f/w;-><init>()V

    iput-object v1, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    .line 126
    :cond_9
    iget-object v1, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    iget-object v2, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-static {}, Lcom/keniu/security/f/t;->d()Lcom/keniu/security/f/h;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-static {}, Lcom/keniu/security/f/t;->e()Lcom/keniu/security/f/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V

    .line 129
    iget-object v1, p0, Lcom/keniu/security/f/a;->d:Lcom/keniu/security/f/w;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    move v0, v7

    goto :goto_2

    .line 136
    :cond_a
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 138
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 141
    const-string v6, "autoupdateservice"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {v0}, Lcom/keniu/security/MoSecurityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v4, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 152
    iget v3, v2, Lcom/keniu/security/f/v;->b:I

    if-eqz v3, :cond_d

    iget v3, v2, Lcom/keniu/security/f/v;->e:I

    if-eqz v3, :cond_d

    .line 154
    const v1, 0x7f0b0404

    .line 165
    :cond_b
    :goto_3
    invoke-virtual {v0, v1}, Lcom/keniu/security/MoSecurityApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0200d2

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;IILjava/lang/String;Landroid/app/PendingIntent;II)V

    :cond_c
    move v0, v8

    goto :goto_2

    .line 156
    :cond_d
    iget v2, v2, Lcom/keniu/security/f/v;->b:I

    if-nez v2, :cond_b

    .line 162
    const v1, 0x7f0b0406

    goto :goto_3
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 34
    const v1, 0x7f0b0407

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/f/a;->a:Landroid/widget/Toast;

    .line 37
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 38
    const-wide/32 v1, 0x6ddd00

    invoke-virtual {v0, p0, v1, v2}, Lcom/keniu/security/f/ab;->a(Ljava/lang/Runnable;J)V

    .line 40
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 44
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/a;->ad()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/keniu/security/a;->as()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x4d3f6400

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {v1}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/a;->e(J)V

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 46
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 47
    sget v2, Lcom/keniu/security/monitor/a;->q:I

    const v3, 0x4fffffff

    invoke-virtual {v1, v2, p0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 50
    iget-object v1, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    if-nez v1, :cond_1

    .line 52
    new-instance v1, Lcom/keniu/security/f/t;

    invoke-direct {v1, v7}, Lcom/keniu/security/f/t;-><init>(Z)V

    iput-object v1, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/f/a;->b:Lcom/keniu/security/f/t;

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->a(Lcom/keniu/security/f/ae;)Z

    .line 56
    :cond_2
    const-wide/32 v1, 0x6ddd00

    invoke-virtual {v0, p0, v1, v2}, Lcom/keniu/security/f/ab;->a(Ljava/lang/Runnable;J)V

    .line 57
    return-void

    :cond_3
    move v1, v7

    .line 45
    goto :goto_0
.end method
