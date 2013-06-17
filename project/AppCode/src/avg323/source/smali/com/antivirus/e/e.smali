.class Lcom/antivirus/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/e/g;

.field final synthetic b:Lcom/antivirus/e/d;


# direct methods
.method constructor <init>(Lcom/antivirus/e/d;Lcom/antivirus/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/e/e;->b:Lcom/antivirus/e/d;

    iput-object p2, p0, Lcom/antivirus/e/e;->a:Lcom/antivirus/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/e/e;->b:Lcom/antivirus/e/d;

    iget-object v0, v0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v0}, Lcom/antivirus/e/b;->c(Lcom/antivirus/e/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/antivirus/e/f;

    invoke-direct {v1, p0}, Lcom/antivirus/e/f;-><init>(Lcom/antivirus/e/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
