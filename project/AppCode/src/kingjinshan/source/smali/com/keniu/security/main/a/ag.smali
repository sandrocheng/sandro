.class public final Lcom/keniu/security/main/a/ag;
.super Ljava/lang/Object;
.source "ScanVirusCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;
.implements Lcom/keniu/security/malware/bh;


# static fields
.field public static a:I


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field private i:Lcom/keniu/security/malware/bd;

.field private j:Lcom/keniu/security/main/a/l;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:I

.field private o:J

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x557

    sput v0, Lcom/keniu/security/main/a/ag;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "\u75c5\u6bd2\u67e5\u6740"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    .line 25
    const-string v0, "\u7acb\u5373\u6e05\u7406"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->c:Ljava/lang/String;

    .line 26
    const-string v0, "\u5df2\u67e5\u6740"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->d:Ljava/lang/String;

    .line 27
    const-string v0, "\u672a\u53d1\u73b0"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->e:Ljava/lang/String;

    .line 28
    const-string v0, "\u672c\u673a\u662f\u5426\u6709\u75c5\u6bd2\u3001\u6076\u610f\u8f6f\u4ef6"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->f:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    .line 30
    iput-object v1, p0, Lcom/keniu/security/main/a/ag;->j:Lcom/keniu/security/main/a/l;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->l:Ljava/util/ArrayList;

    .line 33
    sget v0, Lcom/keniu/security/main/a/k;->d:I

    iput v0, p0, Lcom/keniu/security/main/a/ag;->g:I

    .line 35
    iput v2, p0, Lcom/keniu/security/main/a/ag;->m:I

    .line 36
    iput v2, p0, Lcom/keniu/security/main/a/ag;->n:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/main/a/ag;->o:J

    .line 38
    iput v2, p0, Lcom/keniu/security/main/a/ag;->p:I

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 114
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iput v10, p0, Lcom/keniu/security/main/a/ag;->m:I

    .line 116
    iput v10, p0, Lcom/keniu/security/main/a/ag;->n:I

    .line 117
    new-instance v0, Lcom/keniu/security/malware/bd;

    invoke-direct {v0}, Lcom/keniu/security/malware/bd;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    .line 118
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v0, p1}, Lcom/keniu/security/malware/bd;->a(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v2, p0}, Lcom/keniu/security/malware/bd;->a(Lcom/keniu/security/malware/bh;)Z

    .line 121
    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    if-lez v2, :cond_0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68c0\u6d4b\u5230\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u6076\u610f\u8f6f\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    .line 127
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/keniu/security/main/a/ag;->o:J

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/main/a/ag;->n:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    iget v6, p0, Lcom/keniu/security/main/a/ag;->p:I

    int-to-long v6, v6

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bd;->a()V

    .line 131
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 125
    :cond_0
    const-string v2, "\u75c5\u6bd2\u6728\u9a6c\u3001\u6076\u610f\u8f6f\u4ef6"

    iput-object v2, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v10

    .line 131
    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/keniu/security/main/a/ag;->g:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 98
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    .line 100
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->c:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->d:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->e:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->f:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 172
    const-string v0, "ScanResultListActivity_result_trojan"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    .line 174
    iget v0, p0, Lcom/keniu/security/main/a/ag;->m:I

    iget-object v1, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keniu/security/main/a/ag;->p:I

    .line 175
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 176
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u67e5\u6740"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/main/a/ag;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u6076\u610f\u8f6f\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    .line 178
    const-string v0, "\u5df2\u67e5\u6740"

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->d:Ljava/lang/String;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u68c0\u6d4b\u5230\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u6076\u610f\u8f6f\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-class v1, Lcom/keniu/security/malware/ScanResultListActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v2, "mScanUsedTime"

    iget-wide v3, p0, Lcom/keniu/security/main/a/ag;->o:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    const-string v2, "mScanApkCount"

    iget v3, p0, Lcom/keniu/security/main/a/ag;->n:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "bClickFast"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v2, "bSettingNet"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string v2, "bScanFromMainMenu"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v2, "bSettingNet"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v2, "bCloudScanComplete"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    const-string v1, "ScanResultListActivity_result_trojan"

    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 163
    const-string v1, "ScanResultListActivity_result_unknown"

    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 165
    check-cast p1, Landroid/app/Activity;

    sget v1, Lcom/keniu/security/main/a/ag;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 137
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 138
    iput-object p1, p0, Lcom/keniu/security/main/a/ag;->j:Lcom/keniu/security/main/a/l;

    .line 139
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v10, p0, Lcom/keniu/security/main/a/ag;->m:I

    iput v10, p0, Lcom/keniu/security/main/a/ag;->n:I

    new-instance v0, Lcom/keniu/security/malware/bd;

    invoke-direct {v0}, Lcom/keniu/security/malware/bd;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v0, p2}, Lcom/keniu/security/malware/bd;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v2, p0}, Lcom/keniu/security/malware/bd;->a(Lcom/keniu/security/malware/bh;)Z

    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u68c0\u6d4b\u5230\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u6076\u610f\u8f6f\u4ef6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/keniu/security/main/a/ag;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/main/a/ag;->n:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    iget v6, p0, Lcom/keniu/security/main/a/ag;->p:I

    int-to-long v6, v6

    const-wide/16 v8, 0x0

    invoke-static/range {v0 .. v9}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->i:Lcom/keniu/security/malware/bd;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bd;->a()V

    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 140
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    .line 144
    :goto_2
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 145
    return-void

    .line 139
    :cond_0
    const-string v2, "\u75c5\u6bd2\u6728\u9a6c\u3001\u6076\u610f\u8f6f\u4ef6"

    iput-object v2, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_1

    .line 142
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public final a(F[Ljava/lang/String;[Lcom/keniu/security/d/d;[Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 204
    aget-object v1, p3, v0

    .line 205
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/keniu/security/d/d;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget v2, p0, Lcom/keniu/security/main/a/ag;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/keniu/security/main/a/ag;->m:I

    .line 207
    iget-object v2, p0, Lcom/keniu/security/main/a/ag;->k:Ljava/util/ArrayList;

    new-instance v3, Lcom/keniu/security/malware/AppMettle;

    aget-object v4, p4, v0

    invoke-direct {v3, v4, v1}, Lcom/keniu/security/malware/AppMettle;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/keniu/security/d/d;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    iget v1, p0, Lcom/keniu/security/main/a/ag;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/main/a/ag;->n:I

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->j:Lcom/keniu/security/main/a/l;

    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-interface {v0, p0, v1}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;I)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/main/a/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x50

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/ag;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
