.class Lcom/avg/toolkit/ads/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method constructor <init>(Lcom/avg/toolkit/ads/WebViewAdsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/ads/b;->a:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
