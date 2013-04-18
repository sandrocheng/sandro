.class final Lcom/keniu/security/software/au;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 1
    .parameter

    .prologue
    .line 1364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/software/au;-><init>(Lcom/keniu/security/software/SoftwareManager2;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/software/SoftwareManager2;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/keniu/security/software/au;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/software/o;Lcom/keniu/security/software/o;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1369
    iget-object v0, p0, Lcom/keniu/security/software/au;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->D(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1371
    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v4

    .line 1386
    :goto_0
    return v0

    .line 1374
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v0, v6

    .line 1375
    goto :goto_0

    :cond_1
    move v0, v5

    .line 1377
    goto :goto_0

    .line 1381
    :cond_2
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    move v0, v4

    .line 1382
    goto :goto_0

    .line 1383
    :cond_3
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    move v0, v6

    .line 1384
    goto :goto_0

    :cond_4
    move v0, v5

    .line 1386
    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1364
    check-cast p1, Lcom/keniu/security/software/o;

    check-cast p2, Lcom/keniu/security/software/o;

    iget-object v0, p0, Lcom/keniu/security/software/au;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->D(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/keniu/security/software/o;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0
.end method
