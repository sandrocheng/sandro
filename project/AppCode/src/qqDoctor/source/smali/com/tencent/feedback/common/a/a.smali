.class public Lcom/tencent/feedback/common/a/a;
.super Ljava/lang/Object;
.source "AnalyticsBean.java"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:J

.field private e:[B

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v3, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 19
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 20
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 21
    iput-wide v3, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 22
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 26
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->g:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/common/a/a;->h:I

    .line 28
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->i:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(IIJ[B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v3, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 19
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 20
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 21
    iput-wide v3, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 22
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 26
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->g:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/common/a/a;->h:I

    .line 28
    iput-object v2, p0, Lcom/tencent/feedback/common/a/a;->i:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 53
    iput p2, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 54
    iput-wide p3, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 55
    iput-object p5, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 57
    if-eqz p5, :cond_0

    .line 58
    array-length v0, p5

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->a:J

    return-wide v0
.end method

.method public final a(I)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 80
    return-object p0
.end method

.method public final a(J)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 69
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tencent/feedback/common/a/a;->g:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public final a([B)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 113
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    return v0
.end method

.method public final b(I)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 91
    return-object p0
.end method

.method public final b(J)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 102
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tencent/feedback/common/a/a;->i:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    return v0
.end method

.method public final c(I)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->h:I

    .line 146
    return-object p0
.end method

.method public final c(J)Lcom/tencent/feedback/common/a/a;
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 124
    return-object p0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->d:J

    return-wide v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    if-eqz p1, :cond_0

    const-class v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 174
    :cond_1
    const-class v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    .line 176
    iget v1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    iget v4, v0, Lcom/tencent/feedback/common/a/a;->b:I

    if-ne v1, v4, :cond_0

    .line 177
    iget-wide v4, p0, Lcom/tencent/feedback/common/a/a;->d:J

    iget-wide v6, v0, Lcom/tencent/feedback/common/a/a;->d:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 178
    iget v1, p0, Lcom/tencent/feedback/common/a/a;->c:I

    iget v4, v0, Lcom/tencent/feedback/common/a/a;->c:I

    if-ne v1, v4, :cond_0

    .line 179
    iget-wide v4, p0, Lcom/tencent/feedback/common/a/a;->f:J

    iget-wide v6, v0, Lcom/tencent/feedback/common/a/a;->f:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    iget-object v4, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    if-ne v1, v4, :cond_2

    move v2, v3

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v1, v1

    iget-object v4, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v4, v4

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 190
    :goto_1
    iget-object v4, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 192
    iget-object v4, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    aget-byte v4, v4, v1

    iget-object v5, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/feedback/common/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/tencent/feedback/common/a/a;->h:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/feedback/common/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "priority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/common/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dateLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/common/a/a;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/feedback/common/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nallTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
