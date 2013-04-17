.class public Lcom/tencent/feedback/common/b/f;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/tencent/feedback/common/b/f;->a:I

    .line 19
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/feedback/common/b/f;->b:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/feedback/common/b/f;->c:I

    .line 21
    const-string v0, "http://monitor.uu.qq.com/analytics/upload"

    iput-object v0, p0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->e:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->f:Z

    .line 24
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->g:Z

    .line 25
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->h:Z

    .line 26
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->i:Z

    .line 27
    iput-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->j:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/tencent/feedback/common/b/f;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/tencent/feedback/common/b/f;->a:I

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->e:Z

    .line 67
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/tencent/feedback/common/b/f;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tencent/feedback/common/b/f;->b:I

    .line 41
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->f:Z

    .line 73
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/tencent/feedback/common/b/f;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/tencent/feedback/common/b/f;->c:I

    .line 49
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->g:Z

    .line 79
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-eqz v0, :cond_1

    .line 54
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://112.90.139.158:8080/analytics/upload"

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v0, "http://monitor.sp0309.3g.qq.com/analytics/upload"

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->h:Z

    .line 85
    return-void
.end method

.method public final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->i:Z

    .line 91
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_0

    move v0, v1

    .line 155
    :goto_0
    return v0

    .line 119
    :cond_0
    const-class v0, Lcom/tencent/feedback/common/b/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    const-class v0, Lcom/tencent/feedback/common/b/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/b/f;

    .line 122
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->f:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->f:Z

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->i:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->i:Z

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->e:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->e:Z

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->h:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->h:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_4
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->g:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->g:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    iget-boolean v2, v0, Lcom/tencent/feedback/common/b/f;->j:Z

    iget-boolean v3, p0, Lcom/tencent/feedback/common/b/f;->j:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 138
    goto :goto_0

    .line 140
    :cond_6
    iget v2, v0, Lcom/tencent/feedback/common/b/f;->b:I

    iget v3, p0, Lcom/tencent/feedback/common/b/f;->b:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_7
    iget v2, v0, Lcom/tencent/feedback/common/b/f;->a:I

    iget v3, p0, Lcom/tencent/feedback/common/b/f;->a:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :cond_8
    iget-object v2, v0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_9
    iget v0, v0, Lcom/tencent/feedback/common/b/f;->c:I

    iget v2, p0, Lcom/tencent/feedback/common/b/f;->c:I

    if-eq v0, v2, :cond_a

    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method public final f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/tencent/feedback/common/b/f;->j:Z

    .line 97
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->h:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->i:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tencent/feedback/common/b/f;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://112.90.139.158:8080/analytics/upload"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "maxPackageSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/b/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploadStrategy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/b/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "speedMonitorServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "speedMonitorUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exceptionUploadServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exceptionUploadUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userEventServerOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userEventUserOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/feedback/common/b/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http://monitor.sp0309.3g.qq.com/analytics/upload"

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/common/b/f;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method
