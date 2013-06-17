.class final Lcom/google/b/a/m;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic a:Lcom/google/b/a/e;


# direct methods
.method private constructor <init>(Lcom/google/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/b/a/m;->a:Lcom/google/b/a/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/b/a/m;-><init>(Lcom/google/b/a/e;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/m;->a:Lcom/google/b/a/e;

    invoke-virtual {v0}, Lcom/google/b/a/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/m;->a:Lcom/google/b/a/e;

    invoke-virtual {v0, p1}, Lcom/google/b/a/e;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/b/a/n;

    invoke-direct {v0, p0}, Lcom/google/b/a/n;-><init>(Lcom/google/b/a/m;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/m;->a:Lcom/google/b/a/e;

    invoke-static {v0}, Lcom/google/b/a/e;->b(Lcom/google/b/a/e;)I

    move-result v0

    return v0
.end method
