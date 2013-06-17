.class Lcom/google/b/a/h;
.super Lcom/google/b/a/l;


# instance fields
.field final synthetic a:Lcom/google/b/a/g;


# direct methods
.method constructor <init>(Lcom/google/b/a/g;)V
    .locals 2

    iput-object p1, p0, Lcom/google/b/a/h;->a:Lcom/google/b/a/g;

    iget-object v0, p1, Lcom/google/b/a/g;->a:Lcom/google/b/a/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/b/a/l;-><init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/b/a/h;->b()Lcom/google/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/b/a/h;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
