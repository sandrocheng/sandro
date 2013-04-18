.class public final Lcom/keniu/security/main/a/af;
.super Ljava/lang/Object;
.source "RubCleanCheckModule.java"

# interfaces
.implements Lcom/ijinshan/cleaner/s;
.implements Lcom/keniu/security/main/a/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field private h:Lcom/ijinshan/cleaner/o;

.field private i:Ljava/util/List;

.field private j:Lcom/keniu/security/main/a/l;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "\u7f13\u5b58\u5783\u573e\u6587\u4ef6"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    .line 20
    const-string v0, "\u7acb\u5373\u6e05\u7406"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->b:Ljava/lang/String;

    .line 21
    const-string v0, "\u5df2\u6e05\u7406"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->c:Ljava/lang/String;

    .line 22
    const-string v0, "\u672a\u53d1\u73b0"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->d:Ljava/lang/String;

    .line 23
    const-string v0, "\u662f\u5426\u6709\u7f13\u5b58\u5783\u573e\u6587\u4ef6"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->e:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    .line 27
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/af;->f:I

    .line 30
    iput-object v1, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    .line 112
    iput-object v1, p0, Lcom/keniu/security/main/a/af;->j:Lcom/keniu/security/main/a/l;

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/main/a/af;->k:J

    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    iput-wide v7, p0, Lcom/keniu/security/main/a/af;->k:J

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    .line 100
    new-instance v2, Lcom/ijinshan/cleaner/o;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/o;-><init>()V

    iput-object v2, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    .line 101
    iget-object v2, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    sget v3, Lcom/ijinshan/cleaner/o;->a:I

    invoke-virtual {v2, p1, p0, v3}, Lcom/ijinshan/cleaner/o;->a(Landroid/content/Context;Lcom/ijinshan/cleaner/s;I)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    const-string v4, "Scan cache time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-wide v0, p0, Lcom/keniu/security/main/a/af;->k:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u68c0\u6d4b\u5230\u5783\u573e\u6587\u4ef6\uff0c\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final L_()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final M_()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final N_()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public final O_()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final P_()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final Q_()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/main/a/af;->f:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->b:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->c:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->d:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->e:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    sget v1, Lcom/ijinshan/cleaner/o;->a:I

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/o;->a(I)V

    .line 131
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/af;->g:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u7406\u5783\u573e\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    .line 133
    const-string v0, "\u5df2\u6e05\u7406"

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->d:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6e05\u7406\u6210\u529f\uff01\u5171\u8282\u7701"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7a7a\u95f4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    return-void
.end method

.method public final a(Lcom/ijinshan/cleaner/u;)V
    .locals 5
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    monitor-enter v0

    .line 166
    :try_start_0
    iget v1, p1, Lcom/ijinshan/cleaner/u;->a:I

    sget v2, Lcom/ijinshan/cleaner/o;->a:I

    if-ne v1, v2, :cond_0

    .line 167
    iget-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    iget-object v3, p1, Lcom/ijinshan/cleaner/u;->b:Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v3}, Lcom/ijinshan/cleaner/a/a;->d()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 116
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 117
    iput-object p1, p0, Lcom/keniu/security/main/a/af;->j:Lcom/keniu/security/main/a/l;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v7, p0, Lcom/keniu/security/main/a/af;->k:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    new-instance v2, Lcom/ijinshan/cleaner/o;

    invoke-direct {v2}, Lcom/ijinshan/cleaner/o;-><init>()V

    iput-object v2, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    iget-object v2, p0, Lcom/keniu/security/main/a/af;->h:Lcom/ijinshan/cleaner/o;

    sget v3, Lcom/ijinshan/cleaner/o;->a:I

    invoke-virtual {v2, p2, p0, v3}, Lcom/ijinshan/cleaner/o;->a(Landroid/content/Context;Lcom/ijinshan/cleaner/s;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "Scan cache time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/keniu/security/main/a/af;->k:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u68c0\u6d4b\u5230\u5783\u573e\u6587\u4ef6\uff0c\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keniu/security/main/a/af;->k:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 120
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/af;->g:I

    .line 125
    :goto_1
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 126
    return-void

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/af;->g:I

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/keniu/security/main/a/af;->g:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/keniu/security/main/a/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x50

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/keniu/security/main/a/af;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/af;->g:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method
