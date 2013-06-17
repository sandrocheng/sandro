.class public Lcom/antivirus/ui/settings/a/a;
.super Lcom/avg/ui/general/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/avg/ui/general/b/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/avg/ui/general/b/b;->a(ILcom/avg/ui/general/b/c;Lcom/avg/ui/general/b/d;)V

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p3, Lcom/avg/ui/general/b/d;->a:Landroid/widget/ImageView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method
