.class Lcom/antivirus/ui/scan/results/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/d;II)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/f;->c:Lcom/antivirus/ui/scan/results/d;

    iput p2, p0, Lcom/antivirus/ui/scan/results/f;->a:I

    iput p3, p0, Lcom/antivirus/ui/scan/results/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/f;->c:Lcom/antivirus/ui/scan/results/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/f;->c:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/f;->a:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/f;->c:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/f;->b:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/f;->c:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/f;->a:I

    iget v2, p0, Lcom/antivirus/ui/scan/results/f;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(II)V

    return-void
.end method
