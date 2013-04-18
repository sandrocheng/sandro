.class public final Lcom/keniu/security/sync/j;
.super Landroid/os/Handler;
.source "SyncHandler.java"


# instance fields
.field public a:[I

.field private b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    iput v1, p0, Lcom/keniu/security/sync/j;->c:I

    .line 34
    iput v1, p0, Lcom/keniu/security/sync/j;->d:I

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    .line 40
    iput v1, p0, Lcom/keniu/security/sync/j;->e:I

    .line 42
    iput-object p1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/j;->e:I

    .line 44
    return-void

    .line 35
    :array_0
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/keniu/security/sync/ui/HelperBaseTitleAct;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    iput v1, p0, Lcom/keniu/security/sync/j;->c:I

    .line 34
    iput v1, p0, Lcom/keniu/security/sync/j;->d:I

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    .line 40
    iput v1, p0, Lcom/keniu/security/sync/j;->e:I

    .line 37
    iput-object p1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    .line 38
    return-void

    .line 35
    nop

    :array_0
    .array-data 0x4
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
        0xf5t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private a()V
    .locals 2

    .prologue
    .line 111
    iget v0, p0, Lcom/keniu/security/sync/j;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/keniu/security/sync/c/l;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/sync/c/l;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->b()V

    goto :goto_0
.end method

.method private a([I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 99
    aget v0, p1, v3

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/keniu/security/sync/c/b;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/b;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    aget v0, p1, v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/keniu/security/sync/c/j;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/j;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x2

    aget v0, p1, v0

    if-nez v0, :cond_3

    aget v0, p1, v1

    if-eqz v0, :cond_2

    aget v0, p1, v1

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_3

    .line 104
    :cond_2
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->a()V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->b(I)V

    goto :goto_0
.end method

.method private a(II[Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 162
    iput p1, v0, Landroid/os/Message;->what:I

    .line 163
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 164
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/j;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, -0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v9

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v10

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->b(I)V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v7

    if-nez v0, :cond_2

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v2, 0x7f0b08a1

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    sget-object v3, Lcom/keniu/security/sync/r;->aO:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v2, 0x7f0b08a3

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/keniu/security/sync/j;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/keniu/security/sync/j;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/r;->a(Ljava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08b8

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/keniu/security/sync/j;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v7

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-eq v2, v8, :cond_9

    const-string v2, "<br>"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08b9

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/keniu/security/sync/j;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v9

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v10

    if-nez v2, :cond_d

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    if-nez v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_6

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v7

    if-eq v2, v8, :cond_c

    :cond_6
    const-string v2, "<br>"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08ba

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/keniu/security/traffic/y;->a()V

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.keniu.security.traffic.UPDATE_XUANFUCHUANG"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->b(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    iget-object v3, p0, Lcom/keniu/security/sync/j;->a:[I

    aput v8, v3, v10

    aput v8, v2, v9

    aput v8, v1, v7

    aput v8, v0, v6

    .line 129
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const-string v1, "synco"

    const-string v2, "4"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_8
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-eq v2, v8, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v4, 0x7f0b08b5

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_9
    const-string v2, ""

    goto/16 :goto_2

    :cond_a
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v7

    if-eq v2, v8, :cond_4

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-eq v2, v8, :cond_b

    const-string v2, "<br>"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v4, 0x7f0b08b6

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_b
    const-string v2, ""

    goto :goto_6

    :cond_c
    const-string v2, ""

    goto/16 :goto_4

    :cond_d
    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v9

    if-eq v2, v8, :cond_7

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v6

    if-ne v2, v8, :cond_e

    iget-object v2, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v2, v2, v7

    if-eq v2, v8, :cond_f

    :cond_e
    const-string v2, "<br>"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<font color=\'red\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v4, 0x7f0b08b7

    invoke-virtual {v3, v4}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_f
    const-string v2, ""

    goto :goto_7
.end method

.method private c()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, -0xb

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-nez v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v2, 0x7f0b08b8

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/sync/j;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v7

    if-nez v1, :cond_7

    .line 142
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-eq v1, v5, :cond_6

    const-string v1, "<br>"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v2, 0x7f0b08b9

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/keniu/security/sync/j;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-nez v1, :cond_a

    iget v1, p0, Lcom/keniu/security/sync/j;->e:I

    if-nez v1, :cond_a

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v7

    if-eq v1, v5, :cond_9

    :cond_3
    const-string v1, "<br>"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v2, 0x7f0b08ba

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-static {}, Lcom/keniu/security/traffic/y;->a()V

    .line 152
    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.keniu.security.traffic.UPDATE_XUANFUCHUANG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    :cond_4
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-eq v1, v5, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'red\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08b5

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v1, ""

    goto/16 :goto_1

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v7

    if-eq v1, v5, :cond_1

    .line 145
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-eq v1, v5, :cond_8

    const-string v1, "<br>"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'red\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08b6

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 145
    :cond_8
    const-string v1, ""

    goto :goto_5

    .line 149
    :cond_9
    const-string v1, ""

    goto/16 :goto_3

    .line 153
    :cond_a
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v8

    if-eq v1, v5, :cond_4

    .line 154
    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v6

    if-ne v1, v5, :cond_b

    iget-object v1, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v1, v7

    if-eq v1, v5, :cond_c

    :cond_b
    const-string v1, "<br>"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'red\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const v3, 0x7f0b08b7

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 154
    :cond_c
    const-string v1, ""

    goto :goto_6
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 91
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 52
    :sswitch_0
    const-string v0, ">>>>> check the verify"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/keniu/security/sync/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    const-string v2, "dialog_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 62
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    check-cast v0, Lcom/keniu/security/sync/ui/LoginAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/LoginAct;->a()V

    goto :goto_1

    .line 66
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(I)V

    goto :goto_1

    .line 71
    :sswitch_3
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->b(I)V

    goto :goto_1

    .line 74
    :sswitch_4
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v1, v0, v3

    if-nez v1, :cond_2

    new-instance v0, Lcom/keniu/security/sync/c/b;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/b;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    aget v1, v0, v4

    if-nez v1, :cond_3

    new-instance v0, Lcom/keniu/security/sync/c/j;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/j;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_3
    aget v1, v0, v2

    if-nez v1, :cond_5

    aget v1, v0, v5

    if-eqz v1, :cond_4

    aget v0, v0, v5

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->a()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/HelperBaseTitleAct;->b(I)V

    goto/16 :goto_1

    .line 80
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/sync/j;->c:I

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    iget v1, p0, Lcom/keniu/security/sync/j;->c:I

    aput v1, v0, v3

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    aget v0, v0, v4

    if-nez v0, :cond_7

    new-instance v0, Lcom/keniu/security/sync/c/j;

    iget-object v1, p0, Lcom/keniu/security/sync/j;->b:Lcom/keniu/security/sync/ui/HelperBaseTitleAct;

    iget v2, p0, Lcom/keniu/security/sync/j;->e:I

    invoke-direct {v0, p0, v1, v2}, Lcom/keniu/security/sync/c/j;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 82
    :cond_7
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->a()V

    goto/16 :goto_1

    .line 85
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/keniu/security/sync/j;->d:I

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    iget v1, p0, Lcom/keniu/security/sync/j;->d:I

    aput v1, v0, v4

    .line 86
    :cond_8
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->a()V

    goto/16 :goto_1

    .line 89
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/keniu/security/sync/j;->a:[I

    const/16 v1, -0xb

    aput v1, v0, v2

    .line 90
    :cond_9
    invoke-direct {p0}, Lcom/keniu/security/sync/j;->b()V

    goto/16 :goto_1

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_5
        0xb -> :sswitch_3
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x18 -> :sswitch_8
        0x7b -> :sswitch_2
        0x2711 -> :sswitch_2
    .end sparse-switch
.end method
