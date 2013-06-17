.class Lcom/antivirus/ui/protection/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/m;->b:Lcom/antivirus/ui/protection/a;

    iput p2, p0, Lcom/antivirus/ui/protection/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/protection/m;->b:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->k(Lcom/antivirus/ui/protection/a;)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/m;->b:Lcom/antivirus/ui/protection/a;

    iget v1, p0, Lcom/antivirus/ui/protection/m;->a:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/protection/a;->a(Lcom/antivirus/ui/protection/a;I)V

    return-void
.end method
