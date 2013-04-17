.class public Laf;
.super Lad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Ly;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Laf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Lgu;->b:Landroid/net/Uri;

    iget-object v7, p0, Laf;->b:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    :cond_0
    if-nez v6, :cond_1

    :goto_1
    return-object p0

    :cond_1
    move-object p0, v2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
