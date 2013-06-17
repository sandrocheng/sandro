.class Lcom/antivirus/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/e;->a:Lcom/antivirus/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/e;->a:Lcom/antivirus/ui/b;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/b;->a(Landroid/view/View;)V

    return-void
.end method
