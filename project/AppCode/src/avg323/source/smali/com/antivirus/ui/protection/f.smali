.class Lcom/antivirus/ui/protection/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/f;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/protection/f;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->b(Lcom/antivirus/ui/protection/a;)Lcom/antivirus/ui/protection/n;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/antivirus/ui/protection/n;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
