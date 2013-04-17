.class final Latp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Latn;


# direct methods
.method constructor <init>(Latn;)V
    .locals 0

    iput-object p1, p0, Latp;->a:Latn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Latp;->a:Latn;

    iget-object v2, p0, Latp;->a:Latn;

    invoke-static {v2}, Latn;->g(Latn;)Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/view/filesafe/GalleryExt;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Latn;->a(Latn;I)I

    const v1, 0x7f08002b

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Latp;->a:Latn;

    invoke-virtual {v0}, Latn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0803b5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Latp;->a:Latn;

    invoke-static {v0}, Latn;->h(Latn;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0803b6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Latp;->a:Latn;

    invoke-static {v0}, Latn;->i(Latn;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0803b7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Latp;->a:Latn;

    invoke-static {v0}, Latn;->j(Latn;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f0803b1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Latp;->a:Latn;

    invoke-static {v0}, Latn;->k(Latn;)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0803b4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latp;->a:Latn;

    invoke-static {v0}, Latn;->l(Latn;)V

    goto :goto_0
.end method
