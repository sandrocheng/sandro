.class final Lafq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lafp;


# direct methods
.method constructor <init>(Lafp;)V
    .locals 0

    iput-object p1, p0, Lafq;->a:Lafp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lafq;->a:Lafp;

    iget-object v0, v0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    const/4 v0, 0x0

    return v0
.end method
