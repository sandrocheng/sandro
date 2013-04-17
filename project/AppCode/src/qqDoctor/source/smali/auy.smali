.class final Lauy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lauu;


# direct methods
.method constructor <init>(Lauu;)V
    .locals 0

    iput-object p1, p0, Lauy;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lauy;->a:Lauu;

    invoke-static {v0}, Lauu;->v(Lauu;)Z

    iget-object v0, p0, Lauy;->a:Lauu;

    invoke-static {v0}, Lauu;->w(Lauu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->showContextMenu()Z

    return-void
.end method
