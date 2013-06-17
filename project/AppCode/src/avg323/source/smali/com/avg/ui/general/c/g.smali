.class Lcom/avg/ui/general/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/c/a;

.field final synthetic b:Lcom/avg/ui/general/c/f;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/c/f;Lcom/avg/ui/general/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/c/g;->b:Lcom/avg/ui/general/c/f;

    iput-object p2, p0, Lcom/avg/ui/general/c/g;->a:Lcom/avg/ui/general/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/c/g;->b:Lcom/avg/ui/general/c/f;

    iget-object v0, v0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    iget-object v0, p0, Lcom/avg/ui/general/c/g;->a:Lcom/avg/ui/general/c/a;

    invoke-interface {v0, p1}, Lcom/avg/ui/general/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
