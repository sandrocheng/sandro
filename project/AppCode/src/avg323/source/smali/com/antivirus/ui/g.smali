.class Lcom/antivirus/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/b;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/g;->a:Lcom/antivirus/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/g;->a:Lcom/antivirus/ui/b;

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/b;->a(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
