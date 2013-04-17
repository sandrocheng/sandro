.class public final Lacf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;)V
    .locals 0

    iput-object p1, p0, Lacf;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lacf;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
