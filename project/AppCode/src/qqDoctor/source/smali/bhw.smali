.class final Lbhw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbhv;


# direct methods
.method constructor <init>(Lbhv;)V
    .locals 0

    iput-object p1, p0, Lbhw;->a:Lbhv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lsv;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Lfv;

    iget-object v1, p0, Lbhw;->a:Lbhv;

    invoke-static {v1}, Lbhv;->a(Lbhv;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfv;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lfv;->b:Lke;

    const-string v2, "tb_software_lock_count"

    const-string v3, "id ASC"

    invoke-virtual {v0, v2, v3}, Lke;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo;

    iget-object v3, v0, Lmo;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v0, v0, Lmo;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sput-object v1, Lsv;->b:Ljava/util/Map;

    :cond_3
    return-void
.end method
