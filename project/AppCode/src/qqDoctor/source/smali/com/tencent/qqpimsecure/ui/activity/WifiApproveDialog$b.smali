.class public final Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

.field public b:Landroid/view/View;

.field public c:Landroid/webkit/WebView;

.field public d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field public e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field public f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field public g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field public h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field public i:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/view/View$OnClickListener;

.field public l:Landroid/view/View$OnClickListener;

.field public m:Landroid/webkit/WebChromeClient;

.field public n:Landroid/webkit/WebViewClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lafs;

    invoke-direct {v0, p0}, Lafs;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lafu;

    invoke-direct {v0, p0}, Lafu;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lafv;

    invoke-direct {v0, p0}, Lafv;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->m:Landroid/webkit/WebChromeClient;

    new-instance v0, Lagb;

    invoke-direct {v0, p0}, Lagb;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->n:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;ZZ)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->j:Landroid/widget/ImageView;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    goto :goto_2
.end method
