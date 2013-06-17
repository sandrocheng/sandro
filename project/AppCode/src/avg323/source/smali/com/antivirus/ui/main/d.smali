.class Lcom/antivirus/ui/main/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/main/c;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/main/d;->a:Lcom/antivirus/ui/main/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/main/d;->a:Lcom/antivirus/ui/main/c;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/main/c;->b(Landroid/view/View;)V

    return-void
.end method
