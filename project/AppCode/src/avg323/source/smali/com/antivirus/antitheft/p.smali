.class Lcom/antivirus/antitheft/p;
.super Lcom/antivirus/antitheft/r;


# instance fields
.field final synthetic a:Lcom/antivirus/antitheft/w;

.field final synthetic b:Lcom/antivirus/antitheft/k;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;Lcom/antivirus/antitheft/w;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/p;->b:Lcom/antivirus/antitheft/k;

    iput-object p3, p0, Lcom/antivirus/antitheft/p;->a:Lcom/antivirus/antitheft/w;

    invoke-direct {p0, p1, p2}, Lcom/antivirus/antitheft/r;-><init>(Lcom/antivirus/antitheft/k;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/antitheft/p;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/antivirus/antitheft/p;->a:Lcom/antivirus/antitheft/w;

    invoke-static {v0, v1}, Lcom/antivirus/antitheft/b;->a(Landroid/content/Context;Lcom/antivirus/antitheft/w;)V

    return-void
.end method
