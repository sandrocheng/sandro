.class final Lcom/keniu/security/traffic/aa;
.super Ljava/lang/Object;
.source "TrafficDbHelper2.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/keniu/security/traffic/f;Lcom/keniu/security/traffic/f;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 127
    iget-wide v0, p0, Lcom/keniu/security/traffic/f;->m:D

    iget-wide v2, p1, Lcom/keniu/security/traffic/f;->m:D

    sub-double/2addr v0, v2

    .line 128
    iget-boolean v2, p0, Lcom/keniu/security/traffic/f;->j:Z

    iget-boolean v3, p1, Lcom/keniu/security/traffic/f;->j:Z

    if-eq v2, v3, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/keniu/security/traffic/f;->j:Z

    if-eqz v0, :cond_0

    move v0, v5

    .line 144
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    iget-boolean v2, p0, Lcom/keniu/security/traffic/f;->c:Z

    iget-boolean v3, p0, Lcom/keniu/security/traffic/f;->d:Z

    or-int/2addr v2, v3

    iget-boolean v3, p1, Lcom/keniu/security/traffic/f;->c:Z

    iget-boolean v4, p1, Lcom/keniu/security/traffic/f;->d:Z

    or-int/2addr v3, v4

    if-ne v2, v3, :cond_4

    .line 132
    cmpg-double v2, v0, v7

    if-gez v2, :cond_2

    move v0, v6

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    cmpl-double v0, v0, v7

    if-lez v0, :cond_3

    move v0, v5

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_4
    iget-boolean v0, p0, Lcom/keniu/security/traffic/f;->c:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v5

    .line 143
    goto :goto_0

    :cond_6
    move v0, v6

    .line 144
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    .line 124
    check-cast p1, Lcom/keniu/security/traffic/f;

    check-cast p2, Lcom/keniu/security/traffic/f;

    iget-wide v0, p1, Lcom/keniu/security/traffic/f;->m:D

    iget-wide v2, p2, Lcom/keniu/security/traffic/f;->m:D

    sub-double/2addr v0, v2

    iget-boolean v2, p1, Lcom/keniu/security/traffic/f;->j:Z

    iget-boolean v3, p2, Lcom/keniu/security/traffic/f;->j:Z

    if-eq v2, v3, :cond_1

    iget-boolean v0, p1, Lcom/keniu/security/traffic/f;->j:Z

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Lcom/keniu/security/traffic/f;->c:Z

    iget-boolean v3, p1, Lcom/keniu/security/traffic/f;->d:Z

    or-int/2addr v2, v3

    iget-boolean v3, p2, Lcom/keniu/security/traffic/f;->c:Z

    iget-boolean v4, p2, Lcom/keniu/security/traffic/f;->d:Z

    or-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_5

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/keniu/security/traffic/f;->c:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v0, :cond_5

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_0
.end method
