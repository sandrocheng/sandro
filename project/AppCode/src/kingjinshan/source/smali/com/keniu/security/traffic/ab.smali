.class final Lcom/keniu/security/traffic/ab;
.super Ljava/lang/Object;
.source "TrafficDbHelper2.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/keniu/security/traffic/ae;Lcom/keniu/security/traffic/ae;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 159
    iget-wide v0, p1, Lcom/keniu/security/traffic/ae;->f:J

    iget-wide v2, p0, Lcom/keniu/security/traffic/ae;->f:J

    sub-long/2addr v0, v2

    .line 161
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 164
    const/4 v0, -0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 155
    check-cast p1, Lcom/keniu/security/traffic/ae;

    check-cast p2, Lcom/keniu/security/traffic/ae;

    iget-wide v0, p2, Lcom/keniu/security/traffic/ae;->f:J

    iget-wide v2, p1, Lcom/keniu/security/traffic/ae;->f:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
