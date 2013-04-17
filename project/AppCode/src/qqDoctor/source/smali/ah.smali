.class public final Lah;
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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lgu;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v0, "band"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "phonetype"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_1

    new-instance v1, Lad;

    invoke-direct {v1}, Lad;-><init>()V

    new-instance v0, Laf;

    invoke-direct {v0}, Laf;-><init>()V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Ly;->a(Landroid/content/Context;Z)Ly;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1, p2}, Ly;->a(Landroid/content/Context;Z)Ly;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    if-ltz v1, :cond_2

    new-instance v1, Lae;

    invoke-direct {v1}, Lae;-><init>()V

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    goto :goto_0

    :cond_2
    move-object v0, v2

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v0, v2

    move-object v1, v2

    goto :goto_1
.end method

.method public final d()[Lv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
