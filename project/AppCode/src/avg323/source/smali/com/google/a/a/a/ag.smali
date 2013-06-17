.class Lcom/google/a/a/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/k;

.field final synthetic b:Lcom/google/a/a/a/ac;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/ac;Lcom/google/a/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/ag;->b:Lcom/google/a/a/a/ac;

    iput-object p2, p0, Lcom/google/a/a/a/ag;->a:Lcom/google/a/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/ag;->a:Lcom/google/a/a/a/k;

    iget-object v1, p0, Lcom/google/a/a/a/ag;->b:Lcom/google/a/a/a/ac;

    invoke-static {v1}, Lcom/google/a/a/a/ac;->a(Lcom/google/a/a/a/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/a/a/a/k;->a(Ljava/lang/String;)V

    return-void
.end method
