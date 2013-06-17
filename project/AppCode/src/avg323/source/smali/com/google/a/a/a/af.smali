.class Lcom/google/a/a/a/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/a/a/a/am;

.field final synthetic b:Lcom/google/a/a/a/ac;


# direct methods
.method constructor <init>(Lcom/google/a/a/a/ac;Lcom/google/a/a/a/am;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/af;->b:Lcom/google/a/a/a/ac;

    iput-object p2, p0, Lcom/google/a/a/a/af;->a:Lcom/google/a/a/a/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/af;->a:Lcom/google/a/a/a/am;

    iget-object v1, p0, Lcom/google/a/a/a/af;->b:Lcom/google/a/a/a/ac;

    invoke-static {v1}, Lcom/google/a/a/a/ac;->b(Lcom/google/a/a/a/ac;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/a/a/a/am;->a(Z)V

    return-void
.end method
