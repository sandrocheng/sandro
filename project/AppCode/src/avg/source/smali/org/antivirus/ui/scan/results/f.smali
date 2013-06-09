.class final Lorg/antivirus/ui/scan/results/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/d;II)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/f;->c:Lorg/antivirus/ui/scan/results/d;

    iput p2, p0, Lorg/antivirus/ui/scan/results/f;->a:I

    iput p3, p0, Lorg/antivirus/ui/scan/results/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/f;->c:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/f;->c:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/f;->a:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/f;->c:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/f;->b:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/f;->c:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/f;->a:I

    iget v2, p0, Lorg/antivirus/ui/scan/results/f;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(II)V

    return-void
.end method
