.class public Lcom/tencent/feedback/common/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:J

.field private e:[B

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v1, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 18
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 19
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 20
    iput-wide v1, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 39
    return-void
.end method

.method public constructor <init>(IIJ[B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v1, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 18
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 19
    iput v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 20
    iput-wide v1, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 43
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 45
    iput-wide p3, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 46
    iput-object p5, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 48
    if-eqz p5, :cond_0

    .line 49
    array-length v0, p5

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->a:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    .line 63
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->a:J

    .line 57
    return-void
.end method

.method public final a([B)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    .line 81
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/tencent/feedback/common/a/a;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/feedback/common/a/a;->c:I

    .line 69
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->d:J

    .line 75
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/tencent/feedback/common/a/a;->c:I

    return v0
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/tencent/feedback/common/a/a;->f:J

    .line 87
    return-void
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->d:J

    return-wide v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    if-eqz p1, :cond_0

    const-class v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    const-class v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    .line 105
    iget v1, p0, Lcom/tencent/feedback/common/a/a;->b:I

    iget v4, v0, Lcom/tencent/feedback/common/a/a;->b:I

    if-ne v1, v4, :cond_0

    .line 106
    iget-wide v4, p0, Lcom/tencent/feedback/common/a/a;->d:J

    iget-wide v6, v0, Lcom/tencent/feedback/common/a/a;->d:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 107
    iget v1, p0, Lcom/tencent/feedback/common/a/a;->c:I

    iget v4, v0, Lcom/tencent/feedback/common/a/a;->c:I

    if-ne v1, v4, :cond_0

    .line 108
    iget-wide v4, p0, Lcom/tencent/feedback/common/a/a;->f:J

    iget-wide v6, v0, Lcom/tencent/feedback/common/a/a;->f:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    iget-object v4, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    if-ne v1, v4, :cond_2

    move v2, v3

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v1, v1

    iget-object v4, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v4, v4

    if-ne v1, v4, :cond_0

    move v1, v2

    .line 115
    :goto_1
    iget-object v4, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/tencent/feedback/common/a/a;->e:[B

    aget-byte v4, v4, v1

    iget-object v5, v0, Lcom/tencent/feedback/common/a/a;->e:[B

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/tencent/feedback/common/a/a;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
