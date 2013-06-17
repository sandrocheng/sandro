.class Lcom/antivirus/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/e/e;


# direct methods
.method constructor <init>(Lcom/antivirus/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/e/f;->a:Lcom/antivirus/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/e/f;->a:Lcom/antivirus/e/e;

    iget-object v0, v0, Lcom/antivirus/e/e;->b:Lcom/antivirus/e/d;

    iget-object v0, v0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v0}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/e/f;->a:Lcom/antivirus/e/e;

    iget-object v1, v1, Lcom/antivirus/e/e;->a:Lcom/antivirus/e/g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/antivirus/e/f;->a:Lcom/antivirus/e/e;

    iget-object v0, v0, Lcom/antivirus/e/e;->b:Lcom/antivirus/e/d;

    iget-object v0, v0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;Lcom/antivirus/e/g;)Lcom/antivirus/e/g;

    :cond_0
    return-void
.end method
