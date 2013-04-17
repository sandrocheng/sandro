.class public final Lasw;
.super Lask;


# instance fields
.field private f:Lif;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 6

    const-string v2, "FileSafeFileScanHandlerThread"

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lask;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Handler;)V

    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Lasw;->f:Lif;

    iput-object p3, p0, Lasw;->g:Ljava/lang/String;

    iput p2, p0, Lasw;->d:I

    return-void
.end method

.method private e(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lasw;->h:I

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lasw;->e:Ljava/util/LinkedList;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Llr;Ljava/io/File;)Llr;
    .locals 3

    check-cast p1, Lln;

    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    invoke-virtual {p1}, Lln;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lln;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Llo;->b(I)V

    invoke-virtual {p1}, Lln;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llo;->a(J)V

    invoke-virtual {p1}, Lln;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llo;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lln;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Llo;->a(I)V

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Llo;->f:I

    return-object v0
.end method

.method protected final b(Llr;Ljava/io/File;)Llr;
    .locals 3

    check-cast p1, Lln;

    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    invoke-virtual {p1}, Lln;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lln;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Llo;->b(I)V

    invoke-virtual {p1}, Lln;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Llo;->a(I)V

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llo;->a(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Llo;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Llo;->f:I

    iget-object v1, p0, Lasw;->f:Lif;

    invoke-virtual {p1}, Lln;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lif;->a(Lln;Ljava/lang/String;)Z

    return-object v0
.end method

.method protected final b(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lasw;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final c(Ljava/io/File;)Llr;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Llo;

    invoke-direct {v0}, Llo;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llo;->a(Ljava/lang/String;)V

    iget v1, p0, Lasw;->h:I

    invoke-virtual {v0, v1}, Llo;->a(I)V

    iget v1, p0, Lasw;->d:I

    invoke-virtual {v0, v1}, Llo;->b(I)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llo;->a(J)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Llo;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Llo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Llo;->f:I

    iget-object v1, p0, Lasw;->f:Lif;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v0}, Lif;->a(Landroid/content/ContentValues;Lln;)V

    iget-object v3, v1, Lif;->a:Lhs;

    const-string v4, "filesafe_scanned_file"

    invoke-virtual {v3, v4, v7, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v1, Lif;->a:Lhs;

    const-string v4, "filesafe_scanned_file"

    invoke-virtual {v3, v4, v7, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    iget-object v1, v1, Lif;->a:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    return-object v0
.end method

.method protected final d(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method protected final f()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lasw;->b:J

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lasw;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lasw;->e(Ljava/io/File;)V

    iget-object v0, p0, Lasw;->f:Lif;

    iget v1, p0, Lasw;->h:I

    iget v2, p0, Lasw;->d:I

    const-string v3, "filesafe_scanned_file"

    const-string v4, "bucket_id=? and type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "id ASC"

    invoke-virtual {v0, v3, v4, v5, v1}, Lif;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lasw;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lln;

    new-instance v2, Lask$a;

    invoke-direct {v2, v0}, Lask$a;-><init>(Llr;)V

    iget-object v3, p0, Lasw;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lln;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scan Time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lasw;->b:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lasw;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask$a;

    iget-boolean v2, v0, Lask$a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lasw;->f:Lif;

    iget-object v3, v0, Lask$a;->a:Llr;

    invoke-virtual {v3}, Llr;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lif;->a:Lhs;

    const-string v4, "filesafe_scanned_file"

    const-string v5, "fullpath=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, v0, Lask$a;->a:Llr;

    invoke-virtual {v2}, Llr;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lasw;->d:I

    invoke-static {v3}, Lasw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lask$a;->a:Llr;

    invoke-virtual {v0}, Llr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->d(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
