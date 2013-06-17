.class Lcom/google/b/a/n;
.super Lcom/google/b/a/l;


# instance fields
.field final synthetic a:Lcom/google/b/a/m;


# direct methods
.method constructor <init>(Lcom/google/b/a/m;)V
    .locals 2

    iput-object p1, p0, Lcom/google/b/a/n;->a:Lcom/google/b/a/m;

    iget-object v0, p1, Lcom/google/b/a/m;->a:Lcom/google/b/a/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/b/a/l;-><init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/b/a/n;->b()Lcom/google/b/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/google/b/a/k;->b:Ljava/lang/Object;

    return-object v0
.end method
