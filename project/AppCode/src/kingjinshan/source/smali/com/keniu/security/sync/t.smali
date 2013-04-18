.class final Lcom/keniu/security/sync/t;
.super Ljava/lang/Object;
.source "TCONST.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput p1, p0, Lcom/keniu/security/sync/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gj;Lcom/keniu/security/sync/d/d/a/gj;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 970
    iget v0, p0, Lcom/keniu/security/sync/t;->a:I

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gj;->U_()J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gj;->U_()J

    move-result-wide v3

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 967
    check-cast p1, Lcom/keniu/security/sync/d/d/a/gj;

    check-cast p2, Lcom/keniu/security/sync/d/d/a/gj;

    iget v0, p0, Lcom/keniu/security/sync/t;->a:I

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gj;->U_()J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {p2}, Lcom/keniu/security/sync/d/d/a/gj;->U_()J

    move-result-wide v3

    div-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v0, v1

    return v0
.end method
