.class public final Ladw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)V
    .locals 0

    iput-object p1, p0, Ladw;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ladw;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    move-result-object v0

    iget-object v1, p0, Ladw;->a:Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;->b(Lcom/tencent/qqpimsecure/ui/activity/QQWebdiskHelpActivity;)Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->getCurrentCanvasIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayoutExPoint;->snapToScreen(I)V

    return-void
.end method
