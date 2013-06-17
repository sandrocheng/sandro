.class Lcom/antivirus/wipe/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/a;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;Lcom/antivirus/wipe/a;Landroid/view/LayoutInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/t;->c:Lcom/antivirus/wipe/b;

    iput-object p2, p0, Lcom/antivirus/wipe/t;->a:Lcom/antivirus/wipe/a;

    iput-object p3, p0, Lcom/antivirus/wipe/t;->b:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/t;->c:Lcom/antivirus/wipe/b;

    iget-object v1, p0, Lcom/antivirus/wipe/t;->a:Lcom/antivirus/wipe/a;

    iget-object v1, v1, Lcom/antivirus/wipe/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/antivirus/wipe/ak;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/antivirus/wipe/b;->b(Lcom/antivirus/wipe/b;Z)Z

    iget-object v0, p0, Lcom/antivirus/wipe/t;->c:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->t(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/wipe/u;

    invoke-direct {v1, p0}, Lcom/antivirus/wipe/u;-><init>(Lcom/antivirus/wipe/t;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
