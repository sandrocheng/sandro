.class public final Lab;
.super Ljava/lang/Object;

# interfaces
.implements Lw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Ly;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a60"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "p70"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "a750"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "r801"

    aput-object v3, v1, v2

    invoke-static {}, Lft;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    new-instance v0, Lz;

    invoke-direct {v0}, Lz;-><init>()V

    invoke-virtual {v0, p1, p2}, Lz;->a(Landroid/content/Context;Z)Ly;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Laa;

    invoke-direct {v0}, Laa;-><init>()V

    invoke-virtual {v0, p1, p2}, Laa;->a(Landroid/content/Context;Z)Ly;

    move-result-object v0

    goto :goto_1
.end method

.method public final d()[Lv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
