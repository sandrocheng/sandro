.class public final Lcom/keniu/security/main/bv;
.super Ljava/lang/Object;
.source "ModuleAntiVirus.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide v0, p0, Lcom/keniu/security/main/bv;->a:J

    .line 58
    iput-wide v0, p0, Lcom/keniu/security/main/bv;->b:J

    .line 59
    iput-wide v0, p0, Lcom/keniu/security/main/bv;->c:J

    .line 60
    iput-wide v0, p0, Lcom/keniu/security/main/bv;->d:J

    .line 61
    iput-wide v0, p0, Lcom/keniu/security/main/bv;->e:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 65
    iget-wide v0, p0, Lcom/keniu/security/main/bv;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v6

    .line 78
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-wide v0, p0, Lcom/keniu/security/main/bv;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/keniu/security/main/bv;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/keniu/security/main/bv;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/keniu/security/main/bv;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    move v0, v6

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget-wide v0, p0, Lcom/keniu/security/main/bv;->a:J

    iget-wide v2, p0, Lcom/keniu/security/main/bv;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v6

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    iget-wide v0, p0, Lcom/keniu/security/main/bv;->b:J

    iget-wide v2, p0, Lcom/keniu/security/main/bv;->c:J

    iget-wide v4, p0, Lcom/keniu/security/main/bv;->d:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    move v0, v6

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
