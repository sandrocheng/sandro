.class Lcom/google/b/a/j;
.super Lcom/google/b/a/l;


# instance fields
.field final synthetic a:Lcom/google/b/a/i;


# direct methods
.method constructor <init>(Lcom/google/b/a/i;)V
    .locals 2

    iput-object p1, p0, Lcom/google/b/a/j;->a:Lcom/google/b/a/i;

    iget-object v0, p1, Lcom/google/b/a/i;->a:Lcom/google/b/a/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/b/a/l;-><init>(Lcom/google/b/a/e;Lcom/google/b/a/f;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/b/a/j;->b()Lcom/google/b/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/google/b/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/b/a/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
