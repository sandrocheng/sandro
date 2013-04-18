.class public Lcom/jxphone/mosecurity/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final b:Ljava/lang/String; = "isSantData"


# instance fields
.field protected a:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->a:Z

    .line 47
    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method private b([[Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/keniu/security/e;->X:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jxphone/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jxphone/a/a/a;

    move-result-object v0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/jxphone/a/a/a;->a([[Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 66
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actionname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    .line 69
    if-eq v0, v2, :cond_1

    .line 70
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(B)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key: type not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    return v0
.end method


# virtual methods
.method protected a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->d()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->a:Z

    .line 60
    const-string v1, "isSantData"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    .line 62
    :cond_0
    return-object v0
.end method

.method protected a(B)V
    .locals 1
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(BZ)V

    .line 106
    return-void
.end method

.method protected final a(BZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/keniu/security/a;->aH()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/keniu/security/a;->ag()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    :goto_1
    invoke-virtual {v0}, Lcom/keniu/security/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    :goto_2
    add-int/lit8 v0, v0, 0x2

    shl-int v0, v1, v0

    .line 113
    const/16 v1, 0xb

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "s"

    aput-object v3, v2, v5

    const-string v3, "0401000301"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "uuid"

    aput-object v3, v2, v5

    invoke-static {p0}, Lcom/keniu/security/util/av;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "dt"

    aput-object v3, v2, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/i;->c(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v7

    const/4 v2, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "actionname"

    aput-object v4, v3, v5

    const-string v4, "start"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "var"

    aput-object v4, v3, v5

    const-class v4, Lcom/jxphone/mosecurity/activity/BaseActivity;

    invoke-static {p0, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "model"

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "value"

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "res"

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object v3, v1, v2

    const/16 v0, 0x8

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "channel"

    aput-object v3, v2, v5

    invoke-static {p0}, Lcom/keniu/security/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "info"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    .line 124
    if-eqz p2, :cond_4

    .line 125
    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a([[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v1, v5

    .line 112
    goto/16 :goto_1

    :cond_3
    move v0, v5

    goto/16 :goto_2

    .line 127
    :cond_4
    invoke-direct {p0, v1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->b([[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final a([[Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->b([[Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f0c0001

    return v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 143
    const-string v1, "isSantData"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/BaseActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    .line 150
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Landroid/os/Bundle;

    move-object v0, p0

    goto :goto_0
.end method

.method public synthetic getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->d()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a()Landroid/os/Bundle;

    .line 53
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actionname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->a(B)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key: type not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->b()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method public synthetic onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
