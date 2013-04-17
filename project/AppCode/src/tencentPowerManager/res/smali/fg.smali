.class public Lfg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfg",
        "<",
        "Lbd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s"

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "len"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "state"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "parent_path"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "current_size"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "range_support"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "pkg"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "md5"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ver"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "vercode"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "logo_url"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "categoryid"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "pos"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Laa;

    invoke-direct {v0}, Laa;-><init>()V

    invoke-virtual {p0}, Lfg;->d()V

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    invoke-virtual {p0}, Lfg;->c()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbd;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public d()V
    .locals 5

    invoke-static {}, Lbj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfg;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd;

    invoke-static {v0}, Lbl;->a(Lbd;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lbd;->d:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
