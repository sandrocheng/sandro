.class final Lbop;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbok;


# direct methods
.method constructor <init>(Lbok;)V
    .locals 0

    iput-object p1, p0, Lbop;->a:Lbok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbop;->a:Lbok;

    invoke-static {v0}, Lbok;->h(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lbop;->a:Lbok;

    iget-object v2, p0, Lbop;->a:Lbok;

    invoke-static {v2}, Lbok;->i(Lbok;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbok;->a(Lkw;I)V

    return-void
.end method
