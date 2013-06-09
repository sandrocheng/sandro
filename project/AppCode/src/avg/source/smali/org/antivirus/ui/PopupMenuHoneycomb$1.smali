.class Lorg/antivirus/ui/PopupMenuHoneycomb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/IhandleMenuItem;

.field final synthetic b:Lorg/antivirus/ui/PopupMenuHoneycomb;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/PopupMenuHoneycomb;Lorg/antivirus/ui/IhandleMenuItem;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/PopupMenuHoneycomb$1;->b:Lorg/antivirus/ui/PopupMenuHoneycomb;

    iput-object p2, p0, Lorg/antivirus/ui/PopupMenuHoneycomb$1;->a:Lorg/antivirus/ui/IhandleMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/PopupMenuHoneycomb$1;->a:Lorg/antivirus/ui/IhandleMenuItem;

    invoke-interface {v0, p1}, Lorg/antivirus/ui/IhandleMenuItem;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
