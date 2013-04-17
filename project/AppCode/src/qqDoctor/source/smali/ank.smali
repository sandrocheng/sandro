.class final Lank;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/tccdb/PinyinMatch;

.field private synthetic b:Ljava/util/HashMap;

.field private synthetic c:Lani;


# direct methods
.method constructor <init>(Lani;Lcom/tencent/tccdb/PinyinMatch;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lank;->c:Lani;

    iput-object p2, p0, Lank;->a:Lcom/tencent/tccdb/PinyinMatch;

    iput-object p3, p0, Lank;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v2, 0x0

    check-cast p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    check-cast p2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p2, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lank;->c:Lani;

    iget-object v3, p0, Lank;->a:Lcom/tencent/tccdb/PinyinMatch;

    iget-object v4, p0, Lank;->b:Ljava/util/HashMap;

    invoke-static {v0, v3, v4}, Lani;->a(Ljava/lang/String;Lcom/tencent/tccdb/PinyinMatch;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lank;->c:Lani;

    iget-object v0, p0, Lank;->a:Lcom/tencent/tccdb/PinyinMatch;

    iget-object v4, p0, Lank;->b:Ljava/util/HashMap;

    invoke-static {v1, v0, v4}, Lani;->a(Ljava/lang/String;Lcom/tencent/tccdb/PinyinMatch;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v2

    :goto_2
    if-ge v2, v5, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v5, v1, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_5
    return v0
.end method
