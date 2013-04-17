.class public final Lfn;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ladg;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Ladg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lly;",
            ">;",
            "Ladg;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->contentLocation:[B

    if-eqz v0, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->contentLocation:[B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1}, Ladg;->b()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->data:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    check-cast p1, Ladl;

    invoke-virtual {p1, v2}, Ladl;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Ladg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ladg;->b(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->dataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ladg;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "dataPath  "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->dataPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lfn;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfn;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget v0, v0, Lly;->a:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lfn;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->data:[B

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lfn;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    iget-object v0, v0, Lly;->data:[B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Ladk;->a(Ljava/lang/String;)Ladi;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ladi;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-virtual {v0}, Ladg;->b()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lfn;->c:Ljava/util/List;

    iget-object v0, p0, Lfn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    invoke-static {v3, v0}, Lfn;->a(Ljava/util/List;Ladg;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfn;->c:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lfn;->c:Ljava/util/List;

    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfn;->a:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfn;->b()V

    goto :goto_0
.end method
