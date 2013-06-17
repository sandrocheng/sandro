.class Lcom/avg/ui/general/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/a/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/a/g;->a:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/a/g;->a:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, p2}, Lcom/avg/ui/general/a/a;->b(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
