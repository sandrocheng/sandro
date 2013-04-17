.class final Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->h(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
