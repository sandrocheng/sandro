.class Lcom/antivirus/ui/protection/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/ae;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/af;->a:Lcom/antivirus/ui/protection/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/protection/af;->a:Lcom/antivirus/ui/protection/ae;

    iget-object v0, v0, Lcom/antivirus/ui/protection/ae;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/protection/af;->a:Lcom/antivirus/ui/protection/ae;

    iget-object v0, v0, Lcom/antivirus/ui/protection/ae;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
