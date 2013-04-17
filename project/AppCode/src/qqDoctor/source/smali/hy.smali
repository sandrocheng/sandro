.class final Lhy;
.super Ljn;


# instance fields
.field private synthetic a:Lhx;


# direct methods
.method constructor <init>(Lhx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lhy;->a:Lhx;

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-direct {p0, p3, v0, v1}, Ljn;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v1, Ljava/io/File;

    sget-object v0, Llm;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lhy;->a:Lhx;

    invoke-static {p1}, Lhx;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lhy;->a:Lhx;

    invoke-static {p1, p2, p3}, Lhx;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
