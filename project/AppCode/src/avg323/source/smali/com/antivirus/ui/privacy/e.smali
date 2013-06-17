.class Lcom/antivirus/ui/privacy/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/ui/privacy/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/privacy/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/privacy/e;->b:Lcom/antivirus/ui/privacy/b;

    iput-object p2, p0, Lcom/antivirus/ui/privacy/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/antivirus/applocker/c;

    invoke-direct {v0}, Lcom/antivirus/applocker/c;-><init>()V

    iget-object v1, p0, Lcom/antivirus/ui/privacy/e;->b:Lcom/antivirus/ui/privacy/b;

    iget-object v2, p0, Lcom/antivirus/ui/privacy/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/antivirus/applocker/c;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/antivirus/ui/privacy/b;->a(Lcom/antivirus/ui/privacy/b;I)I

    iget-object v0, p0, Lcom/antivirus/ui/privacy/e;->b:Lcom/antivirus/ui/privacy/b;

    invoke-static {v0}, Lcom/antivirus/ui/privacy/b;->w(Lcom/antivirus/ui/privacy/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/privacy/f;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/privacy/f;-><init>(Lcom/antivirus/ui/privacy/e;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
